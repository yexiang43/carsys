/*
 Navicat Premium Data Transfer

 Source Server         : codechao
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : carsys

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 04/03/2021 23:02:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car` (
  `carnumber` varchar(255) NOT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `rentprice` double(10,2) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `isrenting` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `carimg` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
BEGIN;
INSERT INTO `bus_car` VALUES ('豫p0001', '跑车', '黑色', 20000000.00, 20000.00, 2000000, 1, '柯尼塞格', '2021-02-24/202102241348527929332.jpg', '2021-02-23 23:48:41');
INSERT INTO `bus_car` VALUES ('鄂A66666', 'SUV', '红色', 280000.00, 500.00, 5000, 0, '宝马X1', 'images/001.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A77777', '轿车', '红色', 200000.00, 800.00, 12000, 0, '别克君威', '2021-02-24/202102241339093243270.jpg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A88888', '轿车', '黑色', 880000.00, 1000.00, 10000, 0, '保时捷 卡宴', 'images/003.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A99999', '渣土车', '黄色', 500000.00, 3000.00, 20000, 0, '动力强劲', 'images/defaultcarimage.jpg', '2019-06-10 14:50:12');
COMMIT;

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check` (
  `checkid` varchar(255) NOT NULL,
  `checkdate` datetime DEFAULT NULL,
  `checkdesc` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `paymoney` double(255,0) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `rentid` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
BEGIN;
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', 500, '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '无', '无', 0, '习大大', 'CZ_20180612_164747_0573_26177', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', 0, '习大大', 'CZ_20180718_091206_0365_62161', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '无', '无', 0, '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', 200, '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', 0, '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', 500, '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', 100, '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190611_111021_41215259', '2019-06-11 11:10:21', '无', '无', 0, '超级管理员', 'CZ_20190611_094617_32192683', '2019-06-11 11:10:32');
INSERT INTO `bus_check` VALUES ('JC_20190727_173816_738_26810', '2019-07-27 17:38:16', '无', '无', 1, '超级管理员', 'CZ_20190727_152634_863_83662', '2019-07-27 17:38:24');
INSERT INTO `bus_check` VALUES ('JC_20210228_213630_130_45187', '2021-02-28 07:36:30', '给予客户警告加500元罚款', '超速', 500, '超级管理员', 'CZ_20210225_151204_351_31331', '2021-02-28 07:37:04');
INSERT INTO `bus_check` VALUES ('JC_20210228_213908_582_11800', '2021-02-27 07:39:08', '给予客户警告加500元罚款', '超速', 500, '超级管理员', 'CZ_20210225_151204_351_31331', '2021-02-28 07:39:53');
INSERT INTO `bus_check` VALUES ('JC_20210302_163639_929_75109', '2021-03-02 02:36:39', '无', '无', 0, '超级管理员', 'CZ_20210228_215903_942_78539', '2021-03-02 02:36:50');
COMMIT;

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer` (
  `identity` varchar(255) NOT NULL COMMENT '身份证',
  `custname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `career` varchar(255) DEFAULT NULL COMMENT '职位',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
BEGIN;
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', 1, '武昌', '13456788987', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('43131334113331131', '李梅', 0, '南阳', '43131334113331131', '学生', '2021-02-21 05:33:13');
INSERT INTO `bus_customer` VALUES ('431321199291331131', '张三', 1, '武昌', '13431334113', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331132', '孙狗子', 1, '汉口', '134131314131', '无业游民', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', 0, '汉阳', '13451313113', 'CEO', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311314', '王小明', 1, '汉口', '13413131113', 'CEO', '2019-05-07 14:52:24');
COMMIT;

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent` (
  `rentid` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `begindate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL,
  `rentflag` int(11) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `carnumber` varchar(255) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
BEGIN;
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', 500.00, '2018-05-18 00:00:00', '2018-07-21 00:00:00', 1, '421087133414144412', '鄂A66666', '张三', '2021-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', 500.00, '2018-07-23 10:23:27', '2018-10-31 10:23:29', 1, '421087133414144412', '鄂A66666', '李四', '2021-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', 1500.00, '2018-09-01 00:00:00', '2018-12-29 00:00:00', 1, '43131334113331131', '鄂A77777', '王五', '2021-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', 500.00, '2018-12-01 00:00:00', '2018-09-10 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2021-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190611_094617_32192683', 500.00, '2019-06-11 09:46:17', '2019-06-15 09:46:19', 1, '43131334113331131', '鄂A66666', '张三', '2021-06-11 09:46:25');
INSERT INTO `bus_rent` VALUES ('CZ_20190727_152634_863_83662', 500.00, '2019-07-27 15:26:34', '2019-07-31 00:00:00', 1, '43131334113331131', '鄂A66666', '李四', '2021-07-27 15:26:40');
INSERT INTO `bus_rent` VALUES ('CZ_20210225_151204_351_31331', 20000.00, '2021-02-25 01:12:04', '2021-02-25 10:00:00', 1, '43131334113331131', '豫p0001', '王五', '2021-02-25 01:12:10');
INSERT INTO `bus_rent` VALUES ('CZ_20210228_215903_942_78539', 20000.00, '2021-02-28 07:59:03', '2021-02-28 10:00:00', 1, '43131334113331131', '豫p0001', '李四', '2021-02-28 07:59:14');
INSERT INTO `bus_rent` VALUES ('CZ_20210302_163732_315_89966', 20000.00, '2021-03-02 02:37:32', '2021-03-03 10:00:00', 0, '43131334113331131', '豫p0001', '超级管理员', '2021-03-02 02:37:44');
COMMIT;

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
BEGIN;
INSERT INTO `sys_log_login` VALUES (1, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-16 23:35:12');
INSERT INTO `sys_log_login` VALUES (2, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-16 23:35:21');
INSERT INTO `sys_log_login` VALUES (3, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:11:38');
INSERT INTO `sys_log_login` VALUES (4, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:12:58');
INSERT INTO `sys_log_login` VALUES (5, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:30:52');
INSERT INTO `sys_log_login` VALUES (6, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:41:16');
INSERT INTO `sys_log_login` VALUES (7, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:42:02');
INSERT INTO `sys_log_login` VALUES (8, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:42:53');
INSERT INTO `sys_log_login` VALUES (9, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:43:19');
INSERT INTO `sys_log_login` VALUES (10, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:43:49');
INSERT INTO `sys_log_login` VALUES (11, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:47:55');
INSERT INTO `sys_log_login` VALUES (12, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:49:14');
INSERT INTO `sys_log_login` VALUES (13, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:50:53');
INSERT INTO `sys_log_login` VALUES (14, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:51:43');
INSERT INTO `sys_log_login` VALUES (15, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:57:06');
INSERT INTO `sys_log_login` VALUES (16, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 06:59:46');
INSERT INTO `sys_log_login` VALUES (17, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 07:03:39');
INSERT INTO `sys_log_login` VALUES (18, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 07:07:37');
INSERT INTO `sys_log_login` VALUES (19, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 07:09:04');
INSERT INTO `sys_log_login` VALUES (20, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:01:58');
INSERT INTO `sys_log_login` VALUES (21, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:09:23');
INSERT INTO `sys_log_login` VALUES (22, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:14:45');
INSERT INTO `sys_log_login` VALUES (23, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:17:48');
INSERT INTO `sys_log_login` VALUES (24, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:24:35');
INSERT INTO `sys_log_login` VALUES (25, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:28:23');
INSERT INTO `sys_log_login` VALUES (26, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:29:48');
INSERT INTO `sys_log_login` VALUES (27, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:31:36');
INSERT INTO `sys_log_login` VALUES (28, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:35:02');
INSERT INTO `sys_log_login` VALUES (29, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:37:09');
INSERT INTO `sys_log_login` VALUES (30, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:38:30');
INSERT INTO `sys_log_login` VALUES (31, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:39:59');
INSERT INTO `sys_log_login` VALUES (32, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:46:40');
INSERT INTO `sys_log_login` VALUES (33, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:48:49');
INSERT INTO `sys_log_login` VALUES (34, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:49:55');
INSERT INTO `sys_log_login` VALUES (35, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:54:15');
INSERT INTO `sys_log_login` VALUES (36, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-17 23:57:03');
INSERT INTO `sys_log_login` VALUES (37, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:03:37');
INSERT INTO `sys_log_login` VALUES (38, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:05:14');
INSERT INTO `sys_log_login` VALUES (39, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:07:29');
INSERT INTO `sys_log_login` VALUES (40, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:08:23');
INSERT INTO `sys_log_login` VALUES (41, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:08:50');
INSERT INTO `sys_log_login` VALUES (42, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:09:39');
INSERT INTO `sys_log_login` VALUES (43, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:13:08');
INSERT INTO `sys_log_login` VALUES (44, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:40:03');
INSERT INTO `sys_log_login` VALUES (45, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:41:01');
INSERT INTO `sys_log_login` VALUES (46, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:41:55');
INSERT INTO `sys_log_login` VALUES (47, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:43:51');
INSERT INTO `sys_log_login` VALUES (48, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:44:48');
INSERT INTO `sys_log_login` VALUES (49, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:49:43');
INSERT INTO `sys_log_login` VALUES (50, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:52:59');
INSERT INTO `sys_log_login` VALUES (51, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:55:57');
INSERT INTO `sys_log_login` VALUES (52, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:57:33');
INSERT INTO `sys_log_login` VALUES (53, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 00:59:29');
INSERT INTO `sys_log_login` VALUES (54, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:00:11');
INSERT INTO `sys_log_login` VALUES (55, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:04:20');
INSERT INTO `sys_log_login` VALUES (56, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:06:25');
INSERT INTO `sys_log_login` VALUES (57, '超级管理员-admin', '127.0.0.1', '2021-02-18 01:07:35');
INSERT INTO `sys_log_login` VALUES (58, '超级管理员-admin', '127.0.0.1', '2021-02-18 01:07:54');
INSERT INTO `sys_log_login` VALUES (59, '超级管理员-admin', '127.0.0.1', '2021-02-18 01:08:40');
INSERT INTO `sys_log_login` VALUES (60, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:09:48');
INSERT INTO `sys_log_login` VALUES (61, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:11:15');
INSERT INTO `sys_log_login` VALUES (62, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:11:25');
INSERT INTO `sys_log_login` VALUES (63, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:18:52');
INSERT INTO `sys_log_login` VALUES (64, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:20:24');
INSERT INTO `sys_log_login` VALUES (65, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:26:45');
INSERT INTO `sys_log_login` VALUES (66, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:27:19');
INSERT INTO `sys_log_login` VALUES (67, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:27:44');
INSERT INTO `sys_log_login` VALUES (68, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:29:10');
INSERT INTO `sys_log_login` VALUES (69, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:34:19');
INSERT INTO `sys_log_login` VALUES (70, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:39:17');
INSERT INTO `sys_log_login` VALUES (71, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:42:06');
INSERT INTO `sys_log_login` VALUES (72, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:45:14');
INSERT INTO `sys_log_login` VALUES (73, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:47:03');
INSERT INTO `sys_log_login` VALUES (74, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:47:20');
INSERT INTO `sys_log_login` VALUES (75, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:48:46');
INSERT INTO `sys_log_login` VALUES (76, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 01:49:49');
INSERT INTO `sys_log_login` VALUES (77, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:39:07');
INSERT INTO `sys_log_login` VALUES (78, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:40:25');
INSERT INTO `sys_log_login` VALUES (79, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:41:23');
INSERT INTO `sys_log_login` VALUES (80, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:41:46');
INSERT INTO `sys_log_login` VALUES (81, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:47:18');
INSERT INTO `sys_log_login` VALUES (82, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:51:56');
INSERT INTO `sys_log_login` VALUES (83, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:53:26');
INSERT INTO `sys_log_login` VALUES (84, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 03:59:31');
INSERT INTO `sys_log_login` VALUES (85, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:00:18');
INSERT INTO `sys_log_login` VALUES (86, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:01:21');
INSERT INTO `sys_log_login` VALUES (87, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:04:13');
INSERT INTO `sys_log_login` VALUES (88, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:06:27');
INSERT INTO `sys_log_login` VALUES (89, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:13:56');
INSERT INTO `sys_log_login` VALUES (90, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:15:52');
INSERT INTO `sys_log_login` VALUES (91, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:16:39');
INSERT INTO `sys_log_login` VALUES (92, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:18:40');
INSERT INTO `sys_log_login` VALUES (93, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:19:32');
INSERT INTO `sys_log_login` VALUES (94, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:39:43');
INSERT INTO `sys_log_login` VALUES (95, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:40:37');
INSERT INTO `sys_log_login` VALUES (96, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:42:24');
INSERT INTO `sys_log_login` VALUES (97, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:44:14');
INSERT INTO `sys_log_login` VALUES (98, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:45:24');
INSERT INTO `sys_log_login` VALUES (99, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:47:56');
INSERT INTO `sys_log_login` VALUES (100, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:48:13');
INSERT INTO `sys_log_login` VALUES (101, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:48:42');
INSERT INTO `sys_log_login` VALUES (102, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 04:49:12');
INSERT INTO `sys_log_login` VALUES (103, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 05:57:17');
INSERT INTO `sys_log_login` VALUES (104, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 06:15:17');
INSERT INTO `sys_log_login` VALUES (105, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 06:15:58');
INSERT INTO `sys_log_login` VALUES (106, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 06:17:27');
INSERT INTO `sys_log_login` VALUES (107, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 06:19:08');
INSERT INTO `sys_log_login` VALUES (108, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 06:20:53');
INSERT INTO `sys_log_login` VALUES (109, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:09:13');
INSERT INTO `sys_log_login` VALUES (110, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:12:23');
INSERT INTO `sys_log_login` VALUES (111, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:13:06');
INSERT INTO `sys_log_login` VALUES (112, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:13:54');
INSERT INTO `sys_log_login` VALUES (113, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:18:30');
INSERT INTO `sys_log_login` VALUES (114, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:20:10');
INSERT INTO `sys_log_login` VALUES (115, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 20:21:23');
INSERT INTO `sys_log_login` VALUES (116, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 21:07:16');
INSERT INTO `sys_log_login` VALUES (117, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-18 21:07:43');
INSERT INTO `sys_log_login` VALUES (118, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 00:00:39');
INSERT INTO `sys_log_login` VALUES (119, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 00:01:05');
INSERT INTO `sys_log_login` VALUES (120, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 01:54:56');
INSERT INTO `sys_log_login` VALUES (121, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 03:36:32');
INSERT INTO `sys_log_login` VALUES (122, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 03:38:51');
INSERT INTO `sys_log_login` VALUES (123, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 04:52:18');
INSERT INTO `sys_log_login` VALUES (124, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 04:53:32');
INSERT INTO `sys_log_login` VALUES (125, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 04:55:39');
INSERT INTO `sys_log_login` VALUES (126, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 04:56:28');
INSERT INTO `sys_log_login` VALUES (127, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:01:06');
INSERT INTO `sys_log_login` VALUES (128, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:02:51');
INSERT INTO `sys_log_login` VALUES (129, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:03:48');
INSERT INTO `sys_log_login` VALUES (130, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:06:31');
INSERT INTO `sys_log_login` VALUES (131, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:09:56');
INSERT INTO `sys_log_login` VALUES (132, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:11:33');
INSERT INTO `sys_log_login` VALUES (133, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:14:38');
INSERT INTO `sys_log_login` VALUES (134, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:24:01');
INSERT INTO `sys_log_login` VALUES (135, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:28:25');
INSERT INTO `sys_log_login` VALUES (136, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:35:26');
INSERT INTO `sys_log_login` VALUES (137, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-19 05:36:58');
INSERT INTO `sys_log_login` VALUES (138, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 00:58:38');
INSERT INTO `sys_log_login` VALUES (139, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 01:06:08');
INSERT INTO `sys_log_login` VALUES (140, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 01:19:19');
INSERT INTO `sys_log_login` VALUES (141, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 01:23:21');
INSERT INTO `sys_log_login` VALUES (142, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 01:26:17');
INSERT INTO `sys_log_login` VALUES (143, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 01:26:59');
INSERT INTO `sys_log_login` VALUES (144, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 02:09:49');
INSERT INTO `sys_log_login` VALUES (145, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 02:32:01');
INSERT INTO `sys_log_login` VALUES (146, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 02:34:07');
INSERT INTO `sys_log_login` VALUES (147, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 02:36:17');
INSERT INTO `sys_log_login` VALUES (148, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 02:43:00');
INSERT INTO `sys_log_login` VALUES (149, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 04:03:24');
INSERT INTO `sys_log_login` VALUES (150, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 04:09:52');
INSERT INTO `sys_log_login` VALUES (151, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 04:12:10');
INSERT INTO `sys_log_login` VALUES (152, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 04:18:12');
INSERT INTO `sys_log_login` VALUES (153, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 06:06:52');
INSERT INTO `sys_log_login` VALUES (154, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 07:02:08');
INSERT INTO `sys_log_login` VALUES (155, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 07:21:25');
INSERT INTO `sys_log_login` VALUES (156, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 22:38:14');
INSERT INTO `sys_log_login` VALUES (157, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-20 23:24:10');
INSERT INTO `sys_log_login` VALUES (158, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:36:03');
INSERT INTO `sys_log_login` VALUES (159, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:39:14');
INSERT INTO `sys_log_login` VALUES (160, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:46:34');
INSERT INTO `sys_log_login` VALUES (161, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:47:20');
INSERT INTO `sys_log_login` VALUES (162, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:48:24');
INSERT INTO `sys_log_login` VALUES (163, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:51:05');
INSERT INTO `sys_log_login` VALUES (164, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:53:13');
INSERT INTO `sys_log_login` VALUES (165, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:54:25');
INSERT INTO `sys_log_login` VALUES (166, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:55:02');
INSERT INTO `sys_log_login` VALUES (167, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:56:24');
INSERT INTO `sys_log_login` VALUES (168, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 01:57:52');
INSERT INTO `sys_log_login` VALUES (169, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:02:07');
INSERT INTO `sys_log_login` VALUES (170, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:03:07');
INSERT INTO `sys_log_login` VALUES (171, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:04:26');
INSERT INTO `sys_log_login` VALUES (172, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:10:14');
INSERT INTO `sys_log_login` VALUES (173, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:12:17');
INSERT INTO `sys_log_login` VALUES (174, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:12:41');
INSERT INTO `sys_log_login` VALUES (175, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:15:04');
INSERT INTO `sys_log_login` VALUES (176, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:18:09');
INSERT INTO `sys_log_login` VALUES (177, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:20:12');
INSERT INTO `sys_log_login` VALUES (178, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:21:33');
INSERT INTO `sys_log_login` VALUES (179, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:21:57');
INSERT INTO `sys_log_login` VALUES (180, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:23:35');
INSERT INTO `sys_log_login` VALUES (181, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:25:23');
INSERT INTO `sys_log_login` VALUES (182, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:26:09');
INSERT INTO `sys_log_login` VALUES (183, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:27:19');
INSERT INTO `sys_log_login` VALUES (184, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:27:37');
INSERT INTO `sys_log_login` VALUES (185, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:28:12');
INSERT INTO `sys_log_login` VALUES (186, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:28:28');
INSERT INTO `sys_log_login` VALUES (187, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 02:28:43');
INSERT INTO `sys_log_login` VALUES (188, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 05:30:11');
INSERT INTO `sys_log_login` VALUES (189, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:00:07');
INSERT INTO `sys_log_login` VALUES (190, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:11:24');
INSERT INTO `sys_log_login` VALUES (191, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:12:49');
INSERT INTO `sys_log_login` VALUES (192, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:13:31');
INSERT INTO `sys_log_login` VALUES (193, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:14:12');
INSERT INTO `sys_log_login` VALUES (194, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:14:41');
INSERT INTO `sys_log_login` VALUES (195, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:14:57');
INSERT INTO `sys_log_login` VALUES (196, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:15:14');
INSERT INTO `sys_log_login` VALUES (197, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:36:28');
INSERT INTO `sys_log_login` VALUES (198, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:41:14');
INSERT INTO `sys_log_login` VALUES (199, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:42:40');
INSERT INTO `sys_log_login` VALUES (200, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:43:59');
INSERT INTO `sys_log_login` VALUES (201, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:47:38');
INSERT INTO `sys_log_login` VALUES (202, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:49:36');
INSERT INTO `sys_log_login` VALUES (203, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:51:02');
INSERT INTO `sys_log_login` VALUES (204, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:55:34');
INSERT INTO `sys_log_login` VALUES (205, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:56:34');
INSERT INTO `sys_log_login` VALUES (206, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 06:57:09');
INSERT INTO `sys_log_login` VALUES (207, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:09:18');
INSERT INTO `sys_log_login` VALUES (208, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:09:46');
INSERT INTO `sys_log_login` VALUES (209, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:10:15');
INSERT INTO `sys_log_login` VALUES (210, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:18:10');
INSERT INTO `sys_log_login` VALUES (211, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:19:18');
INSERT INTO `sys_log_login` VALUES (212, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:20:24');
INSERT INTO `sys_log_login` VALUES (213, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:20:47');
INSERT INTO `sys_log_login` VALUES (214, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:21:09');
INSERT INTO `sys_log_login` VALUES (215, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:21:27');
INSERT INTO `sys_log_login` VALUES (216, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:21:54');
INSERT INTO `sys_log_login` VALUES (217, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:23:02');
INSERT INTO `sys_log_login` VALUES (218, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:23:33');
INSERT INTO `sys_log_login` VALUES (219, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:23:51');
INSERT INTO `sys_log_login` VALUES (220, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:25:35');
INSERT INTO `sys_log_login` VALUES (221, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:26:03');
INSERT INTO `sys_log_login` VALUES (222, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:26:36');
INSERT INTO `sys_log_login` VALUES (223, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-21 07:26:46');
INSERT INTO `sys_log_login` VALUES (224, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 00:25:13');
INSERT INTO `sys_log_login` VALUES (225, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 00:57:15');
INSERT INTO `sys_log_login` VALUES (226, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 00:57:43');
INSERT INTO `sys_log_login` VALUES (227, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 00:58:17');
INSERT INTO `sys_log_login` VALUES (228, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 01:01:31');
INSERT INTO `sys_log_login` VALUES (229, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 01:05:52');
INSERT INTO `sys_log_login` VALUES (230, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 01:07:58');
INSERT INTO `sys_log_login` VALUES (231, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 02:46:22');
INSERT INTO `sys_log_login` VALUES (232, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-22 02:49:56');
INSERT INTO `sys_log_login` VALUES (233, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 21:53:40');
INSERT INTO `sys_log_login` VALUES (234, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 21:57:55');
INSERT INTO `sys_log_login` VALUES (235, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:00:05');
INSERT INTO `sys_log_login` VALUES (236, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:02:15');
INSERT INTO `sys_log_login` VALUES (237, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:04:41');
INSERT INTO `sys_log_login` VALUES (238, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:24:57');
INSERT INTO `sys_log_login` VALUES (239, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:26:32');
INSERT INTO `sys_log_login` VALUES (240, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:28:27');
INSERT INTO `sys_log_login` VALUES (241, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:29:36');
INSERT INTO `sys_log_login` VALUES (242, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:30:05');
INSERT INTO `sys_log_login` VALUES (243, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:31:02');
INSERT INTO `sys_log_login` VALUES (244, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 22:33:17');
INSERT INTO `sys_log_login` VALUES (245, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:06:12');
INSERT INTO `sys_log_login` VALUES (246, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:11:22');
INSERT INTO `sys_log_login` VALUES (247, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:22:29');
INSERT INTO `sys_log_login` VALUES (248, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:22:57');
INSERT INTO `sys_log_login` VALUES (249, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:23:20');
INSERT INTO `sys_log_login` VALUES (250, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:23:38');
INSERT INTO `sys_log_login` VALUES (251, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:38:37');
INSERT INTO `sys_log_login` VALUES (252, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:47:53');
INSERT INTO `sys_log_login` VALUES (253, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:51:40');
INSERT INTO `sys_log_login` VALUES (254, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:52:52');
INSERT INTO `sys_log_login` VALUES (255, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:53:23');
INSERT INTO `sys_log_login` VALUES (256, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-23 23:59:18');
INSERT INTO `sys_log_login` VALUES (257, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:01:42');
INSERT INTO `sys_log_login` VALUES (258, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:02:50');
INSERT INTO `sys_log_login` VALUES (259, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:06:09');
INSERT INTO `sys_log_login` VALUES (260, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:06:43');
INSERT INTO `sys_log_login` VALUES (261, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:11:07');
INSERT INTO `sys_log_login` VALUES (262, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 00:12:08');
INSERT INTO `sys_log_login` VALUES (263, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 01:36:04');
INSERT INTO `sys_log_login` VALUES (264, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 01:37:12');
INSERT INTO `sys_log_login` VALUES (265, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:04:36');
INSERT INTO `sys_log_login` VALUES (266, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:32:42');
INSERT INTO `sys_log_login` VALUES (267, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:33:06');
INSERT INTO `sys_log_login` VALUES (268, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:33:53');
INSERT INTO `sys_log_login` VALUES (269, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:37:28');
INSERT INTO `sys_log_login` VALUES (270, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:48:53');
INSERT INTO `sys_log_login` VALUES (271, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:54:31');
INSERT INTO `sys_log_login` VALUES (272, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 04:57:30');
INSERT INTO `sys_log_login` VALUES (273, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:00:07');
INSERT INTO `sys_log_login` VALUES (274, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:06:32');
INSERT INTO `sys_log_login` VALUES (275, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:12:18');
INSERT INTO `sys_log_login` VALUES (276, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:19:40');
INSERT INTO `sys_log_login` VALUES (277, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:20:44');
INSERT INTO `sys_log_login` VALUES (278, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:23:32');
INSERT INTO `sys_log_login` VALUES (279, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:23:58');
INSERT INTO `sys_log_login` VALUES (280, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:31:16');
INSERT INTO `sys_log_login` VALUES (281, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:52:48');
INSERT INTO `sys_log_login` VALUES (282, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 05:56:26');
INSERT INTO `sys_log_login` VALUES (283, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:01:02');
INSERT INTO `sys_log_login` VALUES (284, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:02:27');
INSERT INTO `sys_log_login` VALUES (285, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:02:32');
INSERT INTO `sys_log_login` VALUES (286, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:05:01');
INSERT INTO `sys_log_login` VALUES (287, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:05:43');
INSERT INTO `sys_log_login` VALUES (288, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:07:41');
INSERT INTO `sys_log_login` VALUES (289, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:08:38');
INSERT INTO `sys_log_login` VALUES (290, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:26:25');
INSERT INTO `sys_log_login` VALUES (291, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:27:09');
INSERT INTO `sys_log_login` VALUES (292, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:39:17');
INSERT INTO `sys_log_login` VALUES (293, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:39:50');
INSERT INTO `sys_log_login` VALUES (294, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:42:49');
INSERT INTO `sys_log_login` VALUES (295, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:58:22');
INSERT INTO `sys_log_login` VALUES (296, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:59:08');
INSERT INTO `sys_log_login` VALUES (297, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 06:59:50');
INSERT INTO `sys_log_login` VALUES (298, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:00:51');
INSERT INTO `sys_log_login` VALUES (299, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:01:36');
INSERT INTO `sys_log_login` VALUES (300, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:02:05');
INSERT INTO `sys_log_login` VALUES (301, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:02:13');
INSERT INTO `sys_log_login` VALUES (302, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:03:56');
INSERT INTO `sys_log_login` VALUES (303, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:23:18');
INSERT INTO `sys_log_login` VALUES (304, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:26:13');
INSERT INTO `sys_log_login` VALUES (305, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:27:45');
INSERT INTO `sys_log_login` VALUES (306, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:29:00');
INSERT INTO `sys_log_login` VALUES (307, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:31:07');
INSERT INTO `sys_log_login` VALUES (308, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:33:38');
INSERT INTO `sys_log_login` VALUES (309, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:34:59');
INSERT INTO `sys_log_login` VALUES (310, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:35:41');
INSERT INTO `sys_log_login` VALUES (311, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:37:03');
INSERT INTO `sys_log_login` VALUES (312, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:39:18');
INSERT INTO `sys_log_login` VALUES (313, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:54:41');
INSERT INTO `sys_log_login` VALUES (314, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:56:50');
INSERT INTO `sys_log_login` VALUES (315, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 07:58:19');
INSERT INTO `sys_log_login` VALUES (316, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 20:39:32');
INSERT INTO `sys_log_login` VALUES (317, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:21:31');
INSERT INTO `sys_log_login` VALUES (318, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:24:30');
INSERT INTO `sys_log_login` VALUES (319, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:26:37');
INSERT INTO `sys_log_login` VALUES (320, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:32:38');
INSERT INTO `sys_log_login` VALUES (321, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:33:08');
INSERT INTO `sys_log_login` VALUES (322, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:38:29');
INSERT INTO `sys_log_login` VALUES (323, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:39:13');
INSERT INTO `sys_log_login` VALUES (324, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:39:55');
INSERT INTO `sys_log_login` VALUES (325, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:42:48');
INSERT INTO `sys_log_login` VALUES (326, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:45:32');
INSERT INTO `sys_log_login` VALUES (327, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:46:00');
INSERT INTO `sys_log_login` VALUES (328, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:46:50');
INSERT INTO `sys_log_login` VALUES (329, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:47:11');
INSERT INTO `sys_log_login` VALUES (330, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:52:08');
INSERT INTO `sys_log_login` VALUES (331, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:52:29');
INSERT INTO `sys_log_login` VALUES (332, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-24 23:59:00');
INSERT INTO `sys_log_login` VALUES (333, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:02:12');
INSERT INTO `sys_log_login` VALUES (334, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:08:58');
INSERT INTO `sys_log_login` VALUES (335, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:09:56');
INSERT INTO `sys_log_login` VALUES (336, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:10:54');
INSERT INTO `sys_log_login` VALUES (337, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:11:14');
INSERT INTO `sys_log_login` VALUES (338, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:12:09');
INSERT INTO `sys_log_login` VALUES (339, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:17:47');
INSERT INTO `sys_log_login` VALUES (340, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:20:11');
INSERT INTO `sys_log_login` VALUES (341, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:30:02');
INSERT INTO `sys_log_login` VALUES (342, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:31:18');
INSERT INTO `sys_log_login` VALUES (343, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:31:55');
INSERT INTO `sys_log_login` VALUES (344, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:34:03');
INSERT INTO `sys_log_login` VALUES (345, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:35:47');
INSERT INTO `sys_log_login` VALUES (346, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:38:06');
INSERT INTO `sys_log_login` VALUES (347, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:40:16');
INSERT INTO `sys_log_login` VALUES (348, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:42:13');
INSERT INTO `sys_log_login` VALUES (349, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:47:34');
INSERT INTO `sys_log_login` VALUES (350, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:47:54');
INSERT INTO `sys_log_login` VALUES (351, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:52:21');
INSERT INTO `sys_log_login` VALUES (352, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 00:57:42');
INSERT INTO `sys_log_login` VALUES (353, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 01:00:20');
INSERT INTO `sys_log_login` VALUES (354, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 01:00:43');
INSERT INTO `sys_log_login` VALUES (355, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-25 01:10:02');
INSERT INTO `sys_log_login` VALUES (356, '超级管理员-admin', '127.0.0.1', '2021-02-26 01:32:18');
INSERT INTO `sys_log_login` VALUES (357, '超级管理员-admin', '127.0.0.1', '2021-02-26 01:33:01');
INSERT INTO `sys_log_login` VALUES (358, '超级管理员-admin', '127.0.0.1', '2021-02-26 01:36:18');
INSERT INTO `sys_log_login` VALUES (359, '超级管理员-admin', '127.0.0.1', '2021-02-26 01:39:42');
INSERT INTO `sys_log_login` VALUES (360, '超级管理员-admin', '127.0.0.1', '2021-02-26 01:43:31');
INSERT INTO `sys_log_login` VALUES (361, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 02:53:45');
INSERT INTO `sys_log_login` VALUES (362, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 02:54:06');
INSERT INTO `sys_log_login` VALUES (363, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:21:03');
INSERT INTO `sys_log_login` VALUES (364, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:22:02');
INSERT INTO `sys_log_login` VALUES (365, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:24:03');
INSERT INTO `sys_log_login` VALUES (366, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:45:31');
INSERT INTO `sys_log_login` VALUES (367, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:50:36');
INSERT INTO `sys_log_login` VALUES (368, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:53:21');
INSERT INTO `sys_log_login` VALUES (369, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:54:16');
INSERT INTO `sys_log_login` VALUES (370, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:55:34');
INSERT INTO `sys_log_login` VALUES (371, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:57:49');
INSERT INTO `sys_log_login` VALUES (372, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 03:58:43');
INSERT INTO `sys_log_login` VALUES (373, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:31:14');
INSERT INTO `sys_log_login` VALUES (374, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:32:28');
INSERT INTO `sys_log_login` VALUES (375, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:34:35');
INSERT INTO `sys_log_login` VALUES (376, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:37:08');
INSERT INTO `sys_log_login` VALUES (377, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:37:44');
INSERT INTO `sys_log_login` VALUES (378, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:38:05');
INSERT INTO `sys_log_login` VALUES (379, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:38:23');
INSERT INTO `sys_log_login` VALUES (380, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:38:43');
INSERT INTO `sys_log_login` VALUES (381, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:38:56');
INSERT INTO `sys_log_login` VALUES (382, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:46:32');
INSERT INTO `sys_log_login` VALUES (383, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 05:58:08');
INSERT INTO `sys_log_login` VALUES (384, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:01:34');
INSERT INTO `sys_log_login` VALUES (385, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:04:39');
INSERT INTO `sys_log_login` VALUES (386, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:39:14');
INSERT INTO `sys_log_login` VALUES (387, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:41:54');
INSERT INTO `sys_log_login` VALUES (388, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:43:17');
INSERT INTO `sys_log_login` VALUES (389, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:44:21');
INSERT INTO `sys_log_login` VALUES (390, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:46:56');
INSERT INTO `sys_log_login` VALUES (391, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:48:24');
INSERT INTO `sys_log_login` VALUES (392, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:51:44');
INSERT INTO `sys_log_login` VALUES (393, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 06:53:15');
INSERT INTO `sys_log_login` VALUES (394, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:09:50');
INSERT INTO `sys_log_login` VALUES (395, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:10:47');
INSERT INTO `sys_log_login` VALUES (396, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:15:58');
INSERT INTO `sys_log_login` VALUES (397, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:17:06');
INSERT INTO `sys_log_login` VALUES (398, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:18:46');
INSERT INTO `sys_log_login` VALUES (399, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:22:47');
INSERT INTO `sys_log_login` VALUES (400, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:36:16');
INSERT INTO `sys_log_login` VALUES (401, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:38:24');
INSERT INTO `sys_log_login` VALUES (402, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:38:45');
INSERT INTO `sys_log_login` VALUES (403, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:45:22');
INSERT INTO `sys_log_login` VALUES (404, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:45:39');
INSERT INTO `sys_log_login` VALUES (405, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:45:57');
INSERT INTO `sys_log_login` VALUES (406, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:46:15');
INSERT INTO `sys_log_login` VALUES (407, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 07:47:05');
INSERT INTO `sys_log_login` VALUES (408, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:00:34');
INSERT INTO `sys_log_login` VALUES (409, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:02:05');
INSERT INTO `sys_log_login` VALUES (410, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:03:04');
INSERT INTO `sys_log_login` VALUES (411, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:03:34');
INSERT INTO `sys_log_login` VALUES (412, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:03:59');
INSERT INTO `sys_log_login` VALUES (413, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:04:50');
INSERT INTO `sys_log_login` VALUES (414, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:05:22');
INSERT INTO `sys_log_login` VALUES (415, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:07:34');
INSERT INTO `sys_log_login` VALUES (416, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:08:25');
INSERT INTO `sys_log_login` VALUES (417, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:12:54');
INSERT INTO `sys_log_login` VALUES (418, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:15:45');
INSERT INTO `sys_log_login` VALUES (419, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:16:01');
INSERT INTO `sys_log_login` VALUES (420, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:17:10');
INSERT INTO `sys_log_login` VALUES (421, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:19:55');
INSERT INTO `sys_log_login` VALUES (422, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:26:02');
INSERT INTO `sys_log_login` VALUES (423, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:27:05');
INSERT INTO `sys_log_login` VALUES (424, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:31:11');
INSERT INTO `sys_log_login` VALUES (425, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:34:27');
INSERT INTO `sys_log_login` VALUES (426, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:35:46');
INSERT INTO `sys_log_login` VALUES (427, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:36:12');
INSERT INTO `sys_log_login` VALUES (428, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:36:34');
INSERT INTO `sys_log_login` VALUES (429, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:36:50');
INSERT INTO `sys_log_login` VALUES (430, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:37:37');
INSERT INTO `sys_log_login` VALUES (431, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:44:27');
INSERT INTO `sys_log_login` VALUES (432, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 08:45:41');
INSERT INTO `sys_log_login` VALUES (433, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:22:46');
INSERT INTO `sys_log_login` VALUES (434, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:30:30');
INSERT INTO `sys_log_login` VALUES (435, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:31:16');
INSERT INTO `sys_log_login` VALUES (436, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:38:18');
INSERT INTO `sys_log_login` VALUES (437, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:38:52');
INSERT INTO `sys_log_login` VALUES (438, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:45:31');
INSERT INTO `sys_log_login` VALUES (439, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:45:57');
INSERT INTO `sys_log_login` VALUES (440, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-28 19:48:00');
INSERT INTO `sys_log_login` VALUES (441, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 01:02:10');
INSERT INTO `sys_log_login` VALUES (442, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 01:46:17');
INSERT INTO `sys_log_login` VALUES (443, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 01:47:27');
INSERT INTO `sys_log_login` VALUES (444, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 01:49:51');
INSERT INTO `sys_log_login` VALUES (445, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 01:53:09');
INSERT INTO `sys_log_login` VALUES (446, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:31:13');
INSERT INTO `sys_log_login` VALUES (447, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:32:29');
INSERT INTO `sys_log_login` VALUES (448, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:33:51');
INSERT INTO `sys_log_login` VALUES (449, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:36:10');
INSERT INTO `sys_log_login` VALUES (450, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:39:04');
INSERT INTO `sys_log_login` VALUES (451, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:39:45');
INSERT INTO `sys_log_login` VALUES (452, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 02:40:09');
INSERT INTO `sys_log_login` VALUES (453, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 03:16:30');
INSERT INTO `sys_log_login` VALUES (454, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 03:17:47');
INSERT INTO `sys_log_login` VALUES (455, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 07:11:24');
INSERT INTO `sys_log_login` VALUES (456, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-02 23:38:44');
INSERT INTO `sys_log_login` VALUES (457, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 06:57:10');
INSERT INTO `sys_log_login` VALUES (458, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 06:57:27');
INSERT INTO `sys_log_login` VALUES (459, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:22:18');
INSERT INTO `sys_log_login` VALUES (460, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:22:50');
INSERT INTO `sys_log_login` VALUES (461, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:23:24');
INSERT INTO `sys_log_login` VALUES (462, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:24:22');
INSERT INTO `sys_log_login` VALUES (463, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:26:26');
INSERT INTO `sys_log_login` VALUES (464, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:26:44');
INSERT INTO `sys_log_login` VALUES (465, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:30:57');
INSERT INTO `sys_log_login` VALUES (466, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:31:21');
INSERT INTO `sys_log_login` VALUES (467, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:32:11');
INSERT INTO `sys_log_login` VALUES (468, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:32:36');
INSERT INTO `sys_log_login` VALUES (469, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:32:54');
INSERT INTO `sys_log_login` VALUES (470, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:33:07');
INSERT INTO `sys_log_login` VALUES (471, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:33:19');
INSERT INTO `sys_log_login` VALUES (472, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:33:30');
INSERT INTO `sys_log_login` VALUES (473, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:33:56');
INSERT INTO `sys_log_login` VALUES (474, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:34:53');
INSERT INTO `sys_log_login` VALUES (475, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:35:22');
INSERT INTO `sys_log_login` VALUES (476, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:38:17');
INSERT INTO `sys_log_login` VALUES (477, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:40:02');
INSERT INTO `sys_log_login` VALUES (478, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 07:40:34');
INSERT INTO `sys_log_login` VALUES (479, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:00:06');
INSERT INTO `sys_log_login` VALUES (480, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:00:45');
INSERT INTO `sys_log_login` VALUES (481, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:01:53');
INSERT INTO `sys_log_login` VALUES (482, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:04:05');
INSERT INTO `sys_log_login` VALUES (483, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:04:34');
INSERT INTO `sys_log_login` VALUES (484, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:07:14');
INSERT INTO `sys_log_login` VALUES (485, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:07:44');
INSERT INTO `sys_log_login` VALUES (486, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:09:21');
INSERT INTO `sys_log_login` VALUES (487, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:13:17');
INSERT INTO `sys_log_login` VALUES (488, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-03 08:15:16');
INSERT INTO `sys_log_login` VALUES (489, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:20:37');
INSERT INTO `sys_log_login` VALUES (490, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:23:46');
INSERT INTO `sys_log_login` VALUES (491, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:32:29');
INSERT INTO `sys_log_login` VALUES (492, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:34:46');
INSERT INTO `sys_log_login` VALUES (493, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:40:23');
INSERT INTO `sys_log_login` VALUES (494, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:43:31');
INSERT INTO `sys_log_login` VALUES (495, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:53:19');
INSERT INTO `sys_log_login` VALUES (496, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:54:41');
INSERT INTO `sys_log_login` VALUES (497, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:55:33');
INSERT INTO `sys_log_login` VALUES (498, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:56:39');
INSERT INTO `sys_log_login` VALUES (499, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 07:57:28');
INSERT INTO `sys_log_login` VALUES (500, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:01:44');
INSERT INTO `sys_log_login` VALUES (501, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:05:25');
INSERT INTO `sys_log_login` VALUES (502, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:07:30');
INSERT INTO `sys_log_login` VALUES (503, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:08:51');
INSERT INTO `sys_log_login` VALUES (504, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:14:35');
INSERT INTO `sys_log_login` VALUES (505, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:17:03');
INSERT INTO `sys_log_login` VALUES (506, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:18:11');
INSERT INTO `sys_log_login` VALUES (507, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:18:37');
INSERT INTO `sys_log_login` VALUES (508, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:22:35');
INSERT INTO `sys_log_login` VALUES (509, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:22:58');
INSERT INTO `sys_log_login` VALUES (510, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:23:17');
INSERT INTO `sys_log_login` VALUES (511, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:25:23');
INSERT INTO `sys_log_login` VALUES (512, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:27:35');
INSERT INTO `sys_log_login` VALUES (513, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:31:34');
INSERT INTO `sys_log_login` VALUES (514, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:32:03');
INSERT INTO `sys_log_login` VALUES (515, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:32:22');
INSERT INTO `sys_log_login` VALUES (516, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:34:52');
INSERT INTO `sys_log_login` VALUES (517, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:37:29');
INSERT INTO `sys_log_login` VALUES (518, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:38:40');
INSERT INTO `sys_log_login` VALUES (519, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:38:52');
INSERT INTO `sys_log_login` VALUES (520, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:41:12');
INSERT INTO `sys_log_login` VALUES (521, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:43:13');
INSERT INTO `sys_log_login` VALUES (522, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:43:29');
INSERT INTO `sys_log_login` VALUES (523, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:44:19');
INSERT INTO `sys_log_login` VALUES (524, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:44:37');
INSERT INTO `sys_log_login` VALUES (525, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:45:44');
INSERT INTO `sys_log_login` VALUES (526, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:46:51');
INSERT INTO `sys_log_login` VALUES (527, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:47:00');
INSERT INTO `sys_log_login` VALUES (528, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:47:31');
INSERT INTO `sys_log_login` VALUES (529, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:53:19');
INSERT INTO `sys_log_login` VALUES (530, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-04 08:53:29');
INSERT INTO `sys_log_login` VALUES (531, '德克斯特-Dexter', '0:0:0:0:0:0:0:1', '2021-03-04 09:00:47');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int(255) DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int(255) DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '汽车租赁系统', NULL, 1, NULL, '&#xe68e;', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '基础管理', NULL, 0, NULL, '&#xe621;', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '业务管理', '', 0, '', '&#xe663;', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '系统管理', NULL, 0, NULL, '&#xe716;', 1);
INSERT INTO `sys_menu` VALUES (5, 1, '统计分析', NULL, 0, NULL, '&#xe629;', 1);
INSERT INTO `sys_menu` VALUES (6, 2, '客户管理', '/bus/toCustomerManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (7, 2, '车辆管理', '/bus/toCarManager.action', 0, '', '&#xe657;', 1);
INSERT INTO `sys_menu` VALUES (8, 3, '汽车出租', '/bus/toRentCarManager.action', 0, '', '&#xe65b;', 1);
INSERT INTO `sys_menu` VALUES (9, 3, '出租单管理', '/bus/toRentManager.action', 0, '', '&#xe6b2;', 1);
INSERT INTO `sys_menu` VALUES (10, 3, '汽车入库', '/bus/toCheckCarManager.action', 0, '', '&#xe65a;', 1);
INSERT INTO `sys_menu` VALUES (11, 3, '检查单管理', '/bus/toCheckManager.action', 0, '', '&#xe705', 1);
INSERT INTO `sys_menu` VALUES (12, 4, '菜单管理', '/sys/toMenuManager.action', 0, NULL, '&#xe60f', 1);
INSERT INTO `sys_menu` VALUES (13, 4, '角色管理', '/sys/toRoleManager.action', 0, NULL, '&#xe66f;', 1);
INSERT INTO `sys_menu` VALUES (14, 4, '用户管理', '/sys/toUserManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (15, 4, '日志管理', '/sys/toLogInfoManager.action', 0, '', '&#xe655;', 1);
INSERT INTO `sys_menu` VALUES (16, 4, '系统公告', '/sys/toNewsManager.action', 0, '', '&#xe645;', 1);
INSERT INTO `sys_menu` VALUES (17, 4, '数据源监控', '/druid/', 0, '', '&#xe857;', 1);
INSERT INTO `sys_menu` VALUES (18, 5, '客户地区统计', '/stat/toCustomerAreaStat.action', 0, '', '&#xe63c;', 1);
INSERT INTO `sys_menu` VALUES (19, 5, '公司年度月份销售额', '/stat/toCompanyYearGradeStat.action', 0, '', '&#xe62c;', 1);
INSERT INTO `sys_menu` VALUES (20, 5, '业务员年度销售额', '/stat/toOpernameYearGradeStat.action', 0, '', '&#xe62d;', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
BEGIN;
INSERT INTO `sys_news` VALUES (1, '关于车牌号A11111未正常入库相关人员的处理意见', '<p>关于车牌号A11111未正常入库相关人员的处理意见</p>', '2019-07-27 11:21:49', '超级管理员');
INSERT INTO `sys_news` VALUES (2, '2021-02-18 13:15', '<img src=\"http://localhost:8080/static/layui/images/face/0.gif\" alt=\"[微笑]\">', '2021-02-17 23:15:57', '超级管理员');
INSERT INTO `sys_news` VALUES (3, '关于P12121的汽车问题', '管理人员未按照相关规定管理车辆<img src=\"http://localhost:8080/static/layui/images/face/21.gif\" alt=\"[衰]\">', '2021-02-18 01:09:59', '超级管理员');
INSERT INTO `sys_news` VALUES (4, '关于系统1.1版本', '添加数据源监控', '2021-02-18 04:40:43', '超级管理员');
INSERT INTO `sys_news` VALUES (5, '关于系统1.2版本', '添加统计分析板块', '2021-02-18 04:40:48', '超级管理员');
INSERT INTO `sys_news` VALUES (7, '关于系统1.3版本', '添加清理缓存功能', '2021-02-18 04:45:21', '超级管理员');
INSERT INTO `sys_news` VALUES (8, '汽车A1010未按照规定入库处罚', '罚款100元', '2021-02-18 04:47:46', '超级管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所以业务菜单', 1);
INSERT INTO `sys_role` VALUES (3, '系统管理员', '管理系统', 1);
INSERT INTO `sys_role` VALUES (4, '数据统计管理员', '数据统计管理员', 1);
INSERT INTO `sys_role` VALUES (5, 'Dexter', '系统开发者(最牛逼的角色直接删库的那种)', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (3, 17);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 18);
INSERT INTO `sys_role_menu` VALUES (4, 19);
INSERT INTO `sys_role_menu` VALUES (4, 20);
INSERT INTO `sys_role_menu` VALUES (5, 1);
INSERT INTO `sys_role_menu` VALUES (5, 2);
INSERT INTO `sys_role_menu` VALUES (5, 3);
INSERT INTO `sys_role_menu` VALUES (5, 4);
INSERT INTO `sys_role_menu` VALUES (5, 5);
INSERT INTO `sys_role_menu` VALUES (5, 6);
INSERT INTO `sys_role_menu` VALUES (5, 7);
INSERT INTO `sys_role_menu` VALUES (5, 8);
INSERT INTO `sys_role_menu` VALUES (5, 9);
INSERT INTO `sys_role_menu` VALUES (5, 10);
INSERT INTO `sys_role_menu` VALUES (5, 11);
INSERT INTO `sys_role_menu` VALUES (5, 12);
INSERT INTO `sys_role_menu` VALUES (5, 13);
INSERT INTO `sys_role_menu` VALUES (5, 14);
INSERT INTO `sys_role_menu` VALUES (5, 15);
INSERT INTO `sys_role_menu` VALUES (5, 16);
INSERT INTO `sys_role_menu` VALUES (5, 17);
INSERT INTO `sys_role_menu` VALUES (5, 18);
INSERT INTO `sys_role_menu` VALUES (5, 19);
INSERT INTO `sys_role_menu` VALUES (5, 20);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` VALUES (2, 4);
INSERT INTO `sys_role_user` VALUES (2, 5);
INSERT INTO `sys_role_user` VALUES (3, 1);
INSERT INTO `sys_role_user` VALUES (4, 2);
INSERT INTO `sys_role_user` VALUES (5, 3);
INSERT INTO `sys_role_user` VALUES (7, 5);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) DEFAULT NULL,
  `Avatarpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '4313341334413', '超级管理员', 1, '武汉', '134441331311', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', 1, 1, '2021-03-04/202103042253278461891.jpg_temp');
INSERT INTO `sys_user` VALUES (2, 'zhangsan', '34133341341311', '张三', 1, '武汉', '13413131311', 'e10adc3949ba59abbe56e057f20f883e', 'BA', 2, 1, 'Avatar/02.jpg');
INSERT INTO `sys_user` VALUES (3, 'ls', '43311341311314341', '李四', 1, '武汉', '13413141131', 'e10adc3949ba59abbe56e057f20f883e', '扫地的', 2, 1, 'Avatar/03.jpg');
INSERT INTO `sys_user` VALUES (4, 'ww', '4313133131331312', '王五', 1, '武汉', '13413131131', 'e10adc3949ba59abbe56e057f20f883e', '领导', 2, 1, 'Avatar/04.jpg');
INSERT INTO `sys_user` VALUES (5, 'xm', '45113141331131131', '小明', 0, '武昌', '13451333131', 'e10adc3949ba59abbe56e057f20f883e', '扫地地', 2, 1, 'Avatar/05.jpg');
INSERT INTO `sys_user` VALUES (7, 'Dexter', '411999232565645112', '德克斯特', 0, '河南', '18878888888', 'e10adc3949ba59abbe56e057f20f883e', '开发者', 2, 1, 'Avatar/06.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : cwgl

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 24/03/2020 16:11:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `money` float(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `typeid` int(1) NOT NULL COMMENT '类型 1 收入 2 支出',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `paywayid` int(11) NULL DEFAULT NULL COMMENT '支付方式',
  `time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  INDEX `type`(`typeid`) USING BTREE,
  INDEX `payway`(`paywayid`) USING BTREE,
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`typeid`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`paywayid`) REFERENCES `payway` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (7, '孩子学费孩子学费孩子学费孩子学费', 1, 1000.00, 1, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (8, '孩子学费', 1, 1000.00, 1, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (9, '孩子学费', 1, 1000.00, 1, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (10, '孩子学费', 1, 1000.00, 1, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (11, '孩子学费', 1, 1000.00, 1, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (12, '孩子学费', 1, 1000.00, 2, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (13, '孩子学费', 1, 1000.00, 1, '测试', 1, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (14, '孩子学费', 1, 1000.00, 1, '测试', 1, '2019-01-15 15:39:08');
INSERT INTO `bill` VALUES (15, '孩子学费', 1, 1000.00, 1, '测试', 1, '2019-01-15 15:39:08');
INSERT INTO `bill` VALUES (16, '孩子学费', 1, 1000.00, 1, '测试', 1, '2019-01-15 15:39:08');
INSERT INTO `bill` VALUES (17, '孩子学费', 1, 1000.00, 1, '测试', 1, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (19, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (20, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-12 15:39:08');
INSERT INTO `bill` VALUES (21, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (22, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-12 15:39:08');
INSERT INTO `bill` VALUES (23, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-14 15:39:08');
INSERT INTO `bill` VALUES (24, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-14 15:39:08');
INSERT INTO `bill` VALUES (25, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-14 15:39:08');
INSERT INTO `bill` VALUES (26, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-21 15:39:08');
INSERT INTO `bill` VALUES (27, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-25 15:39:08');
INSERT INTO `bill` VALUES (28, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-23 15:39:08');
INSERT INTO `bill` VALUES (29, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-21 15:39:08');
INSERT INTO `bill` VALUES (30, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-26 15:39:08');
INSERT INTO `bill` VALUES (31, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-06 15:39:08');
INSERT INTO `bill` VALUES (32, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-09 15:39:08');
INSERT INTO `bill` VALUES (33, '房租', 1, 1000.00, 1, '测试2', 2, '2019-01-20 15:39:08');
INSERT INTO `bill` VALUES (34, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-06 15:39:08');
INSERT INTO `bill` VALUES (35, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-22 15:39:08');
INSERT INTO `bill` VALUES (36, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-10 15:39:08');
INSERT INTO `bill` VALUES (37, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (38, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (39, '吃饭', 1, 800.00, 1, '测试2', 4, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (40, '吃饭', 1, 800.00, 1, '测试2', 4, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (41, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-18 15:39:08');
INSERT INTO `bill` VALUES (42, '吃饭', 1, 800.00, 1, '测试2', 4, '2020-03-24 15:39:08');
INSERT INTO `bill` VALUES (43, '吃饭', 3, 800.00, 1, '测试2', 4, '2019-01-23 15:39:08');
INSERT INTO `bill` VALUES (44, '吃饭', 3, 800.00, 1, '测试2', 4, '2019-01-18 15:39:08');
INSERT INTO `bill` VALUES (45, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-18 15:39:08');
INSERT INTO `bill` VALUES (46, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-10 15:39:08');
INSERT INTO `bill` VALUES (47, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-19 15:39:08');
INSERT INTO `bill` VALUES (48, '吃饭', 1, 800.00, 2, '测试2', 4, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (49, '吃饭', 1, 800.00, 1, '测试2', 4, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (50, '旅游', 2, 800.00, 1, '测试2', 3, '2019-01-12 20:18:16');
INSERT INTO `bill` VALUES (51, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-02 15:39:08');
INSERT INTO `bill` VALUES (52, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-03 15:39:08');
INSERT INTO `bill` VALUES (53, '旅游', 1, 800.00, 2, '测试2', 3, '2019-01-04 15:39:08');
INSERT INTO `bill` VALUES (54, '旅游', 1, 800.00, 2, '测试2', 3, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (55, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-15 15:39:08');
INSERT INTO `bill` VALUES (56, '旅游', 1, 800.00, 2, '测试2', 3, '2019-01-18 15:39:08');
INSERT INTO `bill` VALUES (57, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-02 15:39:08');
INSERT INTO `bill` VALUES (58, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-11 15:39:08');
INSERT INTO `bill` VALUES (59, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-26 15:39:08');
INSERT INTO `bill` VALUES (60, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (61, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-06 15:39:08');
INSERT INTO `bill` VALUES (62, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (63, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (64, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-02 15:39:08');
INSERT INTO `bill` VALUES (65, '旅游', 1, 800.00, 1, '测试2', 3, '2019-01-16 15:39:08');
INSERT INTO `bill` VALUES (67, 'asd', 1, 123.00, 1, 'adsasdad', 1, '2019-01-26 14:14:11');
INSERT INTO `bill` VALUES (68, 'aaa', 1, 123.00, 1, NULL, 1, '2019-01-26 14:23:52');
INSERT INTO `bill` VALUES (69, 'aaabbb', 3, 999.00, 1, 'aaabbb', 1, '2019-01-26 14:24:19');
INSERT INTO `bill` VALUES (70, 'asda', 1, 233.00, 1, 'asaas', 1, '2019-01-26 14:28:52');
INSERT INTO `bill` VALUES (71, 'dadada', 1, 123.00, 1, 'adasad', 1, '2019-01-26 14:29:53');
INSERT INTO `bill` VALUES (72, 'adasda', 1, 123.00, 1, 'aasdas', 1, '2019-01-26 14:33:09');
INSERT INTO `bill` VALUES (74, 'hah', 1, 123.00, 1, 'adasda', 2, '2019-01-26 14:36:18');
INSERT INTO `bill` VALUES (75, 'as大', 1, 123.00, 1, '阿萨德撒', 2, '2019-01-26 14:37:56');
INSERT INTO `bill` VALUES (76, '工资', 1, 333.00, 2, '', 3, '2019-01-25 15:11:54');
INSERT INTO `bill` VALUES (77, '工资', 1, 1000.00, 2, NULL, 3, '2019-01-25 17:21:48');
INSERT INTO `bill` VALUES (78, 'ceshi', 1, 100.00, 2, '', 4, '2019-01-26 17:26:57');
INSERT INTO `bill` VALUES (79, 'a', 1, 1.00, 2, '', 2, '2019-01-26 17:27:23');
INSERT INTO `bill` VALUES (80, '1', 1, 1.00, 2, '', 2, '2019-01-26 17:28:16');
INSERT INTO `bill` VALUES (82, '2', 1, 2.00, 1, 'aaaa', 1, '2019-01-26 17:28:47');
INSERT INTO `bill` VALUES (83, '2', 1, 2.00, 1, 'ceshi', 2, '2019-01-26 17:29:31');
INSERT INTO `bill` VALUES (85, '1', 1, 1.00, 1, 'ceshi', 1, '2019-01-27 17:34:53');
INSERT INTO `bill` VALUES (86, 'cehi', 1, 3999.00, 2, '工资', 2, '2019-01-01 00:14:05');
INSERT INTO `bill` VALUES (87, 'x', 1, 100.00, 2, NULL, 1, '2019-01-31 16:11:26');
INSERT INTO `bill` VALUES (88, '1', 1, 2111.00, 2, NULL, 1, '2019-01-31 16:11:53');
INSERT INTO `bill` VALUES (89, '222', 1, 2222.00, 1, NULL, 1, '2019-01-31 16:12:06');
INSERT INTO `bill` VALUES (90, '22', 1, 222.00, 1, NULL, 3, '2019-01-31 16:12:20');
INSERT INTO `bill` VALUES (93, '222', 1, 2222.00, 2, NULL, 2, '2019-01-31 16:32:18');
INSERT INTO `bill` VALUES (94, '123', 1, 123.00, 1, '1231111aaaaaaccc', 1, '2019-01-31 20:28:14');
INSERT INTO `bill` VALUES (95, '111', 1, 111.00, 2, '111', 1, '2019-01-31 20:35:54');
INSERT INTO `bill` VALUES (96, 'aaa', 1, 111.00, 1, 'aaa', 1, '2019-01-31 20:37:54');
INSERT INTO `bill` VALUES (97, '123', 1, 123.00, 2, '', 1, '2019-01-31 20:39:02');
INSERT INTO `bill` VALUES (98, '222', 1, 222.00, 1, '2www', 3, '2019-01-31 20:39:23');
INSERT INTO `bill` VALUES (99, 'ssd', 1, 232.00, 2, '322332', 2, '2019-01-31 20:39:58');
INSERT INTO `bill` VALUES (100, '222', 1, 211.00, 2, '1111', 3, '2019-01-31 20:40:09');
INSERT INTO `bill` VALUES (101, 'aasa', 1, 1223.00, 2, '111', 2, '2019-01-31 20:44:18');
INSERT INTO `bill` VALUES (103, 'a', 1, 1123.00, 1, 'c', 1, '2019-02-01 09:48:54');
INSERT INTO `bill` VALUES (104, 'ces', 1, 111.00, 1, '', 2, '2019-02-01 09:52:52');
INSERT INTO `bill` VALUES (105, 'aa', 1, 123.00, 2, 'aa', 2, '2019-02-01 09:53:28');
INSERT INTO `bill` VALUES (106, 'aa', 1, 123.00, 1, '11', 2, '2019-02-01 09:53:52');
INSERT INTO `bill` VALUES (107, 'aa', 1, 123.00, 2, 'aa', 2, '2019-02-01 09:54:16');
INSERT INTO `bill` VALUES (108, 'aa', 1, 1123.00, 1, 'aa', 2, '2019-02-01 09:55:10');
INSERT INTO `bill` VALUES (109, 'aa', 1, 123.00, 2, '111', 2, '2019-02-01 09:56:30');
INSERT INTO `bill` VALUES (110, 'asd', 1, 111.00, 2, '111', 1, '2019-02-01 09:57:43');
INSERT INTO `bill` VALUES (111, 'aass', 1, 111.00, 2, '111', 2, '2019-02-01 09:59:21');
INSERT INTO `bill` VALUES (112, 'aa22', 1, 1111.00, 2, 'aa', 2, '2019-02-01 10:00:28');
INSERT INTO `bill` VALUES (113, '测试', 3, 999.00, 2, '测试', 1, '2019-02-11 19:14:25');
INSERT INTO `bill` VALUES (114, 'ceshi', 1, 999.00, 1, '', 3, '2019-03-10 09:12:05');
INSERT INTO `bill` VALUES (115, 'ceshi', 1, 2980.00, 2, '', 4, '2019-03-10 09:12:36');
INSERT INTO `bill` VALUES (116, 'ceshi', 1, 123.00, 2, '', 2, '2019-03-10 09:16:53');
INSERT INTO `bill` VALUES (117, 'ceshi', 1, 1.00, 2, '', 1, '2019-03-10 09:20:12');
INSERT INTO `bill` VALUES (118, 'cehs', 1, 85.00, 1, '', 1, '2019-03-10 09:21:28');
INSERT INTO `bill` VALUES (122, '好好', 1, 5.00, 2, '是', 2, '2019-03-15 13:57:13');
INSERT INTO `bill` VALUES (123, '好好', 1, 5.00, 2, '是', 2, '2019-03-15 13:59:17');
INSERT INTO `bill` VALUES (124, '好好', 1, 5.00, 2, '是', 2, '2019-03-15 14:00:28');
INSERT INTO `bill` VALUES (125, '好好', 1, 5.00, 2, '是', 2, '2019-03-15 14:00:49');
INSERT INTO `bill` VALUES (126, '好好好好', 1, 5.00, 2, '是', 2, '2019-03-15 14:01:13');
INSERT INTO `bill` VALUES (128, '还好', 1, 555.00, 2, '还好', 2, '2019-03-15 14:12:46');
INSERT INTO `bill` VALUES (129, '还好', 1, 500.00, 1, '', 1, '2019-03-15 14:16:05');
INSERT INTO `bill` VALUES (130, '豪华', 1, 555.00, 1, '', 1, '2019-03-15 14:24:01');
INSERT INTO `bill` VALUES (131, '好', 1, 55.00, 1, '宝宝', 1, '2019-03-15 14:27:15');
INSERT INTO `bill` VALUES (132, '你', 1, 88.00, 1, '还好', 1, '2019-03-15 14:27:58');
INSERT INTO `bill` VALUES (133, '还好', 1, 99.00, 1, '故宫', 1, '2019-03-15 14:33:27');
INSERT INTO `bill` VALUES (134, '就回去', 1, 666.00, 1, '哈哈哈', 1, '2019-03-15 14:36:11');
INSERT INTO `bill` VALUES (135, '不会', 1, 55.00, 1, '宝宝', 1, '2019-03-15 14:42:12');
INSERT INTO `bill` VALUES (136, '还好', 1, 555.00, 2, '还好', 2, '2019-03-15 14:42:48');
INSERT INTO `bill` VALUES (137, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:45:10');
INSERT INTO `bill` VALUES (138, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:45:43');
INSERT INTO `bill` VALUES (140, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:47:19');
INSERT INTO `bill` VALUES (141, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:48:48');
INSERT INTO `bill` VALUES (142, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:49:16');
INSERT INTO `bill` VALUES (143, '还好', 1, 55.00, 1, '还好', 1, '2019-03-15 14:49:48');
INSERT INTO `bill` VALUES (145, '哈哈哈', 1, 5555.00, 1, '不不不', 1, '2019-03-15 14:56:04');
INSERT INTO `bill` VALUES (148, '匹配', 1, 2225.00, 1, '还好', 1, '2019-03-15 14:59:40');
INSERT INTO `bill` VALUES (154, '还好', 3, 56.00, 1, '', 1, '2019-03-19 14:37:36');
INSERT INTO `bill` VALUES (155, '还好', 1, 8888.00, 2, '', 2, '2019-03-30 14:50:44');
INSERT INTO `bill` VALUES (156, '888', 6, 888.00, 1, '', 1, '2019-03-30 15:08:42');
INSERT INTO `bill` VALUES (162, '66', 6, 66.00, 1, '', 2, '2019-03-30 16:22:52');
INSERT INTO `bill` VALUES (163, '刚好', 6, 66.00, 1, '', 1, '2019-03-30 16:25:26');
INSERT INTO `bill` VALUES (164, '刚好', 6, 666.00, 1, '', 4, '2019-03-30 16:26:05');
INSERT INTO `bill` VALUES (165, '旅行', 1, 1100.00, 1, '', 4, '2019-04-04 16:13:10');
INSERT INTO `bill` VALUES (174, '工资', 1, 2000.00, 2, '', 1, '2019-04-04 17:49:52');
INSERT INTO `bill` VALUES (177, '日用品', 1, 555.00, 1, '', 2, '2019-04-04 17:58:14');
INSERT INTO `bill` VALUES (179, '购物', 1, 500.00, 1, '', 1, '2019-04-08 23:04:35');
INSERT INTO `bill` VALUES (180, '工资', 1, 2000.00, 2, '', 1, '2019-04-09 11:46:28');
INSERT INTO `bill` VALUES (181, '外卖', 6, 20.00, 1, '', 1, '2019-04-26 17:28:37');
INSERT INTO `bill` VALUES (182, '工资', 6, 800.00, 2, '', 3, '2019-04-26 17:29:31');
INSERT INTO `bill` VALUES (188, '饮食', 24, 100.00, 1, '', 1, '2019-05-01 09:10:44');
INSERT INTO `bill` VALUES (189, '工资', 24, 8000.00, 2, '', 3, '2019-05-01 09:12:53');
INSERT INTO `bill` VALUES (190, '购物', 3, 180.00, 1, '', 1, '2019-05-27 10:04:24');
INSERT INTO `bill` VALUES (192, '工资', 1, 1111.00, 2, '工资', 3, '2020-03-24 19:01:25');
INSERT INTO `bill` VALUES (193, '购物', 3, 556.00, 1, '', 1, '2020-03-24 14:55:37');
INSERT INTO `bill` VALUES (194, '兼职', 3, 966.00, 2, '', 1, '2020-03-24 14:56:07');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ownerid` int(11) NOT NULL COMMENT '户主编号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `holderid`(`ownerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, 3, '红谷滩新区');
INSERT INTO `house` VALUES (3, 20, NULL);
INSERT INTO `house` VALUES (4, 21, NULL);

-- ----------------------------
-- Table structure for payway
-- ----------------------------
DROP TABLE IF EXISTS `payway`;
CREATE TABLE `payway`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payway` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payway
-- ----------------------------
INSERT INTO `payway` VALUES (1, '支付宝', NULL);
INSERT INTO `payway` VALUES (2, '微信', NULL);
INSERT INTO `payway` VALUES (3, '银联', NULL);
INSERT INTO `payway` VALUES (4, '现金', NULL);
INSERT INTO `payway` VALUES (5, '其他', NULL);

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `privilegeNumber` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编号',
  `privilegeName` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `privilegeTipflag` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单级别',
  `privilegeTypeflag` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1启用 0禁用',
  `privilegeUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限URL',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES (62, '001', '支出管理', '0', '1', '', '&#xe698;');
INSERT INTO `privilege` VALUES (63, '001001', '支出详情', '1', '1', 'pay_details', '&#xe698;');
INSERT INTO `privilege` VALUES (64, '002', '收入管理', '0', '1', NULL, '&#xe702;');
INSERT INTO `privilege` VALUES (65, '002001', '收入详情', '1', '1', 'income_details', '&#xe702;');
INSERT INTO `privilege` VALUES (66, '003', '统计报表', '0', '1', NULL, '&#xe757;');
INSERT INTO `privilege` VALUES (67, '003001', '统计报表', '1', '1', 'chart_line', '&#xe757;');
INSERT INTO `privilege` VALUES (68, '004', '家庭成员管理', '0', '1', NULL, '&#xe726;');
INSERT INTO `privilege` VALUES (69, '005', '系统管理', '0', '1', '', '&#xe696;');
INSERT INTO `privilege` VALUES (70, '005001', '用户管理', '1', '1', 'sys_users', '&#xe6b8;');
INSERT INTO `privilege` VALUES (71, '005002', '角色管理', '1', '1', 'sys_roles', '&#xe70b;');
INSERT INTO `privilege` VALUES (74, '004001', '家庭成员信息', '1', '1', 'sys_users', '&#xe726;');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员');
INSERT INTO `role` VALUES (2, '家主');
INSERT INTO `role` VALUES (3, '用户');

-- ----------------------------
-- Table structure for roleprivilieges
-- ----------------------------
DROP TABLE IF EXISTS `roleprivilieges`;
CREATE TABLE `roleprivilieges`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roleID` int(11) NULL DEFAULT NULL COMMENT '角色维护表主键',
  `privilegeID` int(11) NULL DEFAULT NULL COMMENT '权限维护表主键',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `roleID`(`roleID`) USING BTREE,
  INDEX `privilegeID`(`privilegeID`) USING BTREE,
  CONSTRAINT `roleprivilieges_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `roleprivilieges_ibfk_2` FOREIGN KEY (`privilegeID`) REFERENCES `privilege` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 867 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roleprivilieges
-- ----------------------------
INSERT INTO `roleprivilieges` VALUES (829, 1, 62);
INSERT INTO `roleprivilieges` VALUES (830, 1, 63);
INSERT INTO `roleprivilieges` VALUES (831, 1, 64);
INSERT INTO `roleprivilieges` VALUES (832, 1, 65);
INSERT INTO `roleprivilieges` VALUES (833, 1, 66);
INSERT INTO `roleprivilieges` VALUES (834, 1, 67);
INSERT INTO `roleprivilieges` VALUES (836, 1, 69);
INSERT INTO `roleprivilieges` VALUES (837, 1, 70);
INSERT INTO `roleprivilieges` VALUES (838, 1, 71);
INSERT INTO `roleprivilieges` VALUES (841, 2, 62);
INSERT INTO `roleprivilieges` VALUES (842, 2, 63);
INSERT INTO `roleprivilieges` VALUES (843, 2, 64);
INSERT INTO `roleprivilieges` VALUES (844, 2, 65);
INSERT INTO `roleprivilieges` VALUES (845, 2, 66);
INSERT INTO `roleprivilieges` VALUES (846, 2, 67);
INSERT INTO `roleprivilieges` VALUES (847, 3, 62);
INSERT INTO `roleprivilieges` VALUES (848, 3, 63);
INSERT INTO `roleprivilieges` VALUES (849, 3, 64);
INSERT INTO `roleprivilieges` VALUES (850, 3, 65);
INSERT INTO `roleprivilieges` VALUES (851, 2, 68);
INSERT INTO `roleprivilieges` VALUES (852, 2, 74);
INSERT INTO `roleprivilieges` VALUES (853, 3, 66);
INSERT INTO `roleprivilieges` VALUES (854, 3, 67);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '支出');
INSERT INTO `type` VALUES (2, '收入');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `roleid` int(1) NOT NULL DEFAULT 3 COMMENT '角色编号',
  `houseid` int(11) NULL DEFAULT NULL COMMENT '所属家庭编号',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `houseid`(`houseid`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`houseid`) REFERENCES `house` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zsh', 'zsh', '十里不成书', 1, NULL, NULL);
INSERT INTO `user` VALUES (2, 'test', 'm123', '测试账户', 3, 1, NULL);
INSERT INTO `user` VALUES (3, 'house1', 'm123', '家主1号', 2, 1, NULL);
INSERT INTO `user` VALUES (6, 'ceshi', 'm123', '测试3', 3, 1, NULL);
INSERT INTO `user` VALUES (21, 'house2', '123456', 'house2', 2, 4, NULL);
INSERT INTO `user` VALUES (23, 'aa', 'zz', NULL, 3, NULL, NULL);
INSERT INTO `user` VALUES (24, 'hello', 'world', 'hello', 3, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : fzk
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : xiangmu

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 06/03/2023 20:40:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
create database shixun;
use shixun;
-- ----------------------------
-- Table structure for backlightcolor
-- ----------------------------
DROP TABLE IF EXISTS `backlightcolor`;
CREATE TABLE `backlightcolor`  (
  `backlightcolorid` int(11) NOT NULL AUTO_INCREMENT COMMENT '背光颜色id',
  `backlightcolorname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背光颜色',
  PRIMARY KEY (`backlightcolorid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of backlightcolor
-- ----------------------------
INSERT INTO `backlightcolor` VALUES (1, '红色背光');
INSERT INTO `backlightcolor` VALUES (2, '蓝色背光');
INSERT INTO `backlightcolor` VALUES (3, '白色背光');
INSERT INTO `backlightcolor` VALUES (4, 'RGB跑马灯');

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchid` int(50) NULL DEFAULT NULL COMMENT '店铺编号',
  `branchname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分店名',
  `starttime` date NULL DEFAULT NULL COMMENT '开店时间',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分店地址',
  `state` int(255) NULL DEFAULT NULL COMMENT '店铺状态',
  `staffid` int(11) NULL DEFAULT NULL COMMENT '员工Id',
  `countsss` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES (1, 12138, '小张的快乐总店', '2021-07-07', '河南省郑州市金水区', 1, 111, NULL);
INSERT INTO `branch` VALUES (2, 12139, '新乡分店', '2021-07-02', '河南省新乡市牧野区', 1, 116, NULL);
INSERT INTO `branch` VALUES (21, 33333, '亏本分店', '2021-07-07', '河南省郑州市新郑市', 1, 121, NULL);
INSERT INTO `branch` VALUES (24, 88888, '荷兰分店', '2021-07-13', '河南省南阳市内乡县', 1, 888, NULL);
INSERT INTO `branch` VALUES (37, 77777, '测试门店', '2021-07-29', '郑州', 1, 222, NULL);
INSERT INTO `branch` VALUES (38, 121381, 'AAA', '2021-12-01', '郑州', 1, NULL, NULL);
INSERT INTO `branch` VALUES (39, 121391, '三门峡门店', '2021-12-15', '三门峡', 1, 212, NULL);

-- ----------------------------
-- Table structure for branch_dept
-- ----------------------------
DROP TABLE IF EXISTS `branch_dept`;
CREATE TABLE `branch_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchid` int(11) NULL DEFAULT NULL,
  `deptid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch_dept
-- ----------------------------
INSERT INTO `branch_dept` VALUES (1, 12138, 1);
INSERT INTO `branch_dept` VALUES (2, 12138, 2);
INSERT INTO `branch_dept` VALUES (3, 12138, 3);
INSERT INTO `branch_dept` VALUES (4, 12138, 4);
INSERT INTO `branch_dept` VALUES (5, 12139, 1);
INSERT INTO `branch_dept` VALUES (6, 12139, 2);
INSERT INTO `branch_dept` VALUES (7, 12139, 3);
INSERT INTO `branch_dept` VALUES (8, 12139, 4);
INSERT INTO `branch_dept` VALUES (9, 12140, 1);
INSERT INTO `branch_dept` VALUES (10, 12140, 2);
INSERT INTO `branch_dept` VALUES (11, 12140, 3);
INSERT INTO `branch_dept` VALUES (12, 12140, 4);

-- ----------------------------
-- Table structure for branch_goods
-- ----------------------------
DROP TABLE IF EXISTS `branch_goods`;
CREATE TABLE `branch_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branchid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `counts` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 278 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch_goods
-- ----------------------------
INSERT INTO `branch_goods` VALUES (1, 12138, 1, 98);
INSERT INTO `branch_goods` VALUES (2, 12138, 2, 395);
INSERT INTO `branch_goods` VALUES (3, 12138, 3, 290);
INSERT INTO `branch_goods` VALUES (4, 12138, 4, 150);
INSERT INTO `branch_goods` VALUES (5, 12138, 5, 54);
INSERT INTO `branch_goods` VALUES (6, 12138, 6, 5);
INSERT INTO `branch_goods` VALUES (7, 12138, 7, 6);
INSERT INTO `branch_goods` VALUES (8, 12138, 8, 10);
INSERT INTO `branch_goods` VALUES (9, 12138, 9, 16);
INSERT INTO `branch_goods` VALUES (10, 12138, 24, 15);
INSERT INTO `branch_goods` VALUES (11, 12139, 1, 20);
INSERT INTO `branch_goods` VALUES (12, 12139, 24, 10);
INSERT INTO `branch_goods` VALUES (13, 33333, 1, 0);
INSERT INTO `branch_goods` VALUES (14, 33333, 2, 0);
INSERT INTO `branch_goods` VALUES (15, 33333, 3, 100);
INSERT INTO `branch_goods` VALUES (16, 33333, 4, 17);
INSERT INTO `branch_goods` VALUES (17, 33333, 5, 37);
INSERT INTO `branch_goods` VALUES (18, 33333, 6, 27);
INSERT INTO `branch_goods` VALUES (19, 33333, 7, 17);
INSERT INTO `branch_goods` VALUES (20, 33333, 8, 17);
INSERT INTO `branch_goods` VALUES (21, 33333, 9, 17);
INSERT INTO `branch_goods` VALUES (65, 88888, 1, 95);
INSERT INTO `branch_goods` VALUES (66, 88888, 2, 90);
INSERT INTO `branch_goods` VALUES (67, 88888, 3, 80);
INSERT INTO `branch_goods` VALUES (68, 88888, 4, 100);
INSERT INTO `branch_goods` VALUES (69, 88888, 5, 20);
INSERT INTO `branch_goods` VALUES (70, 88888, 6, 0);
INSERT INTO `branch_goods` VALUES (71, 88888, 7, 10);
INSERT INTO `branch_goods` VALUES (72, 88888, 8, 6);
INSERT INTO `branch_goods` VALUES (73, 88888, 9, 0);
INSERT INTO `branch_goods` VALUES (76, 12139, 9, 20);
INSERT INTO `branch_goods` VALUES (77, 12139, 4, 25);
INSERT INTO `branch_goods` VALUES (78, 12139, 5, 15);
INSERT INTO `branch_goods` VALUES (79, 12138, 29, 30);
INSERT INTO `branch_goods` VALUES (80, 12139, 7, 0);
INSERT INTO `branch_goods` VALUES (81, 12139, 29, 0);
INSERT INTO `branch_goods` VALUES (88, 12139, 28, 0);
INSERT INTO `branch_goods` VALUES (89, 12138, 30, 130);
INSERT INTO `branch_goods` VALUES (90, 12139, 3, 110);
INSERT INTO `branch_goods` VALUES (117, 12139, 2, 10);
INSERT INTO `branch_goods` VALUES (236, 77777, 1, 0);
INSERT INTO `branch_goods` VALUES (237, 77777, 2, 0);
INSERT INTO `branch_goods` VALUES (238, 77777, 3, 0);
INSERT INTO `branch_goods` VALUES (239, 77777, 4, 0);
INSERT INTO `branch_goods` VALUES (240, 77777, 5, 0);
INSERT INTO `branch_goods` VALUES (241, 77777, 6, 0);
INSERT INTO `branch_goods` VALUES (242, 77777, 7, 0);
INSERT INTO `branch_goods` VALUES (243, 77777, 8, 0);
INSERT INTO `branch_goods` VALUES (244, 77777, 9, 0);
INSERT INTO `branch_goods` VALUES (245, 77777, 24, 0);
INSERT INTO `branch_goods` VALUES (246, 77777, 28, 0);
INSERT INTO `branch_goods` VALUES (247, 77777, 29, 50);
INSERT INTO `branch_goods` VALUES (248, 77777, 30, 50);
INSERT INTO `branch_goods` VALUES (250, 121381, 1, 0);
INSERT INTO `branch_goods` VALUES (251, 121381, 2, 0);
INSERT INTO `branch_goods` VALUES (252, 121381, 3, 0);
INSERT INTO `branch_goods` VALUES (253, 121381, 4, 0);
INSERT INTO `branch_goods` VALUES (254, 121381, 5, 0);
INSERT INTO `branch_goods` VALUES (255, 121381, 6, 0);
INSERT INTO `branch_goods` VALUES (256, 121381, 7, 0);
INSERT INTO `branch_goods` VALUES (257, 121381, 8, 0);
INSERT INTO `branch_goods` VALUES (258, 121381, 9, 0);
INSERT INTO `branch_goods` VALUES (259, 121381, 24, 0);
INSERT INTO `branch_goods` VALUES (260, 121381, 28, 0);
INSERT INTO `branch_goods` VALUES (261, 121381, 29, 0);
INSERT INTO `branch_goods` VALUES (262, 121381, 30, 0);
INSERT INTO `branch_goods` VALUES (263, 121381, 32, 0);
INSERT INTO `branch_goods` VALUES (264, 121391, 1, 0);
INSERT INTO `branch_goods` VALUES (265, 121391, 2, 0);
INSERT INTO `branch_goods` VALUES (266, 121391, 3, 0);
INSERT INTO `branch_goods` VALUES (267, 121391, 4, 0);
INSERT INTO `branch_goods` VALUES (268, 121391, 5, 0);
INSERT INTO `branch_goods` VALUES (269, 121391, 6, 0);
INSERT INTO `branch_goods` VALUES (270, 121391, 7, 0);
INSERT INTO `branch_goods` VALUES (271, 121391, 8, 0);
INSERT INTO `branch_goods` VALUES (272, 121391, 9, 0);
INSERT INTO `branch_goods` VALUES (273, 121391, 24, 0);
INSERT INTO `branch_goods` VALUES (274, 121391, 28, 0);
INSERT INTO `branch_goods` VALUES (276, 121391, 30, 30);
INSERT INTO `branch_goods` VALUES (278, 12138, 32, 0);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `deptid` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `counts` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`deptid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '管理部', '管理卖假货', 1);
INSERT INTO `department` VALUES (3, '统计部', '统计东西', 1);
INSERT INTO `department` VALUES (4, '盘点部', '盘点假货', 1);
INSERT INTO `department` VALUES (5, '入库部', '往仓库入假货', 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键盘布局',
  `keycapid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键帽材质',
  `keyboardcolorid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键盘颜色',
  `shafttype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '轴体类型',
  `shaftchooseid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '轴体选择',
  `interfacetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口类型',
  `backlightcolorid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背光颜色',
  `cprice` double(20, 2) NULL DEFAULT NULL COMMENT '商品进价',
  `sprice` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上下架状态',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`goodsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '黑峡谷GK715', '104键', '1', '1', 'KailhBOX轴', '1', 'USB接口', '1', 100.00, 229.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/91f8ebac-f54c-4b06-a39a-84b7c0449d3e.jpg');
INSERT INTO `goods` VALUES (2, '黑峡谷GK715s', '104键', '2', '2', 'KailhBOX轴', '2', 'USB接口', '2', 100.00, 229.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/8c479cb2-faa3-43ac-bb9c-203ed4c059a7.jpg');
INSERT INTO `goods` VALUES (3, '雷神武装GK705', '104键', '1', '2', 'KailhBOX轴', '1', 'USB接口', '3', 100.00, 269.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/32a472c7-604b-4725-94ae-5dab48f610e6.jpg');
INSERT INTO `goods` VALUES (4, '黑峡谷X3', '87键', '2', '5', 'KailhBOX轴', '4', 'Tpye-C接口', '3', 150.00, 399.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/8f1348b2-f93b-4e47-b869-c2cd9eaf0793.jpg');
INSERT INTO `goods` VALUES (5, '黑峡谷X5', '104键', '2', '6', 'KailhBOX轴', '5', 'Tpye-C接口', '3', 150.00, 419.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/00e2abcd-75f3-4363-95a4-21ed5f7bf897.jpg');
INSERT INTO `goods` VALUES (6, '黑峡谷GK755A', '104键', '1', '1', 'KailhBOX轴', '3', 'USB接口', '4', 200.00, 459.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/5f377de2-18d8-4679-a2fe-7d07293077bb.jpg');
INSERT INTO `goods` VALUES (7, '梦魇武装K735', '104键', '2', '1', 'KailhBOX轴', '2', 'USB接口', '4', 200.00, 359.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/bc0827c4-183a-412a-a7df-4dd15015fa69.jpg');
INSERT INTO `goods` VALUES (8, '黑峡谷GK757B', '87键', '1', '2', 'KailhBOX轴', '3', '双USB接口', '4', 100.00, 299.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/7ea16144-3457-41b4-b2ba-9a01a6748a47.jpg');
INSERT INTO `goods` VALUES (9, '黑峡谷GK757A', '87键', '2', '1', 'KailhBOX轴', '1', 'USB接口', '1', 120.00, 309.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/66bb0eb1-d1fe-44a9-8f77-22ef8eabf881.jpg');
INSERT INTO `goods` VALUES (24, '测试键盘', '104健', '2', '5', 'KailhBOX轴', '1', 'USB', '2', 100.00, 500.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/af091328-ceb5-4da8-b1c8-5f7d02480539.jpg');
INSERT INTO `goods` VALUES (28, '实验键盘', '104健', '1', '3', 'KailhBOX轴', '3', 'USB', '3', 100.00, 400.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/f18a3568-64a2-425d-8e2a-ca230d72bcb3.jpg');
INSERT INTO `goods` VALUES (29, 'A键盘', '104', '1', '2', 'KailhBOX轴', '3', 'USB', '2', 100.00, 200.00, '0', 'https://caiwen-img.oss-cn-beijing.aliyuncs.com/11571066-9667-4bed-9907-bf95b54dfd2b.jpg');
INSERT INTO `goods` VALUES (30, 'B键盘', '111', '1', '2', 'KailhBOX轴', '3', 'USB', '1', 55.00, 100.00, '0', NULL);
INSERT INTO `goods` VALUES (32, 'Bb键盘', '113', '1', '2', 'kkkk', '3', 'Type_C', '2', 99.00, 120.00, '0', '');

-- ----------------------------
-- Table structure for inlibrary
-- ----------------------------
DROP TABLE IF EXISTS `inlibrary`;
CREATE TABLE `inlibrary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `staffid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `branchid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `dates` datetime(0) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inlibrary
-- ----------------------------
INSERT INTO `inlibrary` VALUES (1, '2021-06-29 16:39:40', '2', '111', '12138', '2021-07-19 19:14:04', 1, NULL);
INSERT INTO `inlibrary` VALUES (155, '2021-07-23 16:19:25', '2', '123', '33333', '2021-07-23 16:19:42', NULL, NULL);
INSERT INTO `inlibrary` VALUES (156, '2021-07-23 16:45:08', '2', '123', '33333', '2021-07-23 18:37:01', NULL, NULL);
INSERT INTO `inlibrary` VALUES (157, '2021-07-23 17:12:23', '2', '123', '33333', '2021-07-23 18:36:57', NULL, NULL);
INSERT INTO `inlibrary` VALUES (158, '2021-07-23 18:26:51', '2', '123', '33333', '2021-07-23 18:27:03', NULL, NULL);
INSERT INTO `inlibrary` VALUES (159, '2021-07-23 18:37:33', '2', '123', '33333', '2021-07-23 18:37:47', NULL, NULL);
INSERT INTO `inlibrary` VALUES (160, '2021-07-23 19:02:18', '2', '123', '33333', '2021-07-23 19:02:38', NULL, NULL);
INSERT INTO `inlibrary` VALUES (161, '2021-07-23 19:03:57', '2', '123', '33333', '2021-07-23 19:04:03', NULL, NULL);
INSERT INTO `inlibrary` VALUES (162, '2021-07-23 19:05:41', '2', '123', '33333', '2021-07-23 19:05:46', NULL, NULL);
INSERT INTO `inlibrary` VALUES (163, '2021-07-23 19:08:32', '2', '123', '33333', '2021-07-24 14:09:12', NULL, NULL);
INSERT INTO `inlibrary` VALUES (164, '2021-07-23 19:10:20', '3', '123', '33333', '2021-07-24 14:09:31', NULL, NULL);
INSERT INTO `inlibrary` VALUES (165, '2021-07-23 19:10:55', '1', '123', '33333', NULL, NULL, NULL);
INSERT INTO `inlibrary` VALUES (166, '2021-07-23 19:17:17', '3', '123', '33333', '2021-07-24 14:09:28', NULL, NULL);
INSERT INTO `inlibrary` VALUES (167, '2021-07-23 20:01:41', '2', '111', '12138', '2021-07-23 20:01:47', NULL, NULL);
INSERT INTO `inlibrary` VALUES (168, '2021-07-23 22:12:01', '2', '123', '33333', '2021-07-24 14:09:34', NULL, NULL);
INSERT INTO `inlibrary` VALUES (169, '2021-07-23 22:12:16', '2', '123', '33333', '2021-07-24 14:09:23', NULL, NULL);
INSERT INTO `inlibrary` VALUES (170, '2021-07-23 22:12:19', '2', '123', '33333', '2021-07-24 14:09:26', NULL, NULL);
INSERT INTO `inlibrary` VALUES (171, '2021-07-23 22:19:42', '2', '123', '33333', '2021-07-24 14:09:20', NULL, NULL);
INSERT INTO `inlibrary` VALUES (172, '2021-07-23 22:19:48', '3', '123', '33333', '2021-07-24 14:09:18', NULL, NULL);
INSERT INTO `inlibrary` VALUES (173, '2021-07-23 22:21:04', '2', '123', '33333', '2021-07-24 14:09:16', NULL, NULL);
INSERT INTO `inlibrary` VALUES (174, '2021-07-23 22:21:10', '2', '123', '33333', '2021-07-24 14:09:15', NULL, NULL);
INSERT INTO `inlibrary` VALUES (175, '2021-07-23 22:24:20', '2', '123', '33333', '2021-07-24 14:09:04', NULL, NULL);
INSERT INTO `inlibrary` VALUES (176, '2021-07-23 22:24:26', '2', '123', '33333', '2021-07-24 14:09:03', NULL, NULL);
INSERT INTO `inlibrary` VALUES (177, '2021-07-23 22:27:05', '2', '123', '33333', '2021-07-24 14:09:01', NULL, NULL);
INSERT INTO `inlibrary` VALUES (178, '2021-07-23 23:25:13', '2', '123', '33333', '2021-07-24 14:08:59', NULL, NULL);
INSERT INTO `inlibrary` VALUES (179, '2021-07-23 23:27:36', '2', '111', '12138', '2021-07-23 23:27:47', NULL, NULL);
INSERT INTO `inlibrary` VALUES (180, '2021-07-23 23:28:11', '2', '111', '12138', '2021-07-23 23:28:26', NULL, NULL);
INSERT INTO `inlibrary` VALUES (181, '2021-07-24 08:49:22', '2', '111', '12138', '2021-07-24 08:49:38', NULL, NULL);
INSERT INTO `inlibrary` VALUES (182, '2021-07-24 14:08:14', '2', '123', '33333', '2021-07-24 14:08:57', NULL, NULL);
INSERT INTO `inlibrary` VALUES (183, '2021-07-24 14:09:55', '2', '123', '33333', '2021-07-24 21:46:44', NULL, NULL);
INSERT INTO `inlibrary` VALUES (184, '2021-07-24 18:13:10', '2', '888', '88888', '2021-07-24 18:13:34', NULL, NULL);
INSERT INTO `inlibrary` VALUES (185, '2021-07-24 19:02:09', '2', '123', '33333', '2021-07-24 21:46:43', NULL, NULL);
INSERT INTO `inlibrary` VALUES (186, '2021-07-24 19:28:11', '2', '123', '33333', '2021-07-24 21:46:42', NULL, NULL);
INSERT INTO `inlibrary` VALUES (187, '2021-07-24 19:28:38', '2', '123', '33333', '2021-07-24 21:46:39', NULL, NULL);
INSERT INTO `inlibrary` VALUES (188, '2021-07-24 19:37:19', '2', '888', '88888', '2021-07-24 19:39:29', NULL, NULL);
INSERT INTO `inlibrary` VALUES (189, '2021-07-24 21:00:13', '2', '110', '12139', '2021-07-24 21:00:22', NULL, NULL);
INSERT INTO `inlibrary` VALUES (190, '2021-07-24 21:07:54', '2', '111', '12138', '2021-07-24 21:07:58', NULL, NULL);
INSERT INTO `inlibrary` VALUES (191, '2021-07-24 21:29:36', '2', '111', '12138', '2021-07-24 22:06:22', NULL, NULL);
INSERT INTO `inlibrary` VALUES (192, '2021-07-24 22:06:06', '2', '111', '12138', '2021-07-24 22:06:25', NULL, NULL);
INSERT INTO `inlibrary` VALUES (193, '2021-07-24 22:10:22', '2', '111', '12138', '2021-07-24 22:10:33', NULL, NULL);
INSERT INTO `inlibrary` VALUES (194, '2021-07-24 22:19:48', '2', '111', '12138', '2021-07-24 22:19:58', NULL, NULL);
INSERT INTO `inlibrary` VALUES (195, '2021-07-24 22:20:38', '1', '110', '12139', NULL, NULL, NULL);
INSERT INTO `inlibrary` VALUES (196, '2021-07-24 22:27:09', '2', '111', '12138', '2021-07-24 22:27:20', NULL, NULL);
INSERT INTO `inlibrary` VALUES (197, '2021-07-24 22:49:43', '2', '111', '12138', '2021-07-24 22:50:00', NULL, NULL);
INSERT INTO `inlibrary` VALUES (198, '2021-07-25 14:07:22', '2', '117', '99999', '2021-07-25 14:07:43', NULL, NULL);
INSERT INTO `inlibrary` VALUES (199, '2021-07-25 14:09:00', '3', '117', '99999', '2021-07-25 14:09:09', NULL, NULL);
INSERT INTO `inlibrary` VALUES (200, '2021-07-25 14:14:41', '2', '117', '99999', '2021-07-25 14:14:47', NULL, NULL);
INSERT INTO `inlibrary` VALUES (205, '2021-07-27 14:12:36', '2', '111', '12138', '2021-07-27 14:12:41', NULL, NULL);
INSERT INTO `inlibrary` VALUES (206, '2021-07-27 14:12:53', '3', '111', '12138', '2021-07-27 14:12:59', NULL, NULL);
INSERT INTO `inlibrary` VALUES (207, '2021-07-27 16:33:33', '3', '111', '12138', '2021-07-27 16:37:44', NULL, NULL);
INSERT INTO `inlibrary` VALUES (208, '2021-07-27 17:01:30', '3', '111', '12138', '2021-07-27 17:01:56', NULL, NULL);
INSERT INTO `inlibrary` VALUES (209, '2021-07-27 18:37:53', '3', '111', '12138', '2021-07-27 18:38:04', NULL, '太多了');
INSERT INTO `inlibrary` VALUES (210, '2021-07-27 18:42:37', '3', '111', '12138', '2021-07-27 18:43:03', NULL, '太多了');
INSERT INTO `inlibrary` VALUES (211, '2021-07-27 18:43:27', '3', '111', '12138', '2021-07-27 18:43:36', NULL, '太多了');
INSERT INTO `inlibrary` VALUES (212, '2021-07-27 18:48:53', '3', '111', '12138', '2021-07-27 18:49:09', NULL, '不想要');
INSERT INTO `inlibrary` VALUES (213, '2021-07-27 23:15:34', '2', '111', '12138', '2021-07-27 23:15:53', NULL, NULL);
INSERT INTO `inlibrary` VALUES (214, '2021-07-27 23:16:04', '3', '111', '12138', '2021-07-27 23:16:17', NULL, '不想要');
INSERT INTO `inlibrary` VALUES (215, '2021-07-28 15:15:22', '2', '111', '12138', '2021-07-28 15:15:31', NULL, NULL);
INSERT INTO `inlibrary` VALUES (216, '2021-07-28 15:50:52', '2', '212', '12121', '2021-07-28 15:51:06', NULL, NULL);
INSERT INTO `inlibrary` VALUES (217, '2021-07-28 15:52:20', '2', '111', '12138', '2021-07-28 15:52:27', NULL, NULL);
INSERT INTO `inlibrary` VALUES (218, '2021-07-28 15:56:56', '2', '111', '12138', '2021-07-28 15:57:08', NULL, NULL);
INSERT INTO `inlibrary` VALUES (219, '2021-07-28 15:57:26', '3', '111', '12138', '2021-07-28 15:57:37', NULL, '太多了');
INSERT INTO `inlibrary` VALUES (220, '2021-07-28 15:58:01', '2', '111', '12138', '2021-07-28 15:58:05', NULL, NULL);
INSERT INTO `inlibrary` VALUES (221, '2021-07-28 19:04:34', '2', '117', '41414', '2021-07-28 19:05:26', NULL, NULL);
INSERT INTO `inlibrary` VALUES (222, '2021-07-28 19:06:05', '3', '117', '41414', '2021-07-28 19:06:19', NULL, '不想要');
INSERT INTO `inlibrary` VALUES (223, '2021-07-28 22:38:46', '2', '121', '36363', '2021-07-28 22:39:01', NULL, NULL);
INSERT INTO `inlibrary` VALUES (224, '2021-07-29 16:24:45', '2', '111', '12138', '2021-07-29 16:24:59', NULL, NULL);
INSERT INTO `inlibrary` VALUES (225, '2021-12-26 21:51:48', '3', '111', '12138', '2021-12-26 21:52:04', NULL, '不想要');
INSERT INTO `inlibrary` VALUES (226, '2021-12-26 21:52:12', '2', '111', '12138', '2021-12-26 21:52:18', NULL, NULL);

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `invenid` int(11) NOT NULL AUTO_INCREMENT COMMENT '盘点编号',
  `inventime` datetime(0) NULL DEFAULT NULL COMMENT '盘点时间',
  `invenstaffid` int(11) NULL DEFAULT NULL COMMENT '盘点员id',
  `examtime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `examstaffid` int(11) NULL DEFAULT NULL COMMENT '审核员id',
  `branchid` int(11) NULL DEFAULT NULL COMMENT '所属分店',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驳回描述',
  `state` int(11) NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`invenid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (5, '2021-07-19 23:36:01', 111, '2021-07-19 23:36:18', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (6, '2021-07-19 23:37:58', 111, '2021-07-19 23:38:09', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (7, '2021-07-19 23:40:28', 111, '2021-07-19 23:40:49', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (8, '2021-07-19 23:47:05', 111, '2021-07-19 23:47:21', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (9, '2021-07-22 20:30:20', 111, '2021-07-22 20:31:09', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (10, '2021-07-23 08:31:07', 111, '2021-07-23 08:50:25', 111, 12138, '不想', 3);
INSERT INTO `inventory` VALUES (11, '2021-07-23 08:51:53', 111, '2021-07-23 08:52:34', 111, 12138, '盘点有误，请重新检查！', 3);
INSERT INTO `inventory` VALUES (12, '2021-07-23 10:30:32', 111, '2021-07-23 10:30:49', 111, 12138, '不想', 3);
INSERT INTO `inventory` VALUES (13, '2021-07-23 10:47:53', 111, '2021-07-23 13:29:18', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (14, '2021-07-23 13:22:00', 111, '2021-07-23 13:22:14', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (15, '2021-07-23 13:44:35', 123, '2021-07-23 13:44:45', 123, 33333, NULL, 2);
INSERT INTO `inventory` VALUES (16, '2021-07-23 13:45:26', 123, '2021-07-23 13:46:08', 123, 33333, '数量错误', 3);
INSERT INTO `inventory` VALUES (17, '2021-07-25 09:05:31', 111, '2021-07-25 09:13:25', 111, 12138, '有误', 3);
INSERT INTO `inventory` VALUES (18, '2021-07-25 09:43:22', 110, '2021-07-25 09:43:38', 110, 12139, NULL, 2);
INSERT INTO `inventory` VALUES (19, '2021-07-25 10:10:10', 111, '2021-07-26 20:11:17', 111, 12138, '法国烦烦烦', 3);
INSERT INTO `inventory` VALUES (20, '2021-07-25 14:39:46', 117, '2021-07-25 14:40:49', 117, 99999, NULL, 2);
INSERT INTO `inventory` VALUES (21, '2021-07-26 09:31:59', 123, '2021-07-26 09:32:05', 123, 33333, NULL, 2);
INSERT INTO `inventory` VALUES (22, '2021-07-26 11:21:26', 110, '2021-07-26 11:21:39', 110, 12139, '1111111', 3);
INSERT INTO `inventory` VALUES (23, '2021-07-26 20:10:12', 110, '2021-07-26 20:10:23', 110, 12139, '耳朵特人 ', 3);
INSERT INTO `inventory` VALUES (24, '2021-07-26 21:25:20', 110, NULL, NULL, 12139, NULL, 2);
INSERT INTO `inventory` VALUES (25, '2021-07-28 19:15:18', 117, '2021-07-13 19:16:15', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (26, '2021-07-28 19:16:05', 117, '2021-07-28 19:16:17', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (27, '2021-07-28 19:16:56', 117, '2021-07-28 19:17:19', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (28, '2021-07-28 19:17:07', 117, '2021-07-28 19:17:25', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (29, '2021-07-28 19:17:55', 117, '2021-07-28 19:18:09', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (30, '2021-07-28 19:18:02', 117, '2021-07-28 19:18:26', 117, 41414, NULL, 2);
INSERT INTO `inventory` VALUES (31, '2021-07-28 20:38:23', 111, '2021-07-28 20:45:17', 111, 12138, '无', 3);
INSERT INTO `inventory` VALUES (32, '2021-07-28 20:44:57', 111, '2021-07-28 20:45:29', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (33, '2021-07-28 20:48:40', 111, '2021-07-28 23:14:46', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (34, '2021-07-28 22:45:32', 121, '2021-07-28 22:46:27', 121, 36363, NULL, 2);
INSERT INTO `inventory` VALUES (35, '2021-07-29 16:30:23', 111, '2021-07-29 16:30:38', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (36, '2021-12-14 20:57:48', 111, '2021-12-14 20:58:38', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (37, '2021-12-14 20:59:12', 111, '2021-12-14 20:59:21', 111, 12138, 'aa', 3);
INSERT INTO `inventory` VALUES (38, '2021-12-20 16:28:56', 111, NULL, NULL, 12138, '不是很行', 2);
INSERT INTO `inventory` VALUES (39, '2021-12-20 16:48:02', 111, NULL, NULL, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (40, '2021-12-20 16:48:04', 111, NULL, NULL, 12138, '不行', 2);
INSERT INTO `inventory` VALUES (41, '2021-12-20 16:49:25', 111, NULL, NULL, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (42, '2021-12-20 16:51:10', 111, NULL, NULL, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (43, '2021-12-20 20:50:45', 111, NULL, NULL, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (44, '2021-12-20 21:04:04', 111, NULL, NULL, 12138, '不行', 3);
INSERT INTO `inventory` VALUES (45, '2021-12-20 21:04:35', 111, NULL, NULL, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (46, '2021-12-20 21:09:39', 111, '2021-12-20 21:24:32', NULL, 12138, '123423', 3);
INSERT INTO `inventory` VALUES (47, '2021-12-20 21:24:55', 111, '2021-12-20 21:25:09', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (48, '2021-12-20 21:28:21', 111, '2021-12-20 21:28:37', 111, 12138, '不要', 3);
INSERT INTO `inventory` VALUES (49, '2021-12-26 21:56:23', 111, '2021-12-26 21:57:06', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (50, '2021-12-26 21:57:17', 111, '2021-12-26 22:01:46', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (51, '2021-12-26 22:02:13', 111, '2021-12-26 22:02:29', 111, 12138, '555', 3);
INSERT INTO `inventory` VALUES (52, '2022-01-12 21:56:15', 111, '2022-01-12 21:56:35', 111, 12138, NULL, 2);
INSERT INTO `inventory` VALUES (53, '2022-02-10 17:00:47', 111, '2022-02-10 17:00:49', 111, 12138, NULL, 2);

-- ----------------------------
-- Table structure for inventory_goods
-- ----------------------------
DROP TABLE IF EXISTS `inventory_goods`;
CREATE TABLE `inventory_goods`  (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '报损编号',
  `invenid` int(11) NULL DEFAULT NULL COMMENT '盘点编号',
  `goodsid` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `invennum` int(11) NULL DEFAULT NULL COMMENT '盘点数量',
  `lossnum` int(11) NULL DEFAULT NULL COMMENT '报损数量',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory_goods
-- ----------------------------
INSERT INTO `inventory_goods` VALUES (3, 4, 1, 440, 10);
INSERT INTO `inventory_goods` VALUES (4, 4, 2, 445, 5);
INSERT INTO `inventory_goods` VALUES (5, 5, 3, 610, 10);
INSERT INTO `inventory_goods` VALUES (6, 5, 4, 475, 5);
INSERT INTO `inventory_goods` VALUES (7, 6, 3, 618, 2);
INSERT INTO `inventory_goods` VALUES (8, 6, 4, 479, 1);
INSERT INTO `inventory_goods` VALUES (9, 6, 5, 740, 5);
INSERT INTO `inventory_goods` VALUES (10, 7, 3, 610, 10);
INSERT INTO `inventory_goods` VALUES (11, 7, 4, 475, 5);
INSERT INTO `inventory_goods` VALUES (12, 8, 4, 470, 5);
INSERT INTO `inventory_goods` VALUES (13, 8, 5, 740, 5);
INSERT INTO `inventory_goods` VALUES (14, 9, 1, 14, 1);
INSERT INTO `inventory_goods` VALUES (15, 10, 2, 14, 1);
INSERT INTO `inventory_goods` VALUES (16, 11, 1, 0, 14);
INSERT INTO `inventory_goods` VALUES (17, 12, 1, 13, 1);
INSERT INTO `inventory_goods` VALUES (18, 13, 1, 13, 1);
INSERT INTO `inventory_goods` VALUES (19, 14, 5, 16, 1);
INSERT INTO `inventory_goods` VALUES (20, 15, 1, 15, 2);
INSERT INTO `inventory_goods` VALUES (21, 16, 1, 1000, 0);
INSERT INTO `inventory_goods` VALUES (22, 17, 1, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (23, 18, 9, 20, 1);
INSERT INTO `inventory_goods` VALUES (24, 19, 1, 480, 10);
INSERT INTO `inventory_goods` VALUES (25, 20, 1, 85, 3);
INSERT INTO `inventory_goods` VALUES (26, 20, 2, 90, 0);
INSERT INTO `inventory_goods` VALUES (27, 20, 3, 89, 1);
INSERT INTO `inventory_goods` VALUES (28, 21, 1, 260, 2);
INSERT INTO `inventory_goods` VALUES (29, 21, 2, 120, 8);
INSERT INTO `inventory_goods` VALUES (30, 22, 1, 19, 1);
INSERT INTO `inventory_goods` VALUES (31, 22, 24, 9, 1);
INSERT INTO `inventory_goods` VALUES (32, 23, 1, 19, 1);
INSERT INTO `inventory_goods` VALUES (33, 24, 1, 19, 1);
INSERT INTO `inventory_goods` VALUES (34, 25, 1, 40, 5);
INSERT INTO `inventory_goods` VALUES (35, 25, 2, 98, 2);
INSERT INTO `inventory_goods` VALUES (36, 26, 1, 45, 0);
INSERT INTO `inventory_goods` VALUES (37, 26, 2, 100, 0);
INSERT INTO `inventory_goods` VALUES (38, 27, 1, 39, 1);
INSERT INTO `inventory_goods` VALUES (39, 28, 1, 40, 0);
INSERT INTO `inventory_goods` VALUES (40, 29, 1, 38, 1);
INSERT INTO `inventory_goods` VALUES (41, 30, 1, 37, 2);
INSERT INTO `inventory_goods` VALUES (42, 31, 1, 545, 5);
INSERT INTO `inventory_goods` VALUES (43, 32, 1, 540, 10);
INSERT INTO `inventory_goods` VALUES (44, 33, 1, 530, 10);
INSERT INTO `inventory_goods` VALUES (45, 34, 1, 19, 1);
INSERT INTO `inventory_goods` VALUES (46, 34, 2, 98, 2);
INSERT INTO `inventory_goods` VALUES (47, 35, 1, 570, 7);
INSERT INTO `inventory_goods` VALUES (48, 35, 2, 395, 5);
INSERT INTO `inventory_goods` VALUES (49, 36, 1, 100, 470);
INSERT INTO `inventory_goods` VALUES (50, 37, 1, 30, 540);
INSERT INTO `inventory_goods` VALUES (51, 43, 62, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (52, 43, 68, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (53, 44, 89, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (54, 45, 62, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (55, 46, 62, NULL, NULL);
INSERT INTO `inventory_goods` VALUES (56, 47, 2, 163, NULL);
INSERT INTO `inventory_goods` VALUES (57, 48, 1, 11, 89);
INSERT INTO `inventory_goods` VALUES (58, 48, 2, 333, 62);
INSERT INTO `inventory_goods` VALUES (59, 48, 3, 222, 68);
INSERT INTO `inventory_goods` VALUES (60, 49, 1, 55, 45);
INSERT INTO `inventory_goods` VALUES (61, 50, 2, 55, 340);
INSERT INTO `inventory_goods` VALUES (62, 51, 1, 55, 45);
INSERT INTO `inventory_goods` VALUES (63, 52, 1, 99, 1);
INSERT INTO `inventory_goods` VALUES (64, 53, 1, 98, 1);

-- ----------------------------
-- Table structure for keyboardcolor
-- ----------------------------
DROP TABLE IF EXISTS `keyboardcolor`;
CREATE TABLE `keyboardcolor`  (
  `keyboardcolorid` int(11) NOT NULL AUTO_INCREMENT COMMENT '键盘颜色id',
  `keyboardcolorname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键盘颜色',
  PRIMARY KEY (`keyboardcolorid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of keyboardcolor
-- ----------------------------
INSERT INTO `keyboardcolor` VALUES (1, '黑灰色');
INSERT INTO `keyboardcolor` VALUES (2, '灰黑色');
INSERT INTO `keyboardcolor` VALUES (3, '白粉色');
INSERT INTO `keyboardcolor` VALUES (4, '粉白色');
INSERT INTO `keyboardcolor` VALUES (5, '桃桃气泡水');
INSERT INTO `keyboardcolor` VALUES (6, '浓情巧克力');
INSERT INTO `keyboardcolor` VALUES (7, '龙舌兰日出');

-- ----------------------------
-- Table structure for keycap
-- ----------------------------
DROP TABLE IF EXISTS `keycap`;
CREATE TABLE `keycap`  (
  `keycapid` int(11) NOT NULL AUTO_INCREMENT COMMENT '键帽材质id',
  `keycapname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '键帽材质名称',
  PRIMARY KEY (`keycapid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of keycap
-- ----------------------------
INSERT INTO `keycap` VALUES (1, 'ABS双色注塑');
INSERT INTO `keycap` VALUES (2, 'PBT双色注塑');

-- ----------------------------
-- Table structure for logaspect
-- ----------------------------
DROP TABLE IF EXISTS `logaspect`;
CREATE TABLE `logaspect`  (
  `Logid` int(50) NOT NULL AUTO_INCREMENT,
  `Mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Logparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Logid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logaspect
-- ----------------------------
INSERT INTO `logaspect` VALUES (1, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (2, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (3, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (4, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (5, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (6, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (7, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (8, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (9, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (10, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (11, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (12, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (13, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (14, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (15, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (16, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (17, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (18, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (19, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (20, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (21, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (22, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (23, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (24, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (25, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (26, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (27, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (28, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (29, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (30, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (31, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (32, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (33, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (34, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (35, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (36, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (37, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (38, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (39, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (40, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (41, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (42, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (43, 'getRoleDeptandTime', '小张', '[]');
INSERT INTO `logaspect` VALUES (44, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (45, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (46, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (47, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (48, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (49, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (50, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (51, 'getAllStaffname', '小张', '[]');
INSERT INTO `logaspect` VALUES (52, 'getAllRoleName', '小张', '[]');
INSERT INTO `logaspect` VALUES (53, 'findStaffEmp', '小张', '[1, 5, null, null, null]');
INSERT INTO `logaspect` VALUES (54, 'listByLeaveStaff', '小张', '[1, 5, null, null]');
INSERT INTO `logaspect` VALUES (55, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (56, 'PassApply', '小张', '[1, 5, null, null]');
INSERT INTO `logaspect` VALUES (57, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (58, 'selectallbycondition', '小张', '[1, 2, null]');
INSERT INTO `logaspect` VALUES (59, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (60, 'selectallbycondition', '小张', '[1, 5, null]');
INSERT INTO `logaspect` VALUES (61, 'findDepartment', '小张', '[1, 5]');
INSERT INTO `logaspect` VALUES (62, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (63, 'getAllRolename', '小张', '[]');
INSERT INTO `logaspect` VALUES (64, 'getAllStaffname', '小张', '[]');
INSERT INTO `logaspect` VALUES (65, 'branchallmsg', '小张', '[1, 5, null]');
INSERT INTO `logaspect` VALUES (66, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (67, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (68, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (69, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (70, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (71, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (72, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (73, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (74, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (75, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (76, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (77, 'getAllRolename', '小张', '[]');
INSERT INTO `logaspect` VALUES (78, 'getAllStaffname', '小张', '[]');
INSERT INTO `logaspect` VALUES (79, 'branchallmsg', '小张', '[1, 5, null]');
INSERT INTO `logaspect` VALUES (80, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (81, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (82, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (83, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (84, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (85, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (86, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (87, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (88, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (89, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (90, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (91, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (92, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (93, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (94, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (95, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (96, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (97, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (98, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (99, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (100, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (101, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (102, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (103, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (104, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (105, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (106, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (107, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (108, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (109, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (110, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (111, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (112, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (113, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (114, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (115, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (116, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (117, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (118, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (119, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (120, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (121, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (122, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (123, 'getAllbacklightcolorname', '小张', '[]');
INSERT INTO `logaspect` VALUES (124, 'getAllkeycapname', '小张', '[]');
INSERT INTO `logaspect` VALUES (125, 'getAllshaftchoosename', '小张', '[]');
INSERT INTO `logaspect` VALUES (126, 'showAllshaftchoose', '小张', '[1, 10]');
INSERT INTO `logaspect` VALUES (127, 'showAllkeycapname', '小张', '[1, 10, null, null]');
INSERT INTO `logaspect` VALUES (128, 'showAllbacklightcolor', '小张', '[1, 10]');
INSERT INTO `logaspect` VALUES (129, 'findByStaffnamenameAndPassword', '小张', '[小张, 111]');
INSERT INTO `logaspect` VALUES (130, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (131, 'findByUserRid', '小张', '[]');
INSERT INTO `logaspect` VALUES (132, 'getbranchcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (133, 'getstaffcounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (134, 'getbranchnamebybranchid', '小张', '[]');
INSERT INTO `logaspect` VALUES (135, 'getgoodscounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (136, 'getCounts', '小张', '[]');
INSERT INTO `logaspect` VALUES (137, 'getGoodsSpriceAndCprice', '小张', '[]');
INSERT INTO `logaspect` VALUES (138, 'selectgoodsnum', '小张', '[]');
INSERT INTO `logaspect` VALUES (139, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (140, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (141, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (142, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (143, 'getAllBranch', '小张', '[]');
INSERT INTO `logaspect` VALUES (144, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (145, 'getAllRoleName', '小张', '[]');
INSERT INTO `logaspect` VALUES (146, 'getAllDeptName', '小张', '[]');
INSERT INTO `logaspect` VALUES (147, 'getAllStaffname', '小张', '[]');
INSERT INTO `logaspect` VALUES (148, 'findStaffEmp', '小张', '[1, 5, null, null, null]');
INSERT INTO `logaspect` VALUES (149, 'selectallrole', '小张', '[1, 5]');
INSERT INTO `logaspect` VALUES (150, 'getallmsg', '小张', '[]');
INSERT INTO `logaspect` VALUES (151, 'getAllRolename', '小张', '[]');
INSERT INTO `logaspect` VALUES (152, 'getAllRolename', '小张', '[]');
INSERT INTO `logaspect` VALUES (153, 'getmidbyroleid', '小张', '[1]');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名',
  `murl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单跳转页面',
  `mpid` int(11) NULL DEFAULT NULL COMMENT '父id',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '店铺管理', 'toKKK', 0, 'el-icon-s-shop');
INSERT INTO `menu` VALUES (2, '店铺信息', 'toStore', 1, NULL);
INSERT INTO `menu` VALUES (3, '员工管理', 'toKKK', 0, 'el-icon-user');
INSERT INTO `menu` VALUES (4, '员工信息', 'toStaff', 3, NULL);
INSERT INTO `menu` VALUES (5, '离职员工', 'toQuitStaff', 3, NULL);
INSERT INTO `menu` VALUES (6, '部门管理', 'toKKK', 0, 'el-icon-office-building');
INSERT INTO `menu` VALUES (7, '部门信息', 'toDept', 6, NULL);
INSERT INTO `menu` VALUES (8, '商品管理', 'toKKK', 0, 'el-icon-goods');
INSERT INTO `menu` VALUES (9, '商品信息', 'toGoods', 8, NULL);
INSERT INTO `menu` VALUES (10, '权限管理', 'toKKK', 0, 'el-icon-help');
INSERT INTO `menu` VALUES (11, '角色管理', 'toRole', 10, NULL);
INSERT INTO `menu` VALUES (12, '入库管理', ' toKKK', 0, 'el-icon-s-unfold');
INSERT INTO `menu` VALUES (13, '入库信息', 'toEntry', 12, NULL);
INSERT INTO `menu` VALUES (14, '出库管理', 'toKKK', 0, 'el-icon-s-fold');
INSERT INTO `menu` VALUES (15, '添加出库', 'toAddOutLibrary', 14, NULL);
INSERT INTO `menu` VALUES (16, '出库审核', 'toOutLibraryEx', 14, NULL);
INSERT INTO `menu` VALUES (17, '出库信息', 'toOutLibraryInformation', 14, NULL);
INSERT INTO `menu` VALUES (18, '员工审核', 'toStaffEx', 3, NULL);
INSERT INTO `menu` VALUES (19, '平调审核', 'toTransferEx', 14, NULL);
INSERT INTO `menu` VALUES (20, '平调信息', 'toTransferInformation', 14, NULL);
INSERT INTO `menu` VALUES (21, '盘点管理', 'toKKK', 0, 'el-icon-s-order');
INSERT INTO `menu` VALUES (22, '添加盘点', 'toAddInventory', 21, NULL);
INSERT INTO `menu` VALUES (23, '盘点审核', 'toInventoryEx', 21, NULL);
INSERT INTO `menu` VALUES (24, '盘点信息', 'toInventoryInformation', 21, NULL);
INSERT INTO `menu` VALUES (25, '报损信息', 'toFrmLoss', 21, NULL);
INSERT INTO `menu` VALUES (26, '入库审核', 'toAudit', 12, NULL);
INSERT INTO `menu` VALUES (27, '类型信息', 'toGoodsType', 8, NULL);
INSERT INTO `menu` VALUES (28, '调动信息', 'toTransfer', 3, NULL);
INSERT INTO `menu` VALUES (29, '统计管理', 'toKKK', 0, 'el-icon-data-line');
INSERT INTO `menu` VALUES (30, '统计信息', 'toStatistics', 29, NULL);

-- ----------------------------
-- Table structure for outlibrary
-- ----------------------------
DROP TABLE IF EXISTS `outlibrary`;
CREATE TABLE `outlibrary`  (
  `cid` int(25) NOT NULL AUTO_INCREMENT COMMENT '出库编号',
  `outstaffid` int(25) NULL DEFAULT NULL COMMENT '出库人',
  `outtime` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `examstaffid` int(25) NULL DEFAULT NULL COMMENT '审核人',
  `examtime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `outmethod` int(25) NULL DEFAULT NULL COMMENT '出库操作1零售，2批量，3平调',
  `examstate` int(25) NULL DEFAULT NULL COMMENT '审核状态1待审核，2通过，3驳回',
  `branchid` int(25) NULL DEFAULT NULL COMMENT '所属分店',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驳回备注',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of outlibrary
-- ----------------------------
INSERT INTO `outlibrary` VALUES (14, 111, '2021-07-17 20:25:48', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (15, 111, '2021-07-17 20:49:14', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (16, 111, '2021-07-17 20:53:19', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (17, 111, '2021-07-17 20:55:42', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (18, 111, '2021-07-17 21:08:06', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (19, 111, '2021-07-17 21:08:06', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (20, 111, '2021-07-17 21:08:07', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (21, 111, '2021-07-17 21:08:22', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (22, 111, '2021-07-17 21:08:23', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (23, 111, '2021-07-17 21:08:31', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (24, 111, '2021-07-17 21:08:36', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (25, 111, '2021-07-17 21:15:06', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (26, 111, '2021-07-17 21:17:12', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (27, 111, '2021-07-17 21:43:49', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (28, 111, '2021-07-18 11:14:03', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (29, 111, '2021-07-18 11:18:32', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (30, 111, '2021-07-18 11:23:54', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (31, 111, '2021-07-18 14:40:52', 111, '2021-07-18 15:32:32', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (32, 111, '2021-07-18 15:37:55', 111, '2021-07-18 15:38:16', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (33, 111, '2021-07-18 15:40:39', 111, '2021-07-18 15:40:59', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (34, 111, '2021-07-18 15:43:19', 111, '2021-07-18 15:43:56', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (35, 111, '2021-07-18 15:44:45', 111, '2021-07-18 15:44:55', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (36, 111, '2021-07-18 16:20:05', 111, '2021-07-18 16:20:40', 2, 3, 12138, '心情不好');
INSERT INTO `outlibrary` VALUES (37, 111, '2021-07-18 16:39:41', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (38, 111, '2021-07-18 16:51:56', 111, '2021-07-18 16:52:56', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (39, 111, '2021-07-18 17:18:37', 111, '2021-07-18 17:19:44', 2, 3, 12138, '不想让出');
INSERT INTO `outlibrary` VALUES (40, 111, '2021-07-18 19:29:08', 111, '2021-07-18 19:30:43', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (42, 123, '2021-07-18 21:19:37', NULL, NULL, 1, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (43, 123, '2021-07-18 21:19:54', 123, '2021-07-18 21:20:06', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (44, 123, '2021-07-18 21:20:35', 123, '2021-07-18 21:20:43', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (46, 111, '2021-07-18 21:39:54', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (47, 111, '2021-07-19 15:11:16', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (48, 111, '2021-07-19 20:39:41', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (49, 111, '2021-07-19 20:41:11', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (50, 111, '2021-07-19 20:41:22', 111, '2021-07-19 20:41:39', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (51, 111, '2021-07-20 11:07:14', 111, '2021-07-21 15:10:45', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (52, 111, '2021-07-21 14:58:43', 111, '2021-07-21 14:59:10', 2, 3, 12138, '心情不好！');
INSERT INTO `outlibrary` VALUES (53, 111, '2021-07-21 15:23:51', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (54, 111, '2021-07-21 15:25:15', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (55, 111, '2021-07-21 15:25:20', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (56, 111, '2021-07-21 15:25:29', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (57, 111, '2021-07-23 19:19:30', 111, '2021-07-23 19:22:50', 2, 3, 12138, '不出不出');
INSERT INTO `outlibrary` VALUES (58, 111, '2021-07-24 15:02:55', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (59, 111, '2021-07-24 15:02:56', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (60, 111, '2021-07-24 15:03:15', NULL, NULL, 1, 2, 44444, NULL);
INSERT INTO `outlibrary` VALUES (61, 888, '2021-07-24 18:18:44', NULL, NULL, 1, 2, 88888, NULL);
INSERT INTO `outlibrary` VALUES (62, 888, '2021-07-24 18:19:14', 888, '2021-07-24 18:19:25', 2, 2, 88888, NULL);
INSERT INTO `outlibrary` VALUES (63, 888, '2021-07-24 18:20:43', 888, '2021-07-24 18:21:24', 2, 3, 88888, '不想让出');
INSERT INTO `outlibrary` VALUES (64, 111, '2021-07-24 19:31:08', 111, '2021-07-24 19:31:25', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (65, 111, '2021-07-24 23:12:56', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (66, 111, '2021-07-24 23:15:07', 111, '2021-07-24 23:15:12', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (67, 111, '2021-07-24 23:18:20', NULL, NULL, 2, 1, 33333, NULL);
INSERT INTO `outlibrary` VALUES (68, 111, '2021-07-24 23:22:47', 111, '2021-07-24 23:23:20', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (69, 111, '2021-07-24 23:23:29', 111, '2021-07-25 00:20:01', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (70, 111, '2021-07-25 00:19:41', 111, '2021-07-25 00:20:10', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (71, 111, '2021-07-25 00:19:48', 111, '2021-07-25 00:20:26', 2, 3, 12138, '库存不足');
INSERT INTO `outlibrary` VALUES (72, 111, '2021-07-25 00:20:42', 111, '2021-07-25 00:21:05', 2, 3, 12138, '库存不足');
INSERT INTO `outlibrary` VALUES (73, 111, '2021-07-25 00:21:16', 111, '2021-07-25 00:21:41', 2, 3, 12138, '库存不足！！！');
INSERT INTO `outlibrary` VALUES (74, 111, '2021-07-25 08:50:35', 111, '2021-07-25 09:01:16', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (75, 111, '2021-07-25 09:01:39', 111, '2021-07-25 09:02:32', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (76, 110, '2021-07-25 09:17:07', 110, '2021-07-25 09:17:15', 2, 2, 12139, NULL);
INSERT INTO `outlibrary` VALUES (77, 117, '2021-07-25 14:11:40', NULL, NULL, 1, 2, 99999, NULL);
INSERT INTO `outlibrary` VALUES (78, 117, '2021-07-25 14:11:58', 117, '2021-07-25 14:12:23', 2, 2, 99999, NULL);
INSERT INTO `outlibrary` VALUES (79, 117, '2021-07-25 14:12:38', 117, '2021-07-25 14:13:36', 2, 3, 99999, '库存不足');
INSERT INTO `outlibrary` VALUES (80, 117, '2021-07-25 14:13:10', 117, '2021-07-25 14:13:16', 2, 2, 99999, NULL);
INSERT INTO `outlibrary` VALUES (81, 111, '2021-07-25 16:27:45', 111, '2021-07-26 10:13:59', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (82, 111, '2021-07-26 10:13:50', 111, '2021-07-26 10:13:58', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (83, 111, '2021-07-26 20:02:59', NULL, NULL, 1, 2, 99999, NULL);
INSERT INTO `outlibrary` VALUES (84, 111, '2021-07-26 20:04:39', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (85, 111, '2021-07-27 09:54:42', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (86, 111, '2021-07-27 09:55:30', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (87, 111, '2021-07-27 14:43:29', 111, '2021-07-27 14:43:45', 2, 3, 12138, '111');
INSERT INTO `outlibrary` VALUES (88, 111, '2021-07-27 16:20:46', 111, '2021-07-27 21:33:19', 2, 3, 12138, '库存不足！');
INSERT INTO `outlibrary` VALUES (89, 111, '2021-07-27 19:01:53', 111, '2021-07-27 19:02:02', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (90, 123, '2021-07-28 09:02:34', NULL, NULL, 1, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (91, 123, '2021-07-28 09:02:44', 123, '2021-07-28 09:03:02', 2, 3, 33333, '太多');
INSERT INTO `outlibrary` VALUES (92, 111, '2021-07-28 09:04:11', 111, '2021-07-28 09:04:20', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (93, 123, '2021-07-28 09:57:41', NULL, NULL, 1, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (94, 123, '2021-07-28 09:57:58', NULL, NULL, 1, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (95, 123, '2021-07-28 09:58:19', 123, '2021-07-28 09:58:34', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (96, 123, '2021-07-28 09:58:25', 123, '2021-07-28 09:58:37', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (97, 123, '2021-07-28 09:59:19', 123, '2021-07-28 09:59:41', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (98, 123, '2021-07-28 09:59:28', 123, '2021-07-28 09:59:47', 2, 2, 33333, NULL);
INSERT INTO `outlibrary` VALUES (99, 123, '2021-07-28 10:00:11', 123, '2021-07-28 10:00:29', 2, 3, 33333, '库存不足');
INSERT INTO `outlibrary` VALUES (100, 111, '2021-07-28 10:02:35', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (101, 111, '2021-07-28 10:03:51', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (102, 111, '2021-07-28 10:03:55', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (103, 111, '2021-07-28 15:14:11', 111, '2021-07-28 15:14:16', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (104, 111, '2021-07-28 15:17:13', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (105, 111, '2021-07-28 15:23:29', 111, '2021-07-28 15:23:55', 2, 3, 12138, '库存不足');
INSERT INTO `outlibrary` VALUES (106, 212, '2021-07-28 16:03:40', 212, '2021-07-28 16:03:44', 2, 2, 12121, NULL);
INSERT INTO `outlibrary` VALUES (107, 117, '2021-07-28 19:08:11', NULL, NULL, 1, 2, 41414, NULL);
INSERT INTO `outlibrary` VALUES (108, 117, '2021-07-28 19:08:48', 117, '2021-07-28 19:09:11', 2, 2, 41414, NULL);
INSERT INTO `outlibrary` VALUES (109, 117, '2021-07-28 19:08:54', 117, '2021-07-28 19:09:31', 2, 3, 41414, '库存不足');
INSERT INTO `outlibrary` VALUES (110, 117, '2021-07-28 19:09:42', NULL, NULL, 1, 2, 41414, NULL);
INSERT INTO `outlibrary` VALUES (111, 111, '2021-07-28 21:40:11', 111, '2021-07-28 21:40:25', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (112, 121, '2021-07-28 22:40:30', NULL, NULL, 1, 2, 36363, NULL);
INSERT INTO `outlibrary` VALUES (113, 121, '2021-07-28 22:41:27', 121, '2021-07-28 22:41:47', 2, 2, 36363, NULL);
INSERT INTO `outlibrary` VALUES (114, 121, '2021-07-28 22:42:01', 121, '2021-07-28 22:42:15', 2, 2, 36363, NULL);
INSERT INTO `outlibrary` VALUES (115, 121, '2021-07-28 22:42:06', 121, '2021-07-28 22:42:29', 2, 3, 36363, '库存不足');
INSERT INTO `outlibrary` VALUES (116, 111, '2021-07-29 16:26:32', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (117, 111, '2021-07-29 16:27:04', 111, '2021-07-29 16:27:16', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (118, 111, '2021-07-29 16:27:12', 111, '2021-07-29 16:28:38', 2, 3, 12138, '库存不足');
INSERT INTO `outlibrary` VALUES (119, 111, '2021-12-14 21:00:12', 111, '2021-12-14 21:00:49', 2, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (120, 111, '2021-12-26 21:53:03', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (121, 111, '2021-12-26 21:53:05', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (122, 111, '2021-12-26 21:53:06', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (123, 111, '2021-12-26 21:53:22', NULL, NULL, 1, 2, 12138, NULL);
INSERT INTO `outlibrary` VALUES (124, 111, '2021-12-26 21:54:59', 111, '2021-12-26 21:55:08', 2, 2, 12138, NULL);

-- ----------------------------
-- Table structure for outlibrary_goods
-- ----------------------------
DROP TABLE IF EXISTS `outlibrary_goods`;
CREATE TABLE `outlibrary_goods`  (
  `xid` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cid` int(20) NULL DEFAULT NULL COMMENT '出库编号',
  `goodsid` int(20) NULL DEFAULT NULL COMMENT '商品id',
  `num` int(20) NULL DEFAULT NULL COMMENT '出库数量',
  `total` double(255, 0) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`xid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of outlibrary_goods
-- ----------------------------
INSERT INTO `outlibrary_goods` VALUES (1, 14, 4, 1, 399);
INSERT INTO `outlibrary_goods` VALUES (2, 15, 5, 1, 419);
INSERT INTO `outlibrary_goods` VALUES (3, 16, 7, 1, 359);
INSERT INTO `outlibrary_goods` VALUES (4, 17, 8, 1, 299);
INSERT INTO `outlibrary_goods` VALUES (5, 18, 9, 1, 309);
INSERT INTO `outlibrary_goods` VALUES (6, 19, 8, 1, 299);
INSERT INTO `outlibrary_goods` VALUES (7, 20, 7, 1, 359);
INSERT INTO `outlibrary_goods` VALUES (8, 21, 6, 1, 459);
INSERT INTO `outlibrary_goods` VALUES (9, 22, 6, 1, 459);
INSERT INTO `outlibrary_goods` VALUES (10, 23, 6, 1, 459);
INSERT INTO `outlibrary_goods` VALUES (11, 24, 7, 1, 359);
INSERT INTO `outlibrary_goods` VALUES (12, 25, 4, 1, 399);
INSERT INTO `outlibrary_goods` VALUES (13, 26, 4, 1, 399);
INSERT INTO `outlibrary_goods` VALUES (14, 27, 5, 1, 419);
INSERT INTO `outlibrary_goods` VALUES (15, 28, 4, 3, 1197);
INSERT INTO `outlibrary_goods` VALUES (16, 29, 1, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (17, 30, 1, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (18, 31, 1, 8, 1832);
INSERT INTO `outlibrary_goods` VALUES (19, 31, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (20, 32, 3, 5, 1345);
INSERT INTO `outlibrary_goods` VALUES (21, 32, 4, 5, 1995);
INSERT INTO `outlibrary_goods` VALUES (22, 33, 3, 5, 1345);
INSERT INTO `outlibrary_goods` VALUES (23, 33, 4, 5, 1995);
INSERT INTO `outlibrary_goods` VALUES (24, 34, 4, 5, 1995);
INSERT INTO `outlibrary_goods` VALUES (25, 34, 5, 5, 2095);
INSERT INTO `outlibrary_goods` VALUES (26, 35, 1, 8, 1832);
INSERT INTO `outlibrary_goods` VALUES (27, 35, 3, 5, 1345);
INSERT INTO `outlibrary_goods` VALUES (28, 35, 5, 7, 2933);
INSERT INTO `outlibrary_goods` VALUES (29, 36, 6, 4, 1836);
INSERT INTO `outlibrary_goods` VALUES (30, 36, 7, 10, 3590);
INSERT INTO `outlibrary_goods` VALUES (31, 37, 1, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (32, 38, 6, 4, 1836);
INSERT INTO `outlibrary_goods` VALUES (33, 38, 7, 10, 3590);
INSERT INTO `outlibrary_goods` VALUES (34, 39, 8, 2, 598);
INSERT INTO `outlibrary_goods` VALUES (35, 39, 9, 5, 1545);
INSERT INTO `outlibrary_goods` VALUES (36, 40, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (37, 40, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (38, 3, 4, 5, 1995);
INSERT INTO `outlibrary_goods` VALUES (39, 3, 5, 10, 4190);
INSERT INTO `outlibrary_goods` VALUES (40, 4, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (41, 4, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (42, 5, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (43, 5, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (44, 6, 1, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (45, 6, 2, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (46, 7, 1, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (47, 7, 2, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (48, 42, 1, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (49, 43, 1, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (50, 43, 2, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (51, 44, 1, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (52, 44, 2, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (53, 8, 1, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (54, 8, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (55, 46, 5, 5, 2095);
INSERT INTO `outlibrary_goods` VALUES (56, 9, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (57, 9, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (58, 47, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (59, 10, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (60, 10, 3, 10, 2690);
INSERT INTO `outlibrary_goods` VALUES (61, 11, 1, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (62, 11, 2, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (63, 48, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (64, 49, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (65, 50, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (66, 50, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (67, 12, 1, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (68, 12, 2, 20, 4580);
INSERT INTO `outlibrary_goods` VALUES (69, 51, 1, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (70, 51, 2, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (71, 52, 1, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (72, 52, 2, 7, 1603);
INSERT INTO `outlibrary_goods` VALUES (73, 53, 1, 16, 3664);
INSERT INTO `outlibrary_goods` VALUES (74, 55, 1, 16, 3664);
INSERT INTO `outlibrary_goods` VALUES (75, 56, 2, 16, 3664);
INSERT INTO `outlibrary_goods` VALUES (76, 57, 1, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (77, 57, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (78, 57, 3, 7, 1883);
INSERT INTO `outlibrary_goods` VALUES (79, 60, 24, 1, 500);
INSERT INTO `outlibrary_goods` VALUES (80, 13, 4, 20, 7980);
INSERT INTO `outlibrary_goods` VALUES (81, 14, 4, 7, 2793);
INSERT INTO `outlibrary_goods` VALUES (82, 15, 4, 7, 2793);
INSERT INTO `outlibrary_goods` VALUES (83, 16, 4, 90, 35910);
INSERT INTO `outlibrary_goods` VALUES (84, 61, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (85, 62, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (86, 62, 3, 20, 5380);
INSERT INTO `outlibrary_goods` VALUES (87, 63, 1, 15, 3435);
INSERT INTO `outlibrary_goods` VALUES (88, 63, 4, 20, 7980);
INSERT INTO `outlibrary_goods` VALUES (89, 64, 2, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (90, 64, 3, 7, 1883);
INSERT INTO `outlibrary_goods` VALUES (91, 65, 4, 5, 1995);
INSERT INTO `outlibrary_goods` VALUES (92, 66, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (93, 66, 3, 10, 2690);
INSERT INTO `outlibrary_goods` VALUES (94, 67, 4, 7, 2793);
INSERT INTO `outlibrary_goods` VALUES (95, 67, 5, 7, 2933);
INSERT INTO `outlibrary_goods` VALUES (96, 68, 1, 20, 4580);
INSERT INTO `outlibrary_goods` VALUES (97, 69, 1, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (98, 70, 4, 300, 119700);
INSERT INTO `outlibrary_goods` VALUES (99, 71, 4, 100, 39900);
INSERT INTO `outlibrary_goods` VALUES (100, 72, 4, 20, 7980);
INSERT INTO `outlibrary_goods` VALUES (101, 72, 5, 30, 12570);
INSERT INTO `outlibrary_goods` VALUES (102, 73, 4, 20, 7980);
INSERT INTO `outlibrary_goods` VALUES (103, 73, 5, 30, 12570);
INSERT INTO `outlibrary_goods` VALUES (104, 75, 3, 10, 2690);
INSERT INTO `outlibrary_goods` VALUES (105, 75, 5, 10, 4190);
INSERT INTO `outlibrary_goods` VALUES (106, 76, 1, 7, 1603);
INSERT INTO `outlibrary_goods` VALUES (107, 76, 24, 7, 3500);
INSERT INTO `outlibrary_goods` VALUES (108, 77, 1, 2, 458);
INSERT INTO `outlibrary_goods` VALUES (109, 78, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (110, 78, 3, 20, 5380);
INSERT INTO `outlibrary_goods` VALUES (111, 79, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (112, 79, 3, 20, 5380);
INSERT INTO `outlibrary_goods` VALUES (113, 80, 2, 90, 20610);
INSERT INTO `outlibrary_goods` VALUES (114, 80, 3, 80, 21520);
INSERT INTO `outlibrary_goods` VALUES (115, 81, 1, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (116, 82, 5, 250, 104750);
INSERT INTO `outlibrary_goods` VALUES (117, 84, 24, 1, 500);
INSERT INTO `outlibrary_goods` VALUES (118, 85, 24, 1, 500);
INSERT INTO `outlibrary_goods` VALUES (119, 86, 1, 1, 229);
INSERT INTO `outlibrary_goods` VALUES (120, 87, 1, 100, 22900);
INSERT INTO `outlibrary_goods` VALUES (121, 87, 2, 100, 22900);
INSERT INTO `outlibrary_goods` VALUES (122, 88, 1, 100, 22900);
INSERT INTO `outlibrary_goods` VALUES (123, 89, 1, 450, 103050);
INSERT INTO `outlibrary_goods` VALUES (124, 91, 1, 200, 45800);
INSERT INTO `outlibrary_goods` VALUES (125, 92, 1, 50, 11450);
INSERT INTO `outlibrary_goods` VALUES (126, 95, 2, 10, 2290);
INSERT INTO `outlibrary_goods` VALUES (127, 96, 3, 10, 2690);
INSERT INTO `outlibrary_goods` VALUES (128, 97, 3, 10, 2690);
INSERT INTO `outlibrary_goods` VALUES (129, 98, 3, 8, 2152);
INSERT INTO `outlibrary_goods` VALUES (130, 99, 3, 150, 40350);
INSERT INTO `outlibrary_goods` VALUES (131, 99, 4, 7, 2793);
INSERT INTO `outlibrary_goods` VALUES (132, 101, 2, -5, -1145);
INSERT INTO `outlibrary_goods` VALUES (133, 102, 2, -5, -1145);
INSERT INTO `outlibrary_goods` VALUES (134, 103, 6, 7, 3213);
INSERT INTO `outlibrary_goods` VALUES (135, 104, 2, 0, 0);
INSERT INTO `outlibrary_goods` VALUES (136, 105, 2, 500, 114500);
INSERT INTO `outlibrary_goods` VALUES (137, 106, 1, 50, 11450);
INSERT INTO `outlibrary_goods` VALUES (138, 107, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (139, 108, 3, 3, 807);
INSERT INTO `outlibrary_goods` VALUES (140, 109, 3, 3, 807);
INSERT INTO `outlibrary_goods` VALUES (141, 110, 3, 3, 807);
INSERT INTO `outlibrary_goods` VALUES (142, 111, 5, 46, 19274);
INSERT INTO `outlibrary_goods` VALUES (143, 112, 1, 5, 1145);
INSERT INTO `outlibrary_goods` VALUES (144, 113, 1, 25, 5725);
INSERT INTO `outlibrary_goods` VALUES (145, 113, 2, 50, 11450);
INSERT INTO `outlibrary_goods` VALUES (146, 113, 3, 50, 13450);
INSERT INTO `outlibrary_goods` VALUES (147, 114, 3, 30, 8070);
INSERT INTO `outlibrary_goods` VALUES (148, 115, 3, 30, 8070);
INSERT INTO `outlibrary_goods` VALUES (149, 116, 1, 3, 687);
INSERT INTO `outlibrary_goods` VALUES (150, 117, 5, 50, 20950);
INSERT INTO `outlibrary_goods` VALUES (151, 117, 6, 15, 6885);
INSERT INTO `outlibrary_goods` VALUES (152, 118, 6, 10, 4590);
INSERT INTO `outlibrary_goods` VALUES (153, 119, 1, 300, 68700);
INSERT INTO `outlibrary_goods` VALUES (154, 119, 2, 100, 22900);
INSERT INTO `outlibrary_goods` VALUES (155, 120, 32, 3, 360);
INSERT INTO `outlibrary_goods` VALUES (156, 121, 32, 3, 360);
INSERT INTO `outlibrary_goods` VALUES (157, 122, 32, 3, 360);
INSERT INTO `outlibrary_goods` VALUES (158, 123, 32, 1, 120);
INSERT INTO `outlibrary_goods` VALUES (159, 124, 29, 20, 4000);
INSERT INTO `outlibrary_goods` VALUES (160, 124, 30, 20, 2000);

-- ----------------------------
-- Table structure for outlibrarytransfer
-- ----------------------------
DROP TABLE IF EXISTS `outlibrarytransfer`;
CREATE TABLE `outlibrarytransfer`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '出库编号',
  `outstaffid` int(255) NULL DEFAULT NULL COMMENT '出库人',
  `outtime` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `examstaffid` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `examtime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `outmethod` int(255) NULL DEFAULT NULL COMMENT '出库操作3.平调',
  `examstate` int(255) NULL DEFAULT NULL COMMENT '审核状态1待审核，2通过审核，3审核驳回',
  `branchid` int(11) NULL DEFAULT NULL COMMENT '原始分店',
  `newbranchid` int(11) NULL DEFAULT NULL COMMENT '平调分店',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驳回备注',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of outlibrarytransfer
-- ----------------------------
INSERT INTO `outlibrarytransfer` VALUES (3, 111, '2021-07-18 20:08:49', 110, '2021-07-18 21:03:11', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (4, 111, '2021-07-18 21:10:13', 123, '2021-07-18 21:12:07', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (5, 111, '2021-07-18 21:14:21', 123, '2021-07-18 21:14:42', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (6, 123, '2021-07-18 21:15:33', 111, '2021-07-18 21:15:58', 3, 2, 33333, 12138, NULL);
INSERT INTO `outlibrarytransfer` VALUES (7, 111, '2021-07-18 21:18:52', 123, '2021-07-18 21:19:16', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (8, 111, '2021-07-18 21:30:09', 123, '2021-07-18 21:34:07', 3, 3, 12138, 33333, '不需要');
INSERT INTO `outlibrarytransfer` VALUES (9, 111, '2021-07-19 14:48:28', 123, '2021-07-19 14:55:37', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (10, 111, '2021-07-19 15:14:18', 123, '2021-07-19 15:15:18', 3, 3, 12138, 33333, '数量有点少');
INSERT INTO `outlibrarytransfer` VALUES (11, 123, '2021-07-19 15:16:13', 111, '2021-07-19 15:17:04', 3, 3, 33333, 12138, '这也太少了吧，不要！');
INSERT INTO `outlibrarytransfer` VALUES (12, 111, '2021-07-19 20:42:05', 123, '2021-07-19 20:42:35', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (13, 111, '2021-07-24 16:00:13', 110, '2021-07-24 16:00:45', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (14, 111, '2021-07-24 16:27:01', 110, '2021-07-24 16:28:25', 3, 3, 12138, 12139, '有问题');
INSERT INTO `outlibrarytransfer` VALUES (15, 111, '2021-07-24 16:28:50', 110, '2021-07-24 16:29:21', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (16, 111, '2021-07-24 16:36:36', 110, '2021-07-24 16:38:00', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (17, 111, '2021-07-24 16:55:05', 110, '2021-07-24 16:59:33', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (18, 111, '2021-07-24 17:01:57', 110, '2021-07-24 17:02:59', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (19, 111, '2021-07-24 17:08:32', 110, '2021-07-24 17:10:39', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (20, 111, '2021-07-24 19:37:16', 123, '2021-07-24 19:38:05', 3, 3, 12138, 33333, '123');
INSERT INTO `outlibrarytransfer` VALUES (21, 111, '2021-07-25 08:19:48', 110, '2021-07-25 08:21:14', 3, 2, 12138, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (22, 117, '2021-07-25 14:15:52', 110, '2021-07-25 14:18:54', 3, 2, 99999, 12139, NULL);
INSERT INTO `outlibrarytransfer` VALUES (23, 117, '2021-07-25 14:22:20', 123, '2021-07-25 14:23:09', 3, 3, 99999, 33333, '数量不足！');
INSERT INTO `outlibrarytransfer` VALUES (24, 111, '2021-07-25 21:21:42', 123, '2021-07-25 21:22:33', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (25, 111, '2021-07-28 10:40:20', 123, '2021-07-28 10:47:57', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (26, 111, '2021-07-28 10:48:10', 123, '2021-07-28 10:49:27', 3, 2, 12138, 33333, NULL);
INSERT INTO `outlibrarytransfer` VALUES (27, 111, '2021-07-28 10:48:19', 888, '2021-07-28 10:49:45', 3, 3, 12138, 88888, '库存不足');
INSERT INTO `outlibrarytransfer` VALUES (28, 111, '2021-07-28 10:51:10', 123, '2021-07-28 10:52:28', 3, 3, 12138, 33333, '数量不够');
INSERT INTO `outlibrarytransfer` VALUES (29, 111, '2021-07-28 10:51:59', 888, '2021-07-28 10:52:11', 3, 2, 12138, 88888, NULL);
INSERT INTO `outlibrarytransfer` VALUES (30, 117, '2021-07-28 19:10:48', 111, '2021-07-28 19:12:42', 3, 2, 41414, 12138, NULL);
INSERT INTO `outlibrarytransfer` VALUES (31, 117, '2021-07-28 19:11:34', 111, '2021-07-28 19:12:53', 3, 3, 41414, 12138, '库存不足');
INSERT INTO `outlibrarytransfer` VALUES (32, 121, '2021-07-28 22:42:57', 111, '2021-07-28 22:43:58', 3, 2, 36363, 12138, NULL);
INSERT INTO `outlibrarytransfer` VALUES (33, 121, '2021-07-28 22:43:04', 111, '2021-07-28 22:44:09', 3, 3, 36363, 12138, '库存不足');
INSERT INTO `outlibrarytransfer` VALUES (34, 111, '2021-07-29 16:29:08', 987, '2021-07-29 16:29:45', 3, 2, 12138, 77777, NULL);
INSERT INTO `outlibrarytransfer` VALUES (35, 111, '2021-12-14 21:01:59', NULL, NULL, 3, 1, 12138, 33333, NULL);

-- ----------------------------
-- Table structure for outlibrarytransfer_goods
-- ----------------------------
DROP TABLE IF EXISTS `outlibrarytransfer_goods`;
CREATE TABLE `outlibrarytransfer_goods`  (
  `xid` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cid` int(20) NULL DEFAULT NULL COMMENT '出库编号',
  `goodsid` int(20) NULL DEFAULT NULL COMMENT '商品id',
  `num` int(20) NULL DEFAULT NULL COMMENT '出库数量',
  `total` double(255, 0) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`xid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of outlibrarytransfer_goods
-- ----------------------------
INSERT INTO `outlibrarytransfer_goods` VALUES (84, 17, 4, 10, 3990);
INSERT INTO `outlibrarytransfer_goods` VALUES (85, 17, 5, 15, 6285);
INSERT INTO `outlibrarytransfer_goods` VALUES (86, 18, 9, 7, 2163);
INSERT INTO `outlibrarytransfer_goods` VALUES (87, 18, 24, 7, 3500);
INSERT INTO `outlibrarytransfer_goods` VALUES (88, 19, 4, 10, 3990);
INSERT INTO `outlibrarytransfer_goods` VALUES (89, 19, 5, 15, 6285);
INSERT INTO `outlibrarytransfer_goods` VALUES (90, 20, 1, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (91, 20, 2, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (92, 21, 3, 100, 26900);
INSERT INTO `outlibrarytransfer_goods` VALUES (93, 21, 4, 5, 1995);
INSERT INTO `outlibrarytransfer_goods` VALUES (94, 22, 1, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (95, 22, 2, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (96, 22, 3, 10, 2690);
INSERT INTO `outlibrarytransfer_goods` VALUES (97, 22, 4, 10, 3990);
INSERT INTO `outlibrarytransfer_goods` VALUES (98, 23, 2, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (99, 23, 3, 10, 2690);
INSERT INTO `outlibrarytransfer_goods` VALUES (100, 24, 5, 20, 8380);
INSERT INTO `outlibrarytransfer_goods` VALUES (101, 25, 2, 10, 2290);
INSERT INTO `outlibrarytransfer_goods` VALUES (102, 26, 6, 10, 4590);
INSERT INTO `outlibrarytransfer_goods` VALUES (103, 27, 6, 10, 4590);
INSERT INTO `outlibrarytransfer_goods` VALUES (104, 28, 7, 10, 3590);
INSERT INTO `outlibrarytransfer_goods` VALUES (105, 28, 8, 6, 1794);
INSERT INTO `outlibrarytransfer_goods` VALUES (106, 29, 7, 10, 3590);
INSERT INTO `outlibrarytransfer_goods` VALUES (107, 29, 8, 6, 1794);
INSERT INTO `outlibrarytransfer_goods` VALUES (108, 30, 1, 50, 11450);
INSERT INTO `outlibrarytransfer_goods` VALUES (109, 31, 1, 50, 11450);
INSERT INTO `outlibrarytransfer_goods` VALUES (110, 31, 2, 50, 11450);
INSERT INTO `outlibrarytransfer_goods` VALUES (111, 32, 1, 50, 11450);
INSERT INTO `outlibrarytransfer_goods` VALUES (112, 33, 1, 50, 11450);
INSERT INTO `outlibrarytransfer_goods` VALUES (113, 34, 29, 50, 10000);
INSERT INTO `outlibrarytransfer_goods` VALUES (114, 34, 30, 50, 10000);
INSERT INTO `outlibrarytransfer_goods` VALUES (115, 35, 1, 10, 2290);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `rolename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '店长', '权力最大', '1');
INSERT INTO `role` VALUES (2, '销售员', '零售商品，批量出售，', '1');
INSERT INTO `role` VALUES (3, '会计', '负责假货进出货金额统计', '1');
INSERT INTO `role` VALUES (4, '盘点员', '盘点假货', '1');
INSERT INTO `role` VALUES (5, '入库员', '往仓库进假货', '1');

-- ----------------------------
-- Table structure for rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `rolemenu`;
CREATE TABLE `rolemenu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NULL DEFAULT NULL,
  `mid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 381 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rolemenu
-- ----------------------------
INSERT INTO `rolemenu` VALUES (248, 1, 1);
INSERT INTO `rolemenu` VALUES (249, 1, 2);
INSERT INTO `rolemenu` VALUES (250, 1, 3);
INSERT INTO `rolemenu` VALUES (251, 1, 4);
INSERT INTO `rolemenu` VALUES (252, 1, 5);
INSERT INTO `rolemenu` VALUES (253, 1, 18);
INSERT INTO `rolemenu` VALUES (254, 1, 28);
INSERT INTO `rolemenu` VALUES (255, 1, 6);
INSERT INTO `rolemenu` VALUES (256, 1, 7);
INSERT INTO `rolemenu` VALUES (257, 1, 8);
INSERT INTO `rolemenu` VALUES (258, 1, 9);
INSERT INTO `rolemenu` VALUES (259, 1, 27);
INSERT INTO `rolemenu` VALUES (260, 1, 10);
INSERT INTO `rolemenu` VALUES (261, 1, 11);
INSERT INTO `rolemenu` VALUES (262, 1, 12);
INSERT INTO `rolemenu` VALUES (263, 1, 13);
INSERT INTO `rolemenu` VALUES (264, 1, 26);
INSERT INTO `rolemenu` VALUES (265, 1, 14);
INSERT INTO `rolemenu` VALUES (266, 1, 15);
INSERT INTO `rolemenu` VALUES (267, 1, 16);
INSERT INTO `rolemenu` VALUES (268, 1, 17);
INSERT INTO `rolemenu` VALUES (269, 1, 19);
INSERT INTO `rolemenu` VALUES (270, 1, 20);
INSERT INTO `rolemenu` VALUES (271, 1, 21);
INSERT INTO `rolemenu` VALUES (272, 1, 22);
INSERT INTO `rolemenu` VALUES (273, 1, 23);
INSERT INTO `rolemenu` VALUES (274, 1, 24);
INSERT INTO `rolemenu` VALUES (275, 1, 25);
INSERT INTO `rolemenu` VALUES (276, 1, 29);
INSERT INTO `rolemenu` VALUES (277, 1, 30);
INSERT INTO `rolemenu` VALUES (278, 6, 12);
INSERT INTO `rolemenu` VALUES (279, 6, 13);
INSERT INTO `rolemenu` VALUES (280, 6, 29);
INSERT INTO `rolemenu` VALUES (281, 6, 30);
INSERT INTO `rolemenu` VALUES (298, 5, 8);
INSERT INTO `rolemenu` VALUES (299, 5, 9);
INSERT INTO `rolemenu` VALUES (300, 5, 27);
INSERT INTO `rolemenu` VALUES (301, 5, 12);
INSERT INTO `rolemenu` VALUES (302, 5, 13);
INSERT INTO `rolemenu` VALUES (303, 5, 26);
INSERT INTO `rolemenu` VALUES (304, 2, 8);
INSERT INTO `rolemenu` VALUES (305, 2, 9);
INSERT INTO `rolemenu` VALUES (306, 2, 27);
INSERT INTO `rolemenu` VALUES (307, 2, 14);
INSERT INTO `rolemenu` VALUES (308, 2, 15);
INSERT INTO `rolemenu` VALUES (309, 2, 16);
INSERT INTO `rolemenu` VALUES (310, 2, 17);
INSERT INTO `rolemenu` VALUES (311, 2, 19);
INSERT INTO `rolemenu` VALUES (312, 2, 20);
INSERT INTO `rolemenu` VALUES (313, 2, 21);
INSERT INTO `rolemenu` VALUES (314, 2, 23);
INSERT INTO `rolemenu` VALUES (315, 2, 24);
INSERT INTO `rolemenu` VALUES (316, 3, 12);
INSERT INTO `rolemenu` VALUES (317, 3, 13);
INSERT INTO `rolemenu` VALUES (318, 3, 26);
INSERT INTO `rolemenu` VALUES (319, 3, 14);
INSERT INTO `rolemenu` VALUES (320, 3, 15);
INSERT INTO `rolemenu` VALUES (321, 3, 16);
INSERT INTO `rolemenu` VALUES (322, 3, 17);
INSERT INTO `rolemenu` VALUES (323, 3, 19);
INSERT INTO `rolemenu` VALUES (324, 3, 20);
INSERT INTO `rolemenu` VALUES (325, 3, 21);
INSERT INTO `rolemenu` VALUES (326, 3, 22);
INSERT INTO `rolemenu` VALUES (327, 3, 23);
INSERT INTO `rolemenu` VALUES (365, 4, 1);
INSERT INTO `rolemenu` VALUES (366, 4, 2);
INSERT INTO `rolemenu` VALUES (367, 4, 3);
INSERT INTO `rolemenu` VALUES (368, 4, 4);
INSERT INTO `rolemenu` VALUES (369, 4, 5);
INSERT INTO `rolemenu` VALUES (370, 4, 18);
INSERT INTO `rolemenu` VALUES (371, 4, 28);
INSERT INTO `rolemenu` VALUES (372, 4, 6);
INSERT INTO `rolemenu` VALUES (373, 4, 7);
INSERT INTO `rolemenu` VALUES (374, 4, 27);
INSERT INTO `rolemenu` VALUES (375, 4, 8);

-- ----------------------------
-- Table structure for shaftchoose
-- ----------------------------
DROP TABLE IF EXISTS `shaftchoose`;
CREATE TABLE `shaftchoose`  (
  `shaftchooseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '轴体选择id',
  `shaftchoose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '轴体选择',
  PRIMARY KEY (`shaftchooseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shaftchoose
-- ----------------------------
INSERT INTO `shaftchoose` VALUES (1, '白轴');
INSERT INTO `shaftchoose` VALUES (2, '红轴');
INSERT INTO `shaftchoose` VALUES (3, '茶轴');
INSERT INTO `shaftchoose` VALUES (4, '天空蓝');
INSERT INTO `shaftchoose` VALUES (5, '流沙金');
INSERT INTO `shaftchoose` VALUES (6, '玫瑰红');

-- ----------------------------
-- Table structure for shopkeeperchange
-- ----------------------------
DROP TABLE IF EXISTS `shopkeeperchange`;
CREATE TABLE `shopkeeperchange`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `staffid` int(11) NULL DEFAULT NULL,
  `branchid` int(11) NULL DEFAULT NULL,
  `deptid` int(255) NULL DEFAULT NULL,
  `roleid` int(255) NULL DEFAULT NULL,
  `newbranchid` int(11) NULL DEFAULT NULL,
  `newdeptid` int(11) NULL DEFAULT NULL,
  `newroleid` int(11) NULL DEFAULT NULL,
  `transfertime` datetime(0) NULL DEFAULT NULL,
  `transferper` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shopkeeperchange
-- ----------------------------
INSERT INTO `shopkeeperchange` VALUES (12, 336, 88888, 2, 2, 31313, 1, 1, '2021-07-27 09:05:31', 111);
INSERT INTO `shopkeeperchange` VALUES (13, 336, 31313, 1, 1, 12138, 5, 5, '2021-07-27 09:24:57', 111);
INSERT INTO `shopkeeperchange` VALUES (14, 789, 12139, 3, 3, 31313, 1, 1, '2021-07-27 09:29:31', 111);
INSERT INTO `shopkeeperchange` VALUES (15, 775, 21212, 1, 1, 12138, 4, 4, '2021-07-27 10:08:22', 111);
INSERT INTO `shopkeeperchange` VALUES (16, 666, 12138, 4, 4, 21212, 1, 1, '2021-07-27 10:08:44', 111);
INSERT INTO `shopkeeperchange` VALUES (17, 789, 31313, 1, 1, 12138, 4, 4, '2021-07-27 10:22:59', 111);
INSERT INTO `shopkeeperchange` VALUES (18, 117, 99999, 2, 2, 31313, 1, 1, '2021-07-27 10:29:04', 111);
INSERT INTO `shopkeeperchange` VALUES (19, 117, 31313, 1, 1, 31313, 5, 5, '2021-07-27 10:47:39', 111);
INSERT INTO `shopkeeperchange` VALUES (20, 775, 12138, 4, 4, 31313, 1, 1, '2021-07-27 10:47:53', 111);
INSERT INTO `shopkeeperchange` VALUES (21, 212, 12138, 4, 3, 31313, 1, 1, '2021-07-27 17:21:38', 111);
INSERT INTO `shopkeeperchange` VALUES (22, 212, 31313, 1, 1, 12138, 3, 3, '2021-07-27 21:00:56', 111);
INSERT INTO `shopkeeperchange` VALUES (23, 666, 21212, 1, 1, 12138, 5, 5, '2021-07-27 21:01:06', 111);
INSERT INTO `shopkeeperchange` VALUES (24, 345, 12121, 1, 1, 12138, 2, 2, '2021-07-27 21:01:19', 111);
INSERT INTO `shopkeeperchange` VALUES (25, 116, 99999, 1, 1, 12138, 2, 2, '2021-07-27 21:04:42', 111);
INSERT INTO `shopkeeperchange` VALUES (26, 222, 44444, 1, 1, 88888, 2, 2, '2021-07-27 21:13:14', 111);
INSERT INTO `shopkeeperchange` VALUES (27, 212, 12138, 3, 3, 12121, 1, 1, '2021-07-28 15:48:07', 111);
INSERT INTO `shopkeeperchange` VALUES (28, 121, 33333, 4, 4, 41414, 1, 1, '2021-07-28 18:22:24', 111);
INSERT INTO `shopkeeperchange` VALUES (29, 121, 41414, 1, 1, 12138, 2, 2, '2021-07-28 18:25:49', 111);
INSERT INTO `shopkeeperchange` VALUES (30, 117, 12138, 5, 5, 41414, 1, 1, '2021-07-28 18:28:15', 111);
INSERT INTO `shopkeeperchange` VALUES (31, 117, 41414, 1, 1, 12138, 4, 4, '2021-07-28 18:29:06', 111);
INSERT INTO `shopkeeperchange` VALUES (32, 117, 12138, 4, 4, 41414, 1, 1, '2021-07-28 18:29:49', 111);
INSERT INTO `shopkeeperchange` VALUES (33, 212, 12121, 1, 1, 41414, 4, 4, '2021-07-28 21:54:45', 111);
INSERT INTO `shopkeeperchange` VALUES (34, 212, 41414, 4, 4, 36363, 1, 1, '2021-07-28 22:17:20', 111);
INSERT INTO `shopkeeperchange` VALUES (35, 212, 36363, 1, 1, 12138, 2, 2, '2021-07-28 22:20:40', 111);
INSERT INTO `shopkeeperchange` VALUES (36, 121, 41414, 2, 2, 36363, 1, 1, '2021-07-28 22:21:41', 111);
INSERT INTO `shopkeeperchange` VALUES (37, 121, 36363, 1, 1, 12138, 2, 2, '2021-07-29 07:55:47', 111);
INSERT INTO `shopkeeperchange` VALUES (38, 117, 41414, 1, 1, 12138, 4, 4, '2021-07-29 07:57:31', 111);
INSERT INTO `shopkeeperchange` VALUES (39, 212, 36363, 2, 2, 36363, 1, 1, '2021-07-29 07:58:07', 111);
INSERT INTO `shopkeeperchange` VALUES (40, 212, 36363, 1, 1, 12138, 3, 3, '2021-07-29 07:59:13', 111);
INSERT INTO `shopkeeperchange` VALUES (41, 212, 12138, 3, 3, 77777, 1, 1, '2021-07-29 16:14:24', 111);
INSERT INTO `shopkeeperchange` VALUES (42, 212, 77777, 1, 1, 12138, 3, 3, '2021-07-29 16:15:09', 111);
INSERT INTO `shopkeeperchange` VALUES (43, 987, 12138, 2, 2, 77777, 1, 1, '2021-07-29 16:15:28', 111);
INSERT INTO `shopkeeperchange` VALUES (44, 121, 12138, 2, 2, 121381, 1, 1, '2021-12-06 23:19:56', 111);
INSERT INTO `shopkeeperchange` VALUES (45, 121, NULL, 1, 1, 12139, 3, 3, '2021-12-06 23:20:49', 111);
INSERT INTO `shopkeeperchange` VALUES (46, 121, NULL, 1, 1, 12138, 2, 2, '2021-12-06 23:21:07', 111);
INSERT INTO `shopkeeperchange` VALUES (47, 121, 121381, 1, 1, 77777, 5, 5, '2021-12-06 23:21:54', 111);
INSERT INTO `shopkeeperchange` VALUES (48, 987, 77777, 1, 1, 121381, 4, 4, '2021-12-14 20:19:09', 111);
INSERT INTO `shopkeeperchange` VALUES (49, 116, 12138, 2, 2, 77777, 1, 1, '2021-12-14 20:19:26', 111);
INSERT INTO `shopkeeperchange` VALUES (50, 116, 77777, 1, 1, 121381, 4, 4, '2021-12-14 20:20:00', 111);
INSERT INTO `shopkeeperchange` VALUES (51, 222, 88888, 2, 2, 77777, 1, 1, '2021-12-14 20:20:50', 111);
INSERT INTO `shopkeeperchange` VALUES (52, 212, 12138, 3, 3, 121391, 1, 1, '2021-12-15 11:18:35', 111);
INSERT INTO `shopkeeperchange` VALUES (53, 116, 123123, 1, 1, 121381, 3, 3, '2021-12-26 21:21:33', 111);
INSERT INTO `shopkeeperchange` VALUES (54, 117, 12138, 4, 4, 123123, 1, 1, '2021-12-26 21:21:43', 111);
INSERT INTO `shopkeeperchange` VALUES (55, 117, 123123, 1, 1, 121381, 2, 2, '2021-12-26 21:21:55', 111);
INSERT INTO `shopkeeperchange` VALUES (56, 116, 121381, 3, 3, 12139, 1, 1, '2021-12-26 21:40:13', 111);
INSERT INTO `shopkeeperchange` VALUES (57, 121, 77777, 5, 5, 33333, 1, 1, '2021-12-26 21:41:46', 111);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL COMMENT '员工id',
  `staffname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工密码',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工电话',
  `entrytime` datetime(0) NULL DEFAULT NULL COMMENT '入职时间',
  `leavetime` datetime(0) NULL DEFAULT NULL COMMENT '离职时间',
  `state` int(50) NULL DEFAULT NULL COMMENT '在职状态',
  `roleid` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `branchid` int(11) NULL DEFAULT NULL COMMENT '隶属分店id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 111, '小张', '111', '410322200003431112', '太阳', '18538090559', '2021-07-08 18:52:42', NULL, 1, 1, 1, 'https://chenglong66.oss-cn-hangzhou.aliyuncs.com/2.jpg', 12138);
INSERT INTO `staff` VALUES (2, 666, '小黑', '666', '412751555662554550', '南京', '18245877452', '2021-07-23 09:26:12', '2021-12-06 23:27:20', 0, 5, 5, NULL, 77777);
INSERT INTO `staff` VALUES (3, 110, '杨飞龙', '111', '410101199812010053', '郑州', '13088877666', '2021-06-29 16:45:05', '2021-12-15 11:24:46', 0, 1, 1, 'https://wjk123.oss-cn-beijing.aliyuncs.com/d9b6a3c5-3dbb-42c4-897e-f98d93906466.gif', 12139);
INSERT INTO `staff` VALUES (23, 123, '孙好好', '222', '412728200006054296', '郑州', '18238905062', '2021-07-31 00:00:00', NULL, 1, 1, 1, 'https://wjk123.oss-cn-beijing.aliyuncs.com/f52ca99f-8b17-4589-ad45-a5cea1ee64f6.jpg', 33333);
INSERT INTO `staff` VALUES (38, 116, '小王', '116', '410727199556522140', '北京1', '18888888888', '2021-01-13 00:07:00', NULL, 1, 1, 1, 'beijing.aliyuncs.com/120210708230126871', 12139);
INSERT INTO `staff` VALUES (42, 117, 'l', '771', '410727199556322514', '郑州', '19999999999', '2021-07-22 00:00:00', NULL, 1, 2, 2, NULL, 121381);
INSERT INTO `staff` VALUES (43, 888, '吴剑柯', '3333', '410727199554752584', '荷兰', '18739033227', '2021-07-23 00:00:00', NULL, 1, 1, 1, 'https://wjk123.oss-cn-beijing.aliyuncs.com/120210724160115940', 88888);
INSERT INTO `staff` VALUES (48, 222, '小艾', '222', '410727200003055210', '郑州', '19525488564', '2021-07-25 00:00:00', NULL, 1, 1, 1, NULL, 77777);
INSERT INTO `staff` VALUES (49, 333, '冲冲', '333', '410727199809085214', '北京', '18521547451', '2021-07-25 00:00:00', '2021-07-27 15:57:17', 0, 4, 4, NULL, 12138);
INSERT INTO `staff` VALUES (50, 789, '小雅', '789', '410727199905258745', '巩义', '18525864547', '2021-07-25 00:00:00', '2021-07-27 15:50:09', 0, 4, 4, NULL, 12138);
INSERT INTO `staff` VALUES (51, 345, '铠铠', '345', '410727185475488545', '火星', '15248657548', '2021-07-25 00:00:00', NULL, 1, 2, 2, NULL, 33333);
INSERT INTO `staff` VALUES (52, 775, '小孙', '117', '410727199925852580', '郑州', '18522474781', '2021-07-25 14:27:07', '2021-07-27 17:21:23', 0, 1, 1, NULL, 31313);
INSERT INTO `staff` VALUES (53, 336, '大孙', '336', '410727199809055918', '郑州', '18538090558', '2021-07-25 14:30:21', '2021-07-27 15:55:07', 0, 5, 5, NULL, 12138);
INSERT INTO `staff` VALUES (61, 121, '建国', '121', '410727199809055919', '北京', '18538090557', '2021-07-27 00:00:00', NULL, 1, 1, 1, NULL, 33333);
INSERT INTO `staff` VALUES (62, 212, '王二麻', '212', '41072719980905591X', '日本', '18538090555', '2021-07-27 00:00:00', NULL, 1, 1, 1, NULL, 121391);
INSERT INTO `staff` VALUES (64, 454, '浩浩', '454', '410727199809055915', '南京', '18538095556', '2021-07-28 18:37:47', NULL, 2, 2, 3, NULL, 12138);
INSERT INTO `staff` VALUES (65, 987, '老闫', '987', '410727199809055999', '北京', '18538090566', '2021-07-28 22:27:35', '2021-12-14 20:18:18', 0, 4, 4, NULL, 121381);
INSERT INTO `staff` VALUES (66, 777, '测试人员', '777', '410727199809057777', '郑州', '18538097777', '2021-07-29 16:19:53', NULL, 1, 3, 3, NULL, 12138);
INSERT INTO `staff` VALUES (67, 123123, '123', '123', '12312312312', '123', '1231231232', '2021-01-14 00:12:00', '2021-12-26 21:38:39', 0, 4, 4, NULL, 33333);

-- ----------------------------
-- Table structure for stafftransfer
-- ----------------------------
DROP TABLE IF EXISTS `stafftransfer`;
CREATE TABLE `stafftransfer`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `staffid` int(20) NULL DEFAULT NULL COMMENT '平调员工编号',
  `branchid` int(20) NULL DEFAULT NULL COMMENT '旧分店编号',
  `deptid` int(20) NULL DEFAULT NULL COMMENT '旧部门编号',
  `newbranchid` int(20) NULL DEFAULT NULL COMMENT '平调的新分店编号',
  `newdeptid` int(20) NULL DEFAULT NULL COMMENT '平调的新部门编号',
  `applytime` datetime(6) NULL DEFAULT NULL COMMENT '申请时间',
  `extime` datetime(6) NULL DEFAULT NULL COMMENT '审核时间',
  `applyid` int(11) NULL DEFAULT NULL COMMENT '申请人编号',
  `exid` int(11) NULL DEFAULT NULL COMMENT '审核人编号',
  `state` int(20) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stafftransfer
-- ----------------------------
INSERT INTO `stafftransfer` VALUES (32, 345, 12138, 2, 33333, 2, '2021-07-27 21:37:13.874000', '2021-07-27 21:55:35.318000', 111, 123, 2);
INSERT INTO `stafftransfer` VALUES (33, 345, 33333, 2, 12138, 2, '2021-07-27 21:56:42.322000', '2021-07-27 21:57:49.850000', 111, 111, 2);
INSERT INTO `stafftransfer` VALUES (34, 345, 12138, 2, 33333, 2, '2021-07-27 21:58:03.032000', '2021-07-27 22:06:50.371000', 111, 123, 2);
INSERT INTO `stafftransfer` VALUES (35, 121, 12138, 4, 33333, 4, '2021-07-28 13:42:28.053000', '2021-07-28 13:43:10.606000', 111, 123, 2);
INSERT INTO `stafftransfer` VALUES (36, 116, 12138, 2, 33333, 2, '2021-07-28 15:55:46.859000', '2021-07-28 15:56:35.540000', 111, 123, 3);
INSERT INTO `stafftransfer` VALUES (37, 121, 12138, 2, 41414, 2, '2021-07-28 18:43:41.607000', '2021-07-28 18:44:35.888000', 111, 117, 2);
INSERT INTO `stafftransfer` VALUES (38, 116, 12138, 2, 41414, 2, '2021-07-28 18:46:02.222000', '2021-07-28 18:46:37.547000', 111, 117, 3);
INSERT INTO `stafftransfer` VALUES (39, 212, 12138, 2, 36363, 2, '2021-07-28 22:30:43.556000', '2021-07-28 22:31:37.260000', 111, 121, 2);
INSERT INTO `stafftransfer` VALUES (40, 454, 41414, 2, 12138, 3, '2021-07-29 07:57:08.372000', '2021-07-29 07:57:17.318000', 117, 111, 2);
INSERT INTO `stafftransfer` VALUES (41, 987, 36363, 2, 12138, 2, '2021-07-29 07:58:42.317000', '2021-07-29 07:58:49.787000', 212, 111, 2);
INSERT INTO `stafftransfer` VALUES (42, 666, 12138, 5, 77777, 5, '2021-07-29 16:16:21.297000', '2021-07-29 16:17:46.451000', 111, 987, 2);
INSERT INTO `stafftransfer` VALUES (43, 222, 88888, 2, 121381, 2, '2021-12-14 20:21:40.683000', NULL, 111, NULL, 1);
INSERT INTO `stafftransfer` VALUES (44, 116, 121381, 4, 123123, 1, '2021-12-26 21:20:50.925000', '2021-12-26 21:20:50.925000', 111, 111, 2);
INSERT INTO `stafftransfer` VALUES (45, 123123, 12139, 4, 33333, 3, '2021-12-26 21:26:51.569000', NULL, 111, NULL, 1);
INSERT INTO `stafftransfer` VALUES (46, 123123, 33333, 3, 33333, 4, '2021-12-26 21:27:38.568000', '2021-12-26 21:43:05.171000', 111, 123, 2);
INSERT INTO `stafftransfer` VALUES (47, 11111, 33333, 3, 12139, 5, '2021-12-26 21:32:06.974000', NULL, 111, NULL, 1);
INSERT INTO `stafftransfer` VALUES (48, 123123, 33333, 4, 12138, 4, '2021-12-26 21:38:34.196000', '2021-12-26 21:39:16.046000', 111, 111, 2);

-- ----------------------------
-- Table structure for storage_volume
-- ----------------------------
DROP TABLE IF EXISTS `storage_volume`;
CREATE TABLE `storage_volume`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NULL DEFAULT NULL,
  `id` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `branchid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of storage_volume
-- ----------------------------
INSERT INTO `storage_volume` VALUES (1, 1, 1, 1, 12138);
INSERT INTO `storage_volume` VALUES (180, 1, 155, 18, 33333);
INSERT INTO `storage_volume` VALUES (181, 2, 155, 18, 33333);
INSERT INTO `storage_volume` VALUES (182, 3, 155, 18, 33333);
INSERT INTO `storage_volume` VALUES (183, 1, 156, 1, 33333);
INSERT INTO `storage_volume` VALUES (184, 2, 156, 1, 33333);
INSERT INTO `storage_volume` VALUES (185, 3, 156, 1, 33333);
INSERT INTO `storage_volume` VALUES (186, 1, 157, 2, 33333);
INSERT INTO `storage_volume` VALUES (187, 2, 157, 2, 33333);
INSERT INTO `storage_volume` VALUES (188, 3, 157, 2, 33333);
INSERT INTO `storage_volume` VALUES (189, 1, 158, 1, 33333);
INSERT INTO `storage_volume` VALUES (190, 2, 158, 1, 33333);
INSERT INTO `storage_volume` VALUES (191, 3, 158, 1, 33333);
INSERT INTO `storage_volume` VALUES (192, 1, 159, 20, 33333);
INSERT INTO `storage_volume` VALUES (193, 2, 159, 10, 33333);
INSERT INTO `storage_volume` VALUES (194, 3, 159, 10, 33333);
INSERT INTO `storage_volume` VALUES (195, 1, 160, 1, 33333);
INSERT INTO `storage_volume` VALUES (196, 2, 160, 1, 33333);
INSERT INTO `storage_volume` VALUES (197, 3, 160, 1, 33333);
INSERT INTO `storage_volume` VALUES (198, 1, 161, 1, 33333);
INSERT INTO `storage_volume` VALUES (199, 2, 161, 1, 33333);
INSERT INTO `storage_volume` VALUES (200, 3, 161, 1, 33333);
INSERT INTO `storage_volume` VALUES (201, 1, 162, 10, 33333);
INSERT INTO `storage_volume` VALUES (202, 2, 162, 10, 33333);
INSERT INTO `storage_volume` VALUES (203, 3, 162, 10, 33333);
INSERT INTO `storage_volume` VALUES (204, 1, 163, 1, 33333);
INSERT INTO `storage_volume` VALUES (205, 1, 164, 1, 33333);
INSERT INTO `storage_volume` VALUES (206, 1, 165, 1, 33333);
INSERT INTO `storage_volume` VALUES (207, 1, 166, 1, 33333);
INSERT INTO `storage_volume` VALUES (208, 1, 167, 487, 12138);
INSERT INTO `storage_volume` VALUES (209, 1, 173, 1, 33333);
INSERT INTO `storage_volume` VALUES (210, 1, 174, 1, 33333);
INSERT INTO `storage_volume` VALUES (211, 1, 178, 100, 33333);
INSERT INTO `storage_volume` VALUES (212, 2, 178, 100, 33333);
INSERT INTO `storage_volume` VALUES (213, 3, 178, 100, 33333);
INSERT INTO `storage_volume` VALUES (214, 1, 179, 10, 12138);
INSERT INTO `storage_volume` VALUES (215, 2, 180, 400, 12138);
INSERT INTO `storage_volume` VALUES (216, 3, 180, 400, 12138);
INSERT INTO `storage_volume` VALUES (217, 4, 180, 400, 12138);
INSERT INTO `storage_volume` VALUES (218, 5, 181, 300, 12138);
INSERT INTO `storage_volume` VALUES (219, 1, 182, 7, 33333);
INSERT INTO `storage_volume` VALUES (220, 1, 183, 7, 33333);
INSERT INTO `storage_volume` VALUES (221, 1, 184, 100, 88888);
INSERT INTO `storage_volume` VALUES (222, 2, 184, 100, 88888);
INSERT INTO `storage_volume` VALUES (223, 3, 184, 100, 88888);
INSERT INTO `storage_volume` VALUES (224, 4, 184, 100, 88888);
INSERT INTO `storage_volume` VALUES (225, 1, 185, 1, 33333);
INSERT INTO `storage_volume` VALUES (226, 1, 186, 20, 33333);
INSERT INTO `storage_volume` VALUES (227, 1, 187, 20, 33333);
INSERT INTO `storage_volume` VALUES (228, 5, 188, 20, 88888);
INSERT INTO `storage_volume` VALUES (229, 9, 189, 20, 12139);
INSERT INTO `storage_volume` VALUES (230, 29, 190, 100, 12138);
INSERT INTO `storage_volume` VALUES (231, 30, 190, 200, 12138);
INSERT INTO `storage_volume` VALUES (232, 1, 191, 10, 12138);
INSERT INTO `storage_volume` VALUES (233, 4, 192, 10, 12138);
INSERT INTO `storage_volume` VALUES (234, 4, 193, 10, 12138);
INSERT INTO `storage_volume` VALUES (235, 5, 193, 10, 12138);
INSERT INTO `storage_volume` VALUES (236, 4, 194, 10, 12138);
INSERT INTO `storage_volume` VALUES (237, 5, 194, 10, 12138);
INSERT INTO `storage_volume` VALUES (238, 7, 195, 100, 12139);
INSERT INTO `storage_volume` VALUES (239, 29, 195, 100, 12139);
INSERT INTO `storage_volume` VALUES (240, 28, 195, 100, 12139);
INSERT INTO `storage_volume` VALUES (241, 5, 196, 10, 12138);
INSERT INTO `storage_volume` VALUES (242, 1, 197, 10, 12138);
INSERT INTO `storage_volume` VALUES (243, 1, 198, 100, 99999);
INSERT INTO `storage_volume` VALUES (244, 2, 198, 100, 99999);
INSERT INTO `storage_volume` VALUES (245, 3, 198, 100, 99999);
INSERT INTO `storage_volume` VALUES (246, 4, 199, 50, 99999);
INSERT INTO `storage_volume` VALUES (247, 5, 199, 50, 99999);
INSERT INTO `storage_volume` VALUES (248, 2, 200, 100, 99999);
INSERT INTO `storage_volume` VALUES (249, 3, 200, 100, 99999);
INSERT INTO `storage_volume` VALUES (250, 4, 200, 100, 99999);
INSERT INTO `storage_volume` VALUES (254, 1, 205, 12, 12138);
INSERT INTO `storage_volume` VALUES (255, 3, 206, 10, 12138);
INSERT INTO `storage_volume` VALUES (256, 1, 207, 10, 12138);
INSERT INTO `storage_volume` VALUES (257, 1, 208, 100, 12138);
INSERT INTO `storage_volume` VALUES (258, 1, 209, 20, 12138);
INSERT INTO `storage_volume` VALUES (259, 1, 210, 100, 12138);
INSERT INTO `storage_volume` VALUES (260, 1, 211, 100, 12138);
INSERT INTO `storage_volume` VALUES (261, 1, 212, 100, 12138);
INSERT INTO `storage_volume` VALUES (262, 1, 213, 50, 12138);
INSERT INTO `storage_volume` VALUES (263, 4, 213, 90, 12138);
INSERT INTO `storage_volume` VALUES (264, 5, 214, 50, 12138);
INSERT INTO `storage_volume` VALUES (265, 6, 215, 20, 12138);
INSERT INTO `storage_volume` VALUES (266, 1, 216, 100, 12121);
INSERT INTO `storage_volume` VALUES (267, 2, 216, 100, 12121);
INSERT INTO `storage_volume` VALUES (268, 3, 216, 100, 12121);
INSERT INTO `storage_volume` VALUES (269, 1, 217, 300, 12138);
INSERT INTO `storage_volume` VALUES (270, 1, 218, 100, 12138);
INSERT INTO `storage_volume` VALUES (271, 1, 219, 100, 12138);
INSERT INTO `storage_volume` VALUES (272, 1, 220, 100, 12138);
INSERT INTO `storage_volume` VALUES (273, 1, 221, 100, 41414);
INSERT INTO `storage_volume` VALUES (274, 2, 221, 100, 41414);
INSERT INTO `storage_volume` VALUES (275, 3, 221, 5, 41414);
INSERT INTO `storage_volume` VALUES (276, 3, 222, 100, 41414);
INSERT INTO `storage_volume` VALUES (277, 4, 222, 50, 41414);
INSERT INTO `storage_volume` VALUES (278, 1, 223, 100, 36363);
INSERT INTO `storage_volume` VALUES (279, 2, 223, 150, 36363);
INSERT INTO `storage_volume` VALUES (280, 3, 223, 100, 36363);
INSERT INTO `storage_volume` VALUES (281, 4, 223, 100, 36363);
INSERT INTO `storage_volume` VALUES (282, 4, 224, 50, 12138);
INSERT INTO `storage_volume` VALUES (283, 5, 224, 100, 12138);
INSERT INTO `storage_volume` VALUES (284, 32, 225, 10, 12138);
INSERT INTO `storage_volume` VALUES (285, 32, 226, 10, 12138);

SET FOREIGN_KEY_CHECKS = 1;

/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : stone_db

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-02-27 17:18:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dict_def
-- ----------------------------
DROP TABLE IF EXISTS `dict_def`;
CREATE TABLE `dict_def` (
  `dict_type` decimal(4,0) NOT NULL COMMENT '字典类型',
  `type_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '类型名称',
  `dict_class` decimal(6,0) NOT NULL COMMENT '字典类别',
  `class_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '类别名称',
  `entry_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '条目标识',
  `entry_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '条目名称',
  `entry_desc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '条目描述',
  `parent_entry_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父条目标识',
  KEY `idx_dict_def1` (`dict_type`,`dict_class`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='数据字典表';

-- ----------------------------
-- Records of dict_def
-- ----------------------------
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '1', '在职', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '2', '离职', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '3', '仓管', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '4', '销售员', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '5', '市场经理', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '6', '人力总监', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '7', '市场总监', null, null);
INSERT INTO `dict_def` VALUES ('100', '人事调用', '1001', '人事调用', '8', '总经理', null, null);

-- ----------------------------
-- Table structure for sm_resource
-- ----------------------------
DROP TABLE IF EXISTS `sm_resource`;
CREATE TABLE `sm_resource` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `res_name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '菜单名称',
  `parent_res` int(11) NOT NULL COMMENT '父级菜单编号',
  `res_index` int(11) NOT NULL COMMENT '菜单索引（菜单排序）',
  `res_target` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '菜单指向',
  `is_leaf` tinyint(4) NOT NULL COMMENT '是否是叶子节点 1：是 0 不是',
  `status` tinyint(4) NOT NULL COMMENT '状态 1 ：正常 0 失效',
  `res_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '菜单描述',
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sm_resource
-- ----------------------------

-- ----------------------------
-- Table structure for sm_role
-- ----------------------------
DROP TABLE IF EXISTS `sm_role`;
CREATE TABLE `sm_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '角色名称',
  `role_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sm_role
-- ----------------------------
INSERT INTO `sm_role` VALUES ('1', '客户角色', '这是客户拥有的角色');
INSERT INTO `sm_role` VALUES ('2', '超级管理员角色', '这是老板的角色');
INSERT INTO `sm_role` VALUES ('3', '店员角色', '这是店员角色');

-- ----------------------------
-- Table structure for sm_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sm_role_resource`;
CREATE TABLE `sm_role_resource` (
  `sm_role_res` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  `res_id` int(11) DEFAULT NULL COMMENT '菜单编号',
  PRIMARY KEY (`sm_role_res`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sm_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for sm_user
-- ----------------------------
DROP TABLE IF EXISTS `sm_user`;
CREATE TABLE `sm_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `salary` decimal(10,2) DEFAULT NULL COMMENT '薪资',
  `login_name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '登录名',
  `job` tinyint(4) DEFAULT NULL COMMENT '职务',
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `user_type` tinyint(4) DEFAULT NULL COMMENT '用户类型',
  `addr` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sm_user
-- ----------------------------
INSERT INTO `sm_user` VALUES ('1', 'dwk', '123456', '500000.00', 'duwk', '5', '18060480720', '2017-02-24 15:07:59', '2017-02-27 15:01:15', '1', '485');
INSERT INTO `sm_user` VALUES ('2', '李四', '654321', '8963.20', 'gll', '2', '18060480700', '2017-02-24 15:09:16', '2017-02-24 15:09:18', '2', '122321');
INSERT INTO `sm_user` VALUES ('3', 'wangwu', '123456', '874102.32', 'dy', '3', '1860480721', '2017-02-24 15:10:08', '2017-02-24 15:10:10', '3', '福州市马尾');
INSERT INTO `sm_user` VALUES ('4', 'dwk', '000000', '1000.00', 'kkkkk', '1', '88888', '2017-02-27 15:09:41', '2017-02-27 15:09:41', '2', '888');

-- ----------------------------
-- Table structure for sm_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sm_user_role`;
CREATE TABLE `sm_user_role` (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`role_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sm_user_role
-- ----------------------------
INSERT INTO `sm_user_role` VALUES ('1', '1', '2');
INSERT INTO `sm_user_role` VALUES ('2', '2', '1');
INSERT INTO `sm_user_role` VALUES ('3', '3', '3');

-- ----------------------------
-- Table structure for t_custom_made
-- ----------------------------
DROP TABLE IF EXISTS `t_custom_made`;
CREATE TABLE `t_custom_made` (
  `custom_made_id` int(11) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `shape` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`custom_made_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_custom_made
-- ----------------------------
INSERT INTO `t_custom_made` VALUES ('1', '10', '10', '10', '正方形', '2');

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '意见内容',
  `create_user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO `t_feedback` VALUES ('1', '挺好的', '2', '2017-02-27 13:46:04', '2017-02-27 13:46:06');
INSERT INTO `t_feedback` VALUES ('2', '最新定制的一笔材料存在问题', '3', '2017-02-27 13:46:50', '2017-02-27 13:46:53');

-- ----------------------------
-- Table structure for t_inventory
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory`;
CREATE TABLE `t_inventory` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `shape` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `num` int(11) DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_inventory
-- ----------------------------
INSERT INTO `t_inventory` VALUES ('1', '1.23', '10.25', '4.36', '长方形', '1864', '50');
INSERT INTO `t_inventory` VALUES ('2', '1.23', '12.3', '4.56', '长方形', '847', '43');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '通知栏内容',
  `create_time` datetime DEFAULT NULL COMMENT '有效时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '伪删除',
  `notice_title` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', '123', '2017-02-27 13:40:35', '0', '456', '2017-02-27 16:39:38');
INSERT INTO `t_notice` VALUES ('2', '明晚加班到八点', '2017-02-27 11:41:37', '1', '加班通知', '2017-02-27 16:52:43');
INSERT INTO `t_notice` VALUES ('3', '台风即将来临 请大家下班记得关窗锁门', '2017-02-27 13:42:32', '1', '台风预警', '2017-02-27 16:52:44');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `inventory_id` double DEFAULT NULL COMMENT '库存id',
  `num` int(11) NOT NULL COMMENT '出入库数量',
  `price` decimal(10,0) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1: 入库 （进货） 2：出库（售出）',
  `create_user_id` int(11) DEFAULT NULL COMMENT '店员或者客户',
  `create_time` datetime DEFAULT NULL,
  `sale_type` tinyint(4) DEFAULT NULL COMMENT '售后服务',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '样品id',
  `width` double NOT NULL,
  `height` double NOT NULL,
  `length` double NOT NULL,
  `shape` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '形状',
  `price` decimal(10,2) DEFAULT NULL COMMENT '出售价位',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态  1:可用 2：是否被伪删除',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '10.5', '1.23', '15.3', '长方形', '1523.50', '1');
INSERT INTO `t_product` VALUES ('2', '12.54', '5.36', '4.53', '长方形', '523.60', '1');

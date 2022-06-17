/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : ssm_vue

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2022-06-16 15:38:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO login VALUES ('lvq', '', '1234');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `card_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('15968162087363060', '身份证', '4264465547656467', '过突然', '男', '30', '办事人员和有关人员');
INSERT INTO user VALUES ('15968162346981977', '护照', '432532654364654', '规划图', '男', '29', '不便分类的其他从业人员');
INSERT INTO user VALUES ('15968162893439470', '身份证', '4354324534532', '具体办1', '男', '31', '农、林、牧、渔、水利业生产人员');
INSERT INTO user VALUES ('15968163245457143', '身份证', '43564546576687', '回各家', '男', '34', '未知');
INSERT INTO user VALUES ('15968163514764733', '军官证', '7657868', '缺口v4', '女', '23', '不便分类的其他从业人员');
INSERT INTO user VALUES ('15968165113694372', '台湾往来大陆通行证', '343214321412433214', '遗体ioy', '女', '48', '生产、运输设备操作人员及有关人员');
INSERT INTO user VALUES ('15968165371931786', '港澳居民通行证', '65765887989090909', '垂直发射的', '女', '35', '不便分类的其他从业人员');
INSERT INTO user VALUES ('15968941217553030', '身份证', '34354657665768768', '撒撒到', '男', '22', '军人');
INSERT INTO user VALUES ('15968943937844616', '身份证', '4454534436565756', '出手大', '女', '31', '不便分类的其他从业人员');
INSERT INTO user VALUES ('15968944123869023', '护照', '43225465457657', 'VCD法国', '女', '39', '农、林、牧、渔、水利业生产人员');
INSERT INTO user VALUES ('15968953962316864', '身份证', '342354325', '房东是个大帅哥', '女', '33', '商业、服务业人员');
INSERT INTO user VALUES ('15968954638794962', '身份证', '4305282000xxxxxxxx', 'lvq', '女', '40', '办事人员和有关人员');

/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : investigate

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-02-02 22:19:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `travel` varchar(255) NOT NULL,
  `back_time` varchar(255) NOT NULL,
  `healthy` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '2020-02-02 00:00:00', '1', '1', '1', '1', '1');
INSERT INTO `record` VALUES ('2', '2020-02-03 00:00:00', '2', '2', '2', '2', '1');
INSERT INTO `record` VALUES ('14', '2020-02-02 22:01:14', '3', '3', '3', '3', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT '12345678',
  `role` varchar(255) DEFAULT NULL,
  `flag` int(255) DEFAULT '0',
  `area` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_school` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, '123', '123', 'teacher', '1', '0', '0', '0', '23', '0', '1');
INSERT INTO `user` VALUES ('2', null, '456', '456', 'student', '1', '6', '6', '6', null, '6', '1');
INSERT INTO `user` VALUES ('3', null, 'admin', 'admin', 'admin', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('55', null, '13328762792', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('56', null, '13799266266', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('57', null, '18959232998', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('58', null, '13646025840', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('59', null, '13695003563', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('60', null, '15159216187', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('61', null, '18965829986', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('62', null, '18965155309', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('63', null, '13559228581', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('64', null, '18030128105', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('65', null, '13600912253', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('66', null, '18950187218', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('67', null, '13859902516', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('68', null, '13235025360', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('69', null, '15059590917', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('70', null, '18876337661', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('71', null, '18965156487', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('72', null, '18950135498', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('73', null, '13101431430', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('74', null, '15359352158', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('75', null, '15359025867', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('76', null, '13606042045', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('77', null, '18950182770', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('78', null, '13306005098', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('79', null, '13959234050', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('80', null, '13696900861', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('81', null, '13850040940', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('82', null, '18350265306', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('83', null, '18759211311', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('84', null, '13559206240', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('85', null, '13695011026', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('86', null, '13606086108', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('87', null, '18817556375', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('88', null, '13276963685', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('89', null, '13695017283', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('90', null, '15959352807', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('91', null, '13950046001', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('92', null, '15959292920', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('93', null, '13850062468', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('94', null, '13063081016', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('95', null, '13779929151', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('96', null, '15880268043', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('97', null, '13599511853', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('98', null, '13559201350', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('99', null, '13110934966', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('100', null, '13859901918', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('101', null, '13850034718', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('102', null, '18906015050', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('103', null, '15859299104', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('104', null, '13001251204', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('105', null, '15010430084', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('106', null, '15960398946', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('107', null, '13225037005', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('108', null, '13365922230', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('109', null, '15105984829', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('110', null, '13799790280', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('111', null, '13806086138', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('112', null, '18606928989', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('113', null, '13779955810', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('114', null, '13666061220', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('115', null, '13606055965', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('116', null, '15860721727', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('117', null, '13850082029', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('118', null, '18950183082', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('119', null, '13906016909', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('120', null, '13606046082', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('121', null, '18261835880', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('122', null, '13850032266', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('123', null, '18750922719', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('124', null, '15960399973', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('125', null, '15980262300', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('126', null, '13276021219', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('127', null, '15060786995', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('128', null, '13666035284', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('129', null, '13559231172', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('130', null, '18950182901', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('131', null, '13950109178', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('132', null, '18959289198', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('133', null, '13959221011', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('134', null, '18500079675', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('135', null, '15805931780', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('136', null, '13779925549', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('137', null, '18906052060', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('138', null, '13959248458', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('139', null, '15959298150', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('140', null, '15960389410', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('141', null, '13313848488', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('142', null, '13959279188', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('143', null, '13515966858', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('144', null, '13101431044', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('145', null, '13666090902', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('146', null, '13806040208', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('147', null, '13666072087', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('148', null, '13696954103', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('149', null, '18060939565', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('150', null, '13400789533', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('151', null, '18859256006', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('152', null, '13559213757', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('153', null, '13696963861', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('154', null, '18259221866', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('155', null, '13906019701', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('156', null, '13400730592', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('157', null, '18950181945', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('158', null, '18965158351', '12345678', 'teacher', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('159', null, '13696904387', '12345678', 'teacher', '0', null, null, null, null, null, null);

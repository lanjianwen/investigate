/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : investigate

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-02-08 21:01:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `place` varchar(255) DEFAULT NULL,
  `travel` varchar(255) DEFAULT NULL,
  `back_time` varchar(255) DEFAULT NULL,
  `healthy` varchar(255) DEFAULT NULL,
  `heat` double DEFAULT NULL,
  `is_ill` varchar(255) DEFAULT NULL,
  `is_touch` varchar(255) DEFAULT NULL,
  `is_quarantine` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('80', '2020-02-05 15:07:32', '', null, '', '', '0', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('81', '2020-02-05 15:07:35', '', null, '', '', '0', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('82', '2020-02-05 15:07:38', '', null, '', '发热（37度以上）,咳嗽', '0', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('83', '2020-02-05 15:06:06', '福建厦门', null, '2020-02-21', '发热（37度以上）,腹泻', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('84', '2020-02-05 15:08:04', '福建福州', null, '', '咳嗽', '36.7', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('85', '2020-02-05 20:03:59', '', null, '', '', '36.7', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('86', '2020-02-05 20:07:42', '', null, '', '', '36.7', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('87', '2020-02-05 20:15:41', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('88', '2020-02-06 10:12:20', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('89', '2020-02-06 10:14:08', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('90', '2020-02-06 10:24:48', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('91', '2020-02-06 10:55:09', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('92', '2020-02-06 11:04:24', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('93', '2020-02-06 11:06:59', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('94', '2020-02-06 11:20:14', '', null, '', '', '36.5', '否', '否', '否', null, '638');
INSERT INTO `record` VALUES ('95', '2020-02-06 11:24:33', '福建福州', null, '', '', '36.5', '否', '否', '否', null, '638');

-- ----------------------------
-- Table structure for resident
-- ----------------------------
DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `flag` int(255) DEFAULT '0',
  `area` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_school` int(4) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resident
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `flag` int(255) DEFAULT '0',
  `area` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_school` int(4) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `flag` int(255) DEFAULT '0',
  `area` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_school` int(4) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('196', '13328762792', '1', '福建福州', '集大', '男', '集美', '张三', '1', '638');
INSERT INTO `teacher` VALUES ('197', '13799266266', '1', '福建福州', '12', '12', '12', '1', '1', '639');
INSERT INTO `teacher` VALUES ('198', '18959232998', '1', '6', '6', '6', '6', '6', '1', '640');
INSERT INTO `teacher` VALUES ('199', '13646025840', '1', '4', '4', '4', '4', '4', '1', '641');
INSERT INTO `teacher` VALUES ('200', '13695003563', '1', '5', '5', '5', '5', '5', '1', '642');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1087 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('638', null, '13328762792', '12345678', 'teacher', '1');
INSERT INTO `user` VALUES ('639', null, '13799266266', '12345678', 'teacher', '1');
INSERT INTO `user` VALUES ('640', null, '18959232998', '12345678', 'teacher', '1');
INSERT INTO `user` VALUES ('641', null, '13646025840', '12345678', 'teacher', '1');
INSERT INTO `user` VALUES ('642', null, '13695003563', '12345678', 'teacher', '1');
INSERT INTO `user` VALUES ('643', null, '15159216187', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('644', null, '18965829986', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('645', null, '18965155309', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('646', null, '13559228581', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('647', null, '18030128105', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('648', null, '13600912253', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('649', null, '18950187218', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('650', null, '13859902516', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('651', null, '13235025360', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('652', null, '15059590917', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('653', null, '18876337661', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('654', null, '18965156487', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('655', null, '18950135498', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('656', null, '13101431430', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('657', null, '15359352158', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('658', null, '15359025867', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('659', null, '13606042045', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('660', null, '18950182770', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('661', null, '13306005098', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('662', null, '13959234050', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('663', null, '13696900861', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('664', null, '13850040940', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('665', null, '18350265306', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('666', null, '18759211311', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('667', null, '13559206240', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('668', null, '13695011026', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('669', null, '13606086108', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('670', null, '18817556375', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('671', null, '13276963685', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('672', null, '13695017283', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('673', null, '15959352807', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('674', null, '13950046001', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('675', null, '15959292920', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('676', null, '13850062468', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('677', null, '13063081016', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('678', null, '13779929151', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('679', null, '15880268043', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('680', null, '13599511853', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('681', null, '13559201350', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('682', null, '13110934966', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('683', null, '13859901918', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('684', null, '13850034718', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('685', null, '18906015050', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('686', null, '15859299104', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('687', null, '13001251204', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('688', null, '15010430084', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('689', null, '15960398946', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('690', null, '13225037005', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('691', null, '13365922230', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('692', null, '15105984829', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('693', null, '13799790280', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('694', null, '13806086138', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('695', null, '18606928989', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('696', null, '13779955810', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('697', null, '13666061220', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('698', null, '13606055965', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('699', null, '15860721727', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('700', null, '13850082029', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('701', null, '18950183082', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('702', null, '13906016909', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('703', null, '13606046082', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('704', null, '18261835880', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('705', null, '13850032266', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('706', null, '18750922719', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('707', null, '15960399973', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('708', null, '15980262300', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('709', null, '13276021219', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('710', null, '15060786995', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('711', null, '13666035284', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('712', null, '13559231172', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('713', null, '18950182901', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('714', null, '13950109178', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('715', null, '18959289198', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('716', null, '13959221011', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('717', null, '18500079675', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('718', null, '15805931780', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('719', null, '13779925549', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('720', null, '18906052060', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('721', null, '13959248458', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('722', null, '15959298150', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('723', null, '15960389410', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('724', null, '13313848488', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('725', null, '13959279188', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('726', null, '13515966858', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('727', null, '13101431044', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('728', null, '13666090902', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('729', null, '13806040208', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('730', null, '13666072087', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('731', null, '13696954103', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('732', null, '18060939565', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('733', null, '13400789533', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('734', null, '18859256006', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('735', null, '13559213757', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('736', null, '13696963861', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('737', null, '18259221866', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('738', null, '13906019701', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('739', null, '13400730592', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('740', null, '18950181945', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('741', null, '18965158351', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('742', null, '13696904387', '12345678', 'teacher', '0');
INSERT INTO `user` VALUES ('743', null, '15659262353', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('744', null, '18559647227', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('745', null, '15659260965', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('746', null, '15185332043', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('747', null, '18085421108', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('748', null, '15659450860', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('749', null, '15260093802', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('750', null, '18359251193', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('751', null, '18649686116', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('752', null, '18650156882', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('753', null, '18659201552', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('754', null, '13159262813', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('755', null, '15359223824', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('756', null, '15711584827', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('757', null, '13159202970', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('758', null, '13159272383', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('759', null, '13159272968', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('760', null, '18059828960', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('761', null, '17750923390', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('762', null, '18505065968', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('763', null, '18050075192', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('764', null, '17689393485', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('765', null, '13919029654', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('766', null, '15659837050', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('767', null, '15395927486', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('768', null, '15606975859', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('769', null, '15985719283', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('770', null, '15659450630', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('771', null, '19859215120', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('772', null, '18805057114', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('773', null, '13159232796', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('774', null, '18750082481', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('775', null, '15711579971', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('776', null, '18250795343', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('777', null, '13255901185', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('778', null, '18106932397', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('779', null, '19906042630', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('780', null, '17689657084', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('781', null, '13030827018', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('782', null, '18650433537', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('783', null, '18248533992', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('784', null, '13023928682', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('785', null, '15659458760', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('786', null, '15606959702', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('787', null, '18046139096', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('788', null, '18650176637', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('789', null, '13665092967', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('790', null, '15060283710', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('791', null, '15060755681', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('792', null, '18350251729', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('793', null, '18359877263', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('794', null, '13950015314', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('795', null, '17359892849', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('796', null, '15160708136', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('797', null, '18060993044', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('798', null, '15897051617', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('799', null, '18118983317', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('800', null, '18805057114', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('801', null, '18359667077', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('802', null, '15659452938', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('803', null, '15659266384', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('804', null, '15606979038', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('805', null, '18116310192', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('806', null, '15659288415', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('807', null, '18030055297', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('808', null, '13123367501', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('809', null, '13159259808', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('810', null, '13023911946', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('811', null, '13123370390', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('812', null, '18120788764', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('813', null, '15659458669', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('814', null, '13850641096', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('815', null, '15659458860', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('816', null, '13163998671', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('817', null, '15059347683', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('818', null, '13459784156', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('819', null, '15396171986', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('820', null, '15659816072', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('821', null, '15960490595', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('822', null, '18649683829', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('823', null, '13023938786', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('824', null, '15659289341', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('825', null, '18659201809', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('826', null, '18659200157', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('827', null, '13275001390', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('828', null, '15711580125', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('829', null, '13859771632', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('830', null, '18805050423', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('831', null, '13055501726', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('832', null, '13761452741', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('833', null, '15960645407', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('834', null, '18030207445', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('835', null, '180476297053', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('836', null, '13063079953', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('837', null, '13023908027', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('838', null, '18750145527', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('839', null, '15659450098', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('840', null, '18059826505', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('841', null, '15606978975', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('842', null, '15750755210', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('843', null, '13328375762', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('844', null, '15659289484', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('845', null, '15359112901', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('846', null, '15105957978', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('847', null, '18359292139', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('848', null, '13023914292', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('849', null, '15606955118', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('850', null, '13055516807', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('851', null, '13178356335', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('852', null, '18649685661', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('853', null, '15711503979', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('854', null, '15711517302', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('855', null, '15711517301', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('856', null, '17713020515', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('857', null, '17859625010', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('858', null, '17359898082', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('859', null, '15659451856', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('860', null, '18649686089', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('861', null, '18020715024', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('862', null, '18059540024', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('863', null, '18060971632', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('864', null, '15160123158', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('865', null, '18750058412', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('866', null, '18965885869', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('867', null, '13774808648', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('868', null, '13159272101', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('869', null, '13328320549', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('870', null, '18046427753', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('871', null, '18650290921', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('872', null, '15659290667', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('873', null, '15659451815', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('874', null, '17859719978', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('875', null, '15711501191', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('876', null, '18559809393', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('877', null, '17674945565', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('878', null, '18259289206', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('879', null, '15059373768', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('880', null, '18859287919', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('881', null, '18959561509', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('882', null, '17359898809', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('883', null, '18050772866', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('884', null, '17359898813', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('885', null, '17359898812', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('886', null, '18760262671', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('887', null, '18359721361', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('888', null, '17506023989', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('889', null, '15960577656', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('890', null, '13559047480', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('891', null, '13285970367', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('892', null, '15980137461', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('893', null, '15980716419', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('894', null, '15659296541', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('895', null, '13285970385', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('896', null, '15080308647', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('897', null, '15659262037', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('898', null, '13774831008', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('899', null, '13276041713', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('900', null, '15359605289', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('901', null, '13850220324', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('902', null, '15659456963', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('903', null, '18760545926', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('904', null, '17306028653', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('905', null, '18275119196', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('906', null, '18106972372', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('907', null, '18106932995', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('908', null, '15711580030', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('909', null, '18650178867', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('910', null, '18205994368', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('911', null, '18649689023', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('912', null, '13159279795', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('913', null, '18659229965', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('914', null, '15160708290', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('915', null, '15959205506', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('916', null, '18859932489', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('917', null, '13062156562', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('918', null, '18850981161', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('919', null, '15759675121', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('920', null, '15659454038', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('921', null, '13123387912', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('922', null, '15059050230', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('923', null, '18750606875', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('924', null, '18050491290', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('925', null, '15659261587', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('926', null, '13959476498', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('927', null, '17750600579', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('928', null, '18760265728', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('929', null, '18050578883', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('930', null, '15910895373', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('931', null, '13859880156', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('932', null, '13489289833', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('933', null, '18859239117', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('934', null, '17750626167', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('935', null, '18685380506', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('936', null, '18106908026', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('937', null, '18106930697', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('938', null, '13371000700', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('939', null, '15880750871', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('940', null, '13720850934', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('941', null, '15605024032', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('942', null, '15105962628', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('943', null, '13123392915', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('944', null, '13505097015', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('945', null, '18060296155', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('946', null, '13305031508', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('947', null, '18205966536', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('948', null, '15606976995', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('949', null, '18850176284', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('950', null, '18005992630', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('951', null, '15080106086', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('952', null, '18650177515', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('953', null, '13515934696', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('954', null, '18906999995', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('955', null, '15806097002', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('956', null, '17605074501', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('957', null, '15659298137', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('958', null, '18059873643', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('959', null, '13124023436', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('960', null, '15159235913', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('961', null, '17689600696', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('962', null, '13365956211', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('963', null, '15711500320', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('964', null, '14785843141', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('965', null, '13960166926', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('966', null, '18115756075', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('967', null, '18030305256', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('968', null, '15606971715', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('969', null, '18649688701', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('970', null, '13400933126', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('971', null, '15860045248', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('972', null, '13375909113', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('973', null, '18650159231', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('974', null, '13656085955', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('975', null, '15711506069', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('976', null, '15160708665', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('977', null, '13862430879', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('978', null, '18900318726', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('979', null, '18250711939', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('980', null, '18359633770', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('981', null, '15280707869', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('982', null, '13328306762', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('983', null, '15160709763', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('984', null, '13015711957', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('985', null, '15659452840', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('986', null, '13123360798', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('987', null, '13599039508', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('988', null, '13850218973', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('989', null, '18046228664', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('990', null, '15860045248', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('991', null, '13599873837', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('992', null, '15711506055', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('993', null, '18659238720', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('994', null, '13086903219', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('995', null, '17359898795', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('996', null, '15659281050', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('997', null, '18302536818', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('998', null, '13285970630', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('999', null, '15606951203', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1000', null, '18650151735', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1001', null, '18649687156', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1002', null, '18059530188', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1003', null, '18679687310', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1004', null, '13163909559', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1005', null, '18334048214', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1006', null, '18030205059', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1007', null, '15659280615', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1008', null, '18649689836', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1009', null, '18650173715', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1010', null, '18659282117', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1011', null, '15080380918', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1012', null, '13615076750', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1013', null, '13285970381', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1014', null, '15260554452', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1015', null, '18314670130', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1016', null, '18659289692', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1017', null, '18650176306', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1018', null, '18649688975', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1019', null, '18650173836', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1020', null, '16609368132', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1021', null, '15396201406', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1022', null, '15986028461', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1023', null, '1804622850', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1024', null, '18046228289', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1025', null, '18649689986', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1026', null, '18105079006', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1027', null, '13159265793', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1028', null, '13159258960', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1029', null, '13509357879', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1030', null, '18050856160', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1031', null, '17359898801', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1032', null, '15960792955', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1033', null, '13159256336', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1034', null, '13385928963', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1035', null, '13178277030', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1036', null, '18046227686', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1037', null, '15159096230', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1038', null, '15606005740', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1039', null, '15606095357', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1040', null, '13850403869', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1041', null, '18250687622', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1042', null, '13506037942', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1043', null, '18559671007', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1044', null, '13163998572', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1045', null, '15060346731', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1046', null, '17750505305', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1047', null, '13159253115', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1048', null, '15392421143', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1049', null, '13023909780', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1050', null, '18649689125', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1051', null, '13306010304', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1052', null, '18965825642', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1053', null, '13023920082', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1054', null, '15735350741', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1055', null, '18950186780', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1056', null, '18850051646', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1057', null, '18659278782', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1058', null, '15396148807', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1059', null, '18650158509', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1060', null, '15980095895', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1061', null, '18650158261', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1062', null, '18778285674', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1063', null, '13007800421', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1064', null, '17859720015', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1065', null, '18120765381', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1066', null, '15659290327', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1067', null, '18059876664', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1068', null, '15659678597', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1069', null, '18649687159', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1070', null, '15715049902', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1071', null, '15750985967', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1072', null, '15960131680', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1073', null, '15711584979', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1074', null, '18905081870', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1075', null, '15750728505', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1076', null, '18150409780', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1077', null, '13159265665', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1078', null, '15659281075', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1079', null, '18216698246', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1080', null, '18633178605', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1081', null, '15659281017', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1082', null, '13606049290', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1083', null, '18120767752', '12345678', 'student', '0');
INSERT INTO `user` VALUES ('1084', null, 'admin', 'admin', 'admin', '0');
INSERT INTO `user` VALUES ('1085', null, 'admint', 'admint', 'admin', '0');
INSERT INTO `user` VALUES ('1086', null, 'admins', 'admins', 'admin', '0');

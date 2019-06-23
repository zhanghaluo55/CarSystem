/*
Navicat MySQL Data Transfer

Source Server         : my_database
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-06-19 19:26:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', null, '12');
INSERT INTO `student` VALUES ('2', null, '12');

-- ----------------------------
-- Table structure for student1
-- ----------------------------
DROP TABLE IF EXISTS `student1`;
CREATE TABLE `student1` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `score` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student1
-- ----------------------------
INSERT INTO `student1` VALUES ('1', '张三', '18', '100.0');

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('1', '技术部');
INSERT INTO `tbl_dept` VALUES ('2', '开发部');
INSERT INTO `tbl_dept` VALUES ('3', '测试部');
INSERT INTO `tbl_dept` VALUES ('4', '公关部');
INSERT INTO `tbl_dept` VALUES ('5', '宣传部');

-- ----------------------------
-- Table structure for tbl_emp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', 'c8b1b0', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('2', '6c8d91', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('3', 'bead42', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('4', '771323', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('5', 'fa2894', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('6', '1cc535', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('7', '4fc626', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('8', '204177', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('9', 'a2b368', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('10', '2a0499', '女', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('11', '07bdf10', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('12', 'ab37911', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('13', '2da3112', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('14', '2bb5913', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('15', 'babad14', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('16', 'fdb6015', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('17', 'c874616', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('18', '39d2d17', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('19', '60f9b18', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('20', '6841519', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('21', 'fd22620', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('22', '020f221', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('23', '9ac3322', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('24', '1c09323', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('25', '52b2d24', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('26', '5c46a25', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('27', '76f5f26', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('28', '2d60f27', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('29', '1b3e128', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('30', '5106329', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('31', '27abe30', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('32', '29dc131', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('33', '0283e32', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('34', '4456733', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('35', '0bb8534', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('36', 'f133935', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('37', 'e9bc836', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('38', 'c43d437', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('39', '84f7638', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('40', '7f85139', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('41', 'dacd440', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('42', '1132f41', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('43', '0eacc42', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('44', 'd63fa43', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('45', 'af54144', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('46', 'e179a45', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('47', '908c546', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('48', '6475147', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('49', '22be348', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('50', 'b9ad749', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('51', '098e650', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('52', 'e5ab351', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('53', '6fad352', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('54', '8b5a353', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('55', '30ae154', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('56', '483de55', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('57', '9bb0a56', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('58', 'c800c57', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('59', '96faf58', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('60', '122b059', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('61', '00e2760', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('62', '789e161', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('63', '8540f62', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('64', '0a81063', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('65', '2b45f64', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('66', '7ee6865', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('67', '9efb766', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('68', '47ccd67', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('69', '39a7f68', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('70', '587d469', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('71', 'dcd8a70', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('72', '2583171', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('73', 'd942872', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('74', '1a01b73', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('75', 'ccc9374', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('76', '00f0675', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('77', '42bf176', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('78', 'e8f9277', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('79', '3b1ba78', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('80', '1d23b79', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('81', '1e97f80', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('82', '1986181', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('83', '26a2382', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('84', 'd976883', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('85', 'd82b784', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('86', 'e8fe985', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('87', '8b87186', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('88', '6674287', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('89', 'f38eb88', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('90', '7c1cc89', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('91', '56bc090', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('92', 'f6dc791', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('93', '594e792', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('94', '3773593', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('95', '9233194', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('96', 'ec40e95', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('97', '82a1e96', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('98', 'e8a5197', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('99', '5eb5598', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('100', 'a396899', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('101', 'c4b93100', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('102', '63c5c101', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('103', '72bf3102', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('104', 'b14c9103', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('105', '7beab104', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('106', '4f66b105', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('107', '026fe106', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('108', 'af835107', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('109', '86d18108', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('110', 'fa57e109', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('111', '58097110', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('112', '0370f111', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('113', 'ca3a8112', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('114', '6351a113', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('115', 'fb164114', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('116', '9a9ef115', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('117', 'b11b7116', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('118', '5b1a2117', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('119', '2d493118', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('120', '5a939119', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('121', 'fd413120', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('122', 'e6176121', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('123', 'bbfbe122', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('124', '475bb123', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('125', '157c0124', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('126', '31f13125', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('127', '0d41d126', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('128', '354c4127', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('129', '774e0128', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('130', '25f11129', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('131', 'd09bb130', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('132', '414c0131', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('133', 'f71c4132', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('134', 'fd7d5133', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('135', '38caf134', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('136', '5eee2135', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('137', '0c4a3136', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('138', 'fb807137', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('139', '8db03138', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('140', '648b3139', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('141', 'e2497140', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('142', 'aa16a141', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('143', 'b9f0a142', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('144', '8e938143', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('145', '2cf66144', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('146', '73139145', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('147', '60673146', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('148', '09747147', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('149', '4c088148', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('150', 'ef85e149', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('151', '78200150', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('152', '3b1d5151', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('153', '62762152', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('154', 'a7cdd153', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('155', '6f728154', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('156', '7f7cc155', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('157', 'fba16156', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('158', 'c7a7b157', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('159', '532c2158', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('160', '64486159', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('161', '3808d160', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('162', 'd886c161', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('163', '4a20f162', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('164', '19ab1163', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('165', '67a28164', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('166', 'c7965165', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('167', '50aaa166', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('168', 'bc1e4167', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('169', '6b3b6168', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('170', 'a2006169', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('171', '10dea170', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('172', 'ab25b171', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('173', '2daa4172', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('174', 'a03e3173', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('175', '78629174', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('176', '47d07175', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('177', '37e3b176', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('178', 'd19cf177', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('179', '8b2b3178', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('180', '8b64c179', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('181', 'e9205180', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('182', '01745181', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('183', '86950182', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('184', '7c604183', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('185', 'a338c184', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('186', '65170185', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('187', 'dc3a8186', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('188', 'ac027187', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('189', 'c1868188', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('190', '10b51189', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('191', 'a0ac6190', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('192', '48ffe191', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('193', '01c9d192', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('194', '5f6cc193', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('195', 'f9a07194', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('196', '2a597195', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('197', '7af4d196', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('198', '2d358197', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('199', 'ae346198', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('200', '827ac199', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('201', '44daa200', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('202', '0541f201', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('203', 'f5fc0202', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('204', 'ce667203', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('205', '20ac1204', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('206', 'f0f0f205', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('207', '22911206', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('208', '4f9ac207', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('209', '74a42208', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('210', 'b2ed5209', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('211', '49a15210', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('212', '52748211', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('213', '82dcf212', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('214', '2b15d213', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('215', '35912214', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('216', 'e31f3215', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('217', 'b91c8216', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('218', '9e3ca217', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('219', '7af98218', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('220', '620aa219', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('221', 'c90d1220', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('222', 'ef2d6221', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('223', 'b4c97222', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('224', '889ac223', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('225', 'b32ac224', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('226', '582eb225', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('227', 'd6361226', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('228', 'd38eb227', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('229', 'f09a3228', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('230', '17637229', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('231', '5b12e230', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('232', '40bdb231', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('233', 'a5d18232', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('234', '58c32233', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('235', '7c687234', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('236', '0b7cf235', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('237', 'e0bbd236', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('238', '5822e237', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('239', 'd0fca238', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('240', '86019239', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('241', 'fe22a240', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('242', '5094a241', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('243', 'a0433242', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('244', '8e2c4243', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('245', 'c3619244', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('246', 'e39ce245', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('247', '677ea246', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('248', '4fe09247', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('249', 'f75d2248', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('250', '46f3d249', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('251', 'e4957250', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('252', '45a7b251', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('253', '9a301252', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('254', '4fe9c253', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('255', 'c3aa5254', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('256', 'f6f9a255', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('257', 'c9428256', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('258', '0f197257', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('259', 'f5178258', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('260', '18f44259', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('261', 'ad3c7260', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('262', 'd047d261', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('263', 'f0394262', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('264', '6e636263', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('265', 'fff0f264', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('266', 'ec6a0265', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('267', 'b3f40266', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('268', '66129267', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('269', 'de2da268', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('270', '1f29b269', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('271', '0677d270', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('272', '25c57271', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('273', '73d81272', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('274', '9d834273', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('275', 'a7c13274', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('276', '33511275', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('277', '5f237276', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('278', '868b1277', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('279', '35d01278', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('280', '45cb7279', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('281', 'c0e5b280', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('282', '03774281', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('283', 'f4926282', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('284', '34084283', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('285', '8675b284', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('286', '254a4285', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('287', '04d3f286', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('288', '91ce5287', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('289', 'f920d288', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('290', '3e843289', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('291', 'ed7be290', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('292', '78755291', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('293', '6816b292', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('294', '39eca293', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('295', 'bf73d294', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('296', '93b65295', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('297', '22bb9296', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('298', '66bc2297', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('299', 'a7ad0298', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('300', 'c329c299', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('301', 'b3674300', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('302', '2b1f7301', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('303', 'cb668302', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('304', '1c576303', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('305', '51f99304', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('306', 'ace45305', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('307', 'ed89d306', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('308', 'eea7f307', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('309', 'c57af308', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('310', 'fe2ce309', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('311', 'e2ce9310', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('312', '67d40311', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('313', '5edf1312', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('314', '75da1313', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('315', '68ed0314', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('316', '445b9315', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('317', '8a84e316', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('318', 'a0808317', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('319', '20ed2318', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('320', '8da4a319', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('321', 'e0566320', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('322', '33181321', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('323', '23b05322', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('324', 'c4345323', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('325', '2fc14324', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('326', '7e05b325', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('327', 'eef06326', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('328', 'c0fdb327', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('329', '2ebe1328', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('330', '3bebe329', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('331', 'c9047330', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('332', '51ee0331', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('333', '0dcf7332', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('334', 'bccef333', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('335', 'e86ff334', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('336', '1f7f8335', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('337', 'a9d3d336', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('338', 'db8aa337', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('339', '4bc30338', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('340', '841ef339', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('341', '518ea340', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('342', 'f6809341', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('343', '69cc2342', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('344', '35f37343', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('345', '3d14f344', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('346', 'b9b83345', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('347', 'b6ff7346', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('348', 'aafbe347', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('349', 'e75f8348', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('350', 'fd8b5349', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('351', 'ff250350', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('352', '3b5df351', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('353', 'b987f352', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('354', 'c09a8353', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('355', '54b08354', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('356', 'e5f0e355', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('357', '9d31c356', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('358', '55c1a357', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('359', 'db527358', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('360', '31bd1359', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('361', '7f309360', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('362', '7b7a2361', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('363', '4e561362', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('364', '41865363', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('365', 'a8e91364', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('366', '77116365', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('367', 'aec23366', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('368', 'eb14a367', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('369', '8241e368', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('370', '03fe0369', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('371', 'e01e3370', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('372', '52a62371', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('373', '9ff0e372', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('374', 'e1cbf373', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('375', '8eb4e374', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('376', '6de1a375', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('377', '9f6c6376', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('378', 'b734b377', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('379', '53bc9378', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('380', 'f3b09379', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('381', 'ff03d380', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('382', '8b766381', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('383', '3ef1a382', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('384', '677a9383', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('385', 'cf7d7384', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('386', '63260385', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('387', '8afd4386', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('388', 'b6210387', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('389', '1b9d5388', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('390', '402d5389', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('391', '4ea52390', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('392', 'b49a0391', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('393', '341a6392', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('394', 'e27dc393', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('395', '51288394', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('396', '7083d395', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('397', 'dc292396', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('398', '24406397', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('399', 'cafb3398', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('400', 'fb9a0399', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('401', 'b45ed400', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('402', '946b9401', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('403', '77ba8402', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('404', '3736c403', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('405', '5b042404', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('406', 'dafbb405', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('407', '0b302406', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('408', '4a547407', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('409', 'ad8cb408', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('410', '1d70b409', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('411', '3ddf8410', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('412', 'debf9411', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('413', '8e322412', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('414', '8f86b413', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('415', 'd1b0d414', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('416', '3ce80415', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('417', '8db18416', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('418', '7253f417', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('419', '0b8ba418', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('420', '1f458419', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('421', '3875a420', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('422', '22a53421', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('423', '2202a422', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('424', '74c3b423', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('425', '526f5424', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('426', '3783e425', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('427', '16e5e426', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('428', '22f27427', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('429', 'f84c3428', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('430', '42f7a429', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('431', '8a459430', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('432', 'e04a0431', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('433', '834af432', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('434', '7bfa5433', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('435', '31d53434', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('436', 'a38c7435', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('437', '6eaa0436', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('438', '29125437', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('439', 'ca63f438', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('440', '07b7f439', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('441', 'c5313440', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('442', '91512441', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('443', 'ca981442', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('444', '5808f443', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('445', '788ca444', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('446', '61352445', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('447', '88372446', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('448', '48004447', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('449', '5c14a448', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('450', '19ee9449', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('451', 'c00a0450', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('452', '36cf2451', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('453', 'b99e2452', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('454', '83001453', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('455', '0f174454', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('456', '933f4455', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('457', '0cf9c456', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('458', '62f13457', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('459', 'affc9458', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('460', '8cc77459', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('461', 'c88bf460', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('462', 'f8ad0461', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('463', '5b274462', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('464', '43133463', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('465', '6f6ab464', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('466', '7a227465', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('467', '9618a466', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('468', 'b7099467', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('469', 'd8613468', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('470', '27693469', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('471', '5af2d470', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('472', 'b19e2471', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('473', 'db225472', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('474', '05747473', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('475', '9dc56474', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('476', '8f4ce475', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('477', '16eaa476', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('478', '88e6d477', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('479', 'a23b5478', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('480', '96b82479', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('481', '654f3480', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('482', '03b45481', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('483', '86ad7482', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('484', '62f9e483', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('485', 'f5c2a484', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('486', 'f9f16485', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('487', '7aaac486', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('488', 'ae4ad487', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('489', '97ff8488', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('490', '55127489', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('491', '9ee69490', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('492', '0f6bd491', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('493', 'bb994492', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('494', 'caf70493', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('495', 'f90db494', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('496', '258fe495', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('497', '81a74496', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('498', '61c77497', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('499', 'c1da4498', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('500', '13d49499', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('501', '411c1500', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('502', 'f253e501', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('503', '2ae41502', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('504', '75f36503', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('505', '8ac8d504', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('506', 'c0320505', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('507', '4d5da506', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('508', '2e9b7507', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('509', 'd2672508', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('510', 'a8de5509', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('511', '1c8ce510', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('512', '85029511', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('513', 'fe5bb512', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('514', 'b7b2c513', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('515', '678d7514', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('516', '06470515', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('517', '51009516', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('518', '208dc517', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('519', 'f4d12518', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('520', '3e755519', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('521', 'f26c0520', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('522', '3b2b7521', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('523', '1d729522', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('524', '207ad523', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('525', '4f649524', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('526', '897b6525', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('527', '21cc6526', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('528', 'e18bf527', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('529', '43ffb528', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('530', 'ea8fe529', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('531', 'dba79530', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('532', '5029b531', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('533', 'c4f6e532', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('534', '7fe96533', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('535', 'e7865534', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('536', 'eded7535', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('537', '5c2c8536', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('538', '5ed30537', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('539', 'a1a1e538', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('540', '216dd539', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('541', '83ed7540', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('542', '039a7541', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('543', '8ec86542', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('544', 'd5dfb543', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('545', 'e133f544', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('546', 'bf484545', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('547', '5c885546', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('548', '59a10547', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('549', '9a895548', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('550', '36783549', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('551', '1f31c550', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('552', '1945e551', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('553', '8efda552', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('554', '02eed553', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('555', '44eab554', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('556', '048ed555', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('557', '75f9b556', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('558', 'fb469557', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('559', 'e68a4558', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('560', '3db9e559', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('561', '485b7560', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('562', '5e3a2561', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('563', '0bb20562', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('564', 'e5a35563', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('565', '0b93e564', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('566', 'a637b565', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('567', '6ea78566', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('568', '8820f567', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('569', 'c578e568', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('570', '25e09569', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('571', 'db473570', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('572', '32492571', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('573', 'b40bf572', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('574', 'ac676573', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('575', 'be5d4574', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('576', '3a42f575', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('577', 'b1a90576', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('578', '7183d577', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('579', '731ff578', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('580', 'fa213579', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('581', 'bd081580', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('582', 'c5290581', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('583', '91cf2582', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('584', 'fab5d583', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('585', '94072584', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('586', '6a49c585', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('587', 'f3dae586', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('588', '5bfb6587', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('589', '00e32588', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('590', 'e1e2e589', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('591', '111ef590', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('592', '1f18e591', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('593', '3032a592', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('594', '98926593', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('595', '23aee594', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('596', 'b70a6595', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('597', 'ac259596', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('598', '1abde597', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('599', '621b8598', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('600', '9ea8d599', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('601', '2cd93600', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('602', '6bd3b601', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('603', '74986602', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('604', '12099603', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('605', 'd1da0604', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('606', '10457605', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('607', '6862e606', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('608', 'c26dc607', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('609', '29a34608', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('610', '663fd609', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('611', '22a54610', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('612', '54088611', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('613', '6d716612', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('614', '585b5613', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('615', 'a0d51614', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('616', 'd6528615', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('617', '7d0a2616', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('618', '41534617', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('619', '6a29a618', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('620', '240f6619', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('621', '674f2620', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('622', 'ff622621', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('623', 'cde0d622', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('624', 'caeb9623', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('625', 'c53b1624', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('626', '518c6625', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('627', 'c22d6626', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('628', '37dcb627', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('629', 'f9792628', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('630', 'dcb59629', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('631', 'e8907630', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('632', '3550b631', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('633', 'f48e1632', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('634', '6915e633', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('635', '77676634', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('636', '40263635', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('637', '4fad1636', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('638', 'c9964637', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('639', 'ec5bc638', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('640', '43311639', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('641', 'ea308640', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('642', 'cae7f641', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('643', '5b09a642', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('644', '662cb643', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('645', '38708644', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('646', 'e33b6645', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('647', 'd1e0f646', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('648', '5f94f647', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('649', 'f7420648', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('650', '3c18c649', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('651', '96a64650', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('652', '64896651', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('653', '90660652', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('654', '1a196653', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('655', '57f57654', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('656', 'a21a1655', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('657', 'c76b1656', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('658', '7b85a657', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('659', '157d9658', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('660', 'ddb5f659', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('661', '00de8660', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('662', 'f82a7661', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('663', '806ca662', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('664', '8cf32663', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('665', '3ffd8664', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('666', 'a5eca665', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('667', 'c833f666', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('668', 'ad6d9667', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('669', '6cac8668', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('670', 'f5af3669', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('671', '2fc26670', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('672', '12725671', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('673', '3cedb672', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('674', 'c028a673', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('675', '7bcdb674', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('676', '56912675', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('677', '13d2f676', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('678', 'b5b6e677', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('679', '2b508678', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('680', '10073679', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('681', '2e6b9680', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('682', 'a7f83681', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('683', '447a6682', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('684', '5a17f683', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('685', '55eb8684', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('686', '8677a685', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('687', '9fccb686', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('688', '01dff687', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('689', 'e8c20688', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('690', '79ef1689', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('691', '6e99e690', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('692', '8ac02691', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('693', '579dd692', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('694', '0c5d4693', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('695', '0c0c5694', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('696', 'f946d695', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('697', 'a0979696', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('698', '94c30697', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('699', 'c80d8698', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('700', 'a820b699', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('701', '4586f700', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('702', '915bb701', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('703', '258d4702', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('704', '76c86703', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('705', '1344f704', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('706', '1b246705', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('707', 'f3c91706', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('708', '4dd07707', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('709', 'd7bd3708', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('710', 'aceaf709', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('711', '9bf61710', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('712', 'b4786711', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('713', '75607712', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('714', 'c48e0713', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('715', '160cb714', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('716', '1d40d715', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('717', '5dbb4716', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('718', '614ed717', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('719', 'd784c718', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('720', '1b522719', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('721', 'a61af720', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('722', '707a3721', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('723', '3bd90722', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('724', 'ad49e723', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('725', '4a479724', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('726', '806a2725', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('727', '48c04726', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('728', '37e5c727', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('729', 'f343f728', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('730', '92629729', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('731', '23dce730', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('732', '45703731', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('733', '90d55732', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('734', '42417733', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('735', 'b5964734', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('736', '8ad12735', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('737', 'a965e736', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('738', '7a1bd737', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('739', 'e68c1738', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('740', '332b0739', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('741', '65acd740', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('742', '57279741', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('743', '47ab2742', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('744', '3f202743', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('745', 'f7c9f744', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('746', '2215d745', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('747', 'e3f51746', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('748', '0e51a747', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('749', '3cc33748', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('750', '4f071749', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('751', 'fb3db750', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('752', '90759751', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('753', 'd0649752', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('754', '810b8753', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('755', 'd610b754', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('756', '1f51a755', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('757', '7af0e756', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('758', '5cc19757', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('759', 'cc4c3758', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('760', '8f2d8759', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('761', '428c8760', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('762', 'bea9a761', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('763', '142d4762', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('764', 'f26c5763', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('765', '5143d764', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('766', '0a688765', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('767', 'f7f7d766', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('768', 'd7bc2767', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('769', '1a394768', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('770', '9a7fd769', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('771', '2caf6770', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('772', 'a4c72771', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('773', 'a1baa772', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('774', '03051773', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('775', '03a66774', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('776', '5193e775', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('777', 'dcfcb776', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('778', '15f7f777', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('779', 'f270e778', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('780', 'f1cc8779', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('781', '5758d780', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('782', 'b4d51781', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('783', 'f2b22782', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('784', '2c9a1783', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('785', '6ba1e784', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('786', '12438785', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('787', '3571b786', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('788', 'eedc1787', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('789', 'ef592788', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('790', 'db0d5789', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('791', '58fb4790', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('792', 'f4379791', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('793', 'dd985792', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('794', 'f3c4a793', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('795', 'd0b61794', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('796', 'f3c09795', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('797', '70b7b796', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('798', 'd55d1797', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('799', 'b01a9798', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('800', 'b7b8f799', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('801', '24ff2800', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('802', '9efd3801', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('803', '9c67c802', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('804', 'b5a70803', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('805', '0ff2f804', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('806', 'f6c67805', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('807', '24abc806', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('808', 'd29c6807', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('809', 'b64ca808', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('810', '2a32f809', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('811', 'fd5af810', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('812', '49b7f811', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('813', '078e0812', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('814', '79050813', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('815', 'b03b1814', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('816', 'deecb815', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('817', 'e70d1816', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('818', 'a95b4817', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('819', 'c48f1818', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('820', '90132819', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('821', 'f7c98820', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('822', 'ed2ab821', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('823', '1b607822', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('824', '51529823', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('825', 'db61f824', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('826', 'b4d31825', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('827', '40174826', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('828', '82092827', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('829', '8724a828', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('830', '93538829', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('831', '75db6830', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('832', '10b16831', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('833', '48b49832', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('834', 'e6ebd833', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('835', '22b9a834', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('836', 'd1ead835', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('837', '5f090836', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('838', '2cdf2837', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('839', 'fc0be838', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('840', '9b653839', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('841', '41fc8840', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('842', 'ec8f8841', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('843', '18f70842', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('844', 'd93ed843', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('845', 'd0f14844', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('846', 'e2e16845', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('847', 'caf50846', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('848', '57d3b847', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('849', 'ab681848', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('850', '9087f849', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('851', '45a91850', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('852', '4f3f9851', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('853', '551ae852', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('854', 'ff7b2853', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('855', '51c08854', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('856', 'e0cd9855', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('857', '26595856', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('858', 'ed18f857', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('859', '7a321858', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('860', '35958859', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('861', '92922860', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('862', 'aa9cd861', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('863', '5a3af862', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('864', 'd6494863', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('865', 'b8c27864', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('866', '5f654865', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('867', 'd6ba7866', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('868', 'a95d0867', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('869', '4e692868', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('870', '70e3d869', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('871', '8cbb4870', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('872', '67521871', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('873', 'a4cc9872', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('874', '8e09a873', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('875', '98497874', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('876', 'e6fdc875', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('877', '5d813876', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('878', 'd0a70877', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('879', '457a3878', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('880', '8286f879', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('881', 'aa73e880', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('882', '6bc8a881', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('883', '4bd22882', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('884', '96f10883', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('885', '7fa19884', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('886', '352f4885', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('887', 'c5314886', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('888', '5e4b8887', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('889', '79d37888', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('890', 'a5e91889', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('891', 'e3522890', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('892', 'fc37a891', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('893', '5de45892', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('894', '95ce2893', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('895', '30452894', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('896', 'a5883895', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('897', '79483896', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('898', '07e30897', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('899', 'ade86898', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('900', '70f4d899', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('901', '527ac900', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('902', 'c65ef901', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('903', '96f6b902', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('904', '65e03903', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('905', '3c55e904', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('906', '21b5a905', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('907', '40306906', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('908', '00c6b907', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('909', 'a2cc5908', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('910', 'fbbbd909', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('911', '55366910', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('912', '0fdf5911', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('913', '19228912', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('914', '417cc913', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('915', '4d0a2914', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('916', '00d43915', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('917', '7237c916', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('918', '375bc917', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('919', '83086918', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('920', '81f58919', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('921', 'f59e5920', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('922', 'da597921', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('923', '26ce4922', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('924', '2b9f7923', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('925', '312e6924', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('926', '6600f925', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('927', '743bc926', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('928', 'd2202927', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('929', '0eb11928', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('930', '9a70e929', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('931', 'b5b4c930', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('932', 'd8a8f931', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('933', 'a9fc8932', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('934', 'e6ce3933', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('935', 'da68e934', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('936', 'cb628935', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('937', 'b3f09936', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('938', 'fca38937', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('939', '46b01938', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('940', '278f6939', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('941', '8111c940', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('942', '99a81941', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('943', '08a42942', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('944', '077bd943', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('945', '92edf944', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('946', 'b50c1945', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('947', 'f5fba946', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('948', 'd6ee7947', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('949', '62aef948', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('950', '76677949', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('951', '14d01950', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('952', 'c9614951', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('953', '3fcbc952', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('954', '97be8953', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('955', '6a1a5954', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('956', '58b29955', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('957', '1e013956', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('958', 'fde4b957', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('959', '4a22e958', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('960', '3ab16959', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('961', '340cc960', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('962', '7a58b961', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('963', '16915962', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('964', '1dc80963', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('965', '7681e964', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('966', 'a2732965', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('967', '8ae62966', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('968', 'c4ab9967', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('969', '3f4e1968', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('970', 'fee9b969', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('971', 'ad9ff970', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('972', '8ff4d971', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('973', '86a45972', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('974', 'c9d59973', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('975', 'be288974', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('976', 'a84fc975', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('977', 'd6e5d976', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('978', 'fb284977', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('979', '9b7b9978', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('980', '9cc7f979', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('981', '59b3d980', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('982', '5145d981', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('983', 'a6f2c982', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('984', '32a94983', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('985', '6ffdd984', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('986', '07ee0985', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('987', 'b57aa986', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('988', '79d3d987', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('989', '2268f988', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('990', 'b774f989', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('991', '3e9f7990', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('992', '60527991', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('993', 'd5a6e992', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('994', '9e7a9993', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('995', '2cb75994', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('996', '91f2d995', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('997', 'bea6a996', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('998', '02b00997', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('999', '76216998', 'as', 'as', '1');
INSERT INTO `tbl_emp` VALUES ('1000', 'c2f88999', 'as', 'as', '1');

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `factory` varchar(255) DEFAULT NULL,
  `picturePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car
-- ----------------------------
INSERT INTO `t_car` VALUES ('1', '劳斯莱斯幻影2016款 6.7L 都会典藏版', '1288', '劳斯莱斯幻影2016款 6.7L 都会典藏版 彰显你的尊贵', '2', '20', '中大型车', '劳斯莱斯', '劳斯莱斯', '劳斯莱斯幻影');
INSERT INTO `t_car` VALUES ('2', '长安CS552017款 1.5T 手动炫目型', '9.8', '长安CS552017款 1.5T 手动炫目型 舒适宽敞', '0', '48', 'MPV', '长安', '长安汽车', '长安CS55');
INSERT INTO `t_car` VALUES ('3', '奔驰斯宾特2017款 行政总裁加长版', '188', '房车霸气精选 奔驰斯宾特2017款 行政总裁加长版', '0', '30', 'MPV', '奔驰', '车质尚环达牌奔驰房车', '奔驰斯宾特');
INSERT INTO `t_car` VALUES ('4', '九龙A62015款 纯电动', '9.98', '宽大节能环保 九龙A62015款 纯电动', '0', '80', 'MPV', '九龙', '九龙汽车', '九龙A6');
INSERT INTO `t_car` VALUES ('5', '长安CS352017款 1.6L 手动舒适型', '6.89', '居家旅行必备王牌 长安CS352017款 1.6L 手动舒适型', '1', '99', 'SUV', '长安', '长安汽车', '长安CS35');
INSERT INTO `t_car` VALUES ('6', '比亚迪S72017款 1.5T 手动豪华型', '10.99', '实惠不失大气 比亚迪S72017款 1.5T 手动豪华型', '2', '198', 'SUV', '比亚迪', '比亚迪', '比亚迪S7');
INSERT INTO `t_car` VALUES ('7', '长安逸动2018款 1.6L GDI 手动风尚型', '7.49', '帅气灵动飘逸 长安逸动2018款 1.6L GDI 手动风尚型', '0', '200', '紧凑型车', '长安', '长安汽车', '长安逸动');
INSERT INTO `t_car` VALUES ('8', '奇瑞E52014款 1.8L CVT卓悦天窗型', '8.48', '女士必备之选 奇瑞E52014款 1.8L CVT卓悦天窗型', '2', '298', '中型车', '奇瑞', '奇瑞汽车', '奇瑞E5');
INSERT INTO `t_car` VALUES ('9', '比亚迪G52014款 1.5TID 自动旗舰型', '10.29', '为妳定制 比亚迪G52014款 1.5TID 自动旗舰型', '0', '150', '中型车', '比亚迪', '比亚迪', '比亚迪G5');
INSERT INTO `t_car` VALUES ('10', '本田杰德2017款 1.8L 自动经典版 5座', '12.99', '睿智之选 本田杰德2017款 1.8L 自动经典版 5座', '0', '300', '中型车', '本田', '东风本田', '本田杰德');
INSERT INTO `t_car` VALUES ('11', '奔驰C级2017款 AMG C 43 4MATIC 特别版', '63.98', '低调高贵 奔驰C级2017款 AMG C 43 4MATIC 特别版', '5', '50', '中型车', '奔驰', '梅赛德斯_AMG', '奔驰C级');
INSERT INTO `t_car` VALUES ('12', '宝马M52018款 M5', '151.89', '蓝色魅影低调奢华 厂商直销没有中间商 宝马M52018款 M5', '0', '40', '中型车', '宝马', '宝马M', '宝马M5');
INSERT INTO `t_car` VALUES ('13', '奥迪A12016款 30 TFSI Sportback Design风尚版', '20.48', '户外休闲时尚 奥迪A12016款 30 TFSI Sportback Design风尚版', '20', '250', '小型车', '奥迪', '奥迪(进口)', '奥迪A1');
INSERT INTO `t_car` VALUES ('14', '本田飞度2018款 1.5L 手动舒适版', '7.38', '小巧实惠 本田飞度2018款 1.5L 手动舒适版', '30', '300', '小型车', '本田', '广汽本田', '本田飞度');
INSERT INTO `t_car` VALUES ('15', '本田锋范2018款 1.5L 手动进取版', '7.98', '低油耗便捷驾驶 本田锋范2018款 1.5L 手动进取版', '20', '400', '小型车', '本田', '广汽本田', '本田锋范');
INSERT INTO `t_car` VALUES ('22', '红旗L52014款 6.0L 帜尊版', '500', '尊贵之选 举足轻重的中国红 红旗L52014款 6.0L 帜尊版', '5', '20', '中大型', '红旗', '一汽红旗', '红旗L5');
INSERT INTO `t_car` VALUES ('23', '福特F1502017款 3.5T 性能版', '62.18', '彰显你的独特品味 福特F1502017款 3.5T 性能版', '6', '20', '皮卡', '福特', '福特', '福特F150');
INSERT INTO `t_car` VALUES ('24', '法拉利4882015款 488 GTB', '338.8', '炫酷之蓝 高贵之选 法拉利4882015款 488 GTB', '3', '20', '跑车', '法拉利', '法拉利', '法拉利488');
INSERT INTO `t_car` VALUES ('25', '本田CR-Z2012款 1.5L hybrid', '35.68', '户外运动不二之选 本田CR-Z2012款 1.5L hybrid', '10', '50', '跑车', '本田', '本田', '本田CR-Z');
INSERT INTO `t_car` VALUES ('26', '奔驰SL级2017款 SL 400', '109.8', '绚丽之白 横空出世 奔驰SL级2017款 SL 400', '9', '50', '跑车', '奔驰', '奔驰', '奔驰SL级');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) DEFAULT NULL,
  `qunatity` varchar(255) DEFAULT NULL,
  `odate` datetime DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `ocid` int(11) DEFAULT NULL,
  `ouid` int(11) DEFAULT NULL,
  `out_trade_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('80', '1288.00', '1', '2019-01-03 19:59:59', '已取消', '1', '1', '0');
INSERT INTO `t_order` VALUES ('81', '9.80', '1', '2019-01-04 15:48:55', '已付款', '2', '1', '20190104154855849');
INSERT INTO `t_order` VALUES ('82', '1288.00', '1', '2019-01-04 15:48:55', '未支付', '5', '2', '201901042242');
INSERT INTO `t_order` VALUES ('84', '7.49', '1', '2019-01-05 00:32:00', '未付款', '7', '1', '20190105003200815');
INSERT INTO `t_order` VALUES ('85', '6.89', '1', '2019-01-05 00:42:03', '已付款', '5', '1', '20190105004202479');
INSERT INTO `t_order` VALUES ('86', '10.99', '1', '2019-01-05 19:45:37', '已付款', '6', '1', '20190105194536887');
INSERT INTO `t_order` VALUES ('87', '8.48', '1', '2019-01-05 19:45:37', '已付款', '8', '1', '20190105194536879');
INSERT INTO `t_order` VALUES ('88', '10.99', '1', '2019-01-05 19:50:47', '已付款', '6', '1', '20190105195046826');
INSERT INTO `t_order` VALUES ('89', '8.48', '1', '2019-01-05 19:50:47', '已付款', '8', '1', '20190105195046969');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '张梓鸿', '管理员', '男', '13556510364', '2019-01-01 20:34:35', '超级管理员');
INSERT INTO `t_user` VALUES ('2', 'asd', 'asd', 'asd', 'asd', '女', 'asd', '2019-01-09 00:00:00', '普通用户');
INSERT INTO `t_user` VALUES ('3', 'asdasd', 'asd', 'asdasd', 'asdasd', '保密', 'asdasd', '2019-01-02 22:30:34', '普通用户');
INSERT INTO `t_user` VALUES ('4', 'asdf', 'asd', '傻屌', 'asdf', '男', '12345', null, '普通用户');
INSERT INTO `t_user` VALUES ('6', '呵呵呵', '12345', '阿拉蕾', '哈哈', '男', '3432432', null, '管理员');

/*
Navicat MySQL Data Transfer

Source Server         : shiyan
Source Server Version : 50168
Source Host           : 127.0.0.1:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2018-10-17 13:51:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add admin', '7', 'add_admin');
INSERT INTO `auth_permission` VALUES ('20', 'Can change admin', '7', 'change_admin');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete admin', '7', 'delete_admin');
INSERT INTO `auth_permission` VALUES ('22', 'Can add cardetail', '8', 'add_cardetail');
INSERT INTO `auth_permission` VALUES ('23', 'Can change cardetail', '8', 'change_cardetail');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete cardetail', '8', 'delete_cardetail');
INSERT INTO `auth_permission` VALUES ('25', 'Can add user', '9', 'add_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can change user', '9', 'change_user');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete user', '9', 'delete_user');
INSERT INTO `auth_permission` VALUES ('28', 'Can add buycaruser', '10', 'add_buycaruser');
INSERT INTO `auth_permission` VALUES ('29', 'Can change buycaruser', '10', 'change_buycaruser');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete buycaruser', '10', 'delete_buycaruser');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for carapp_admin
-- ----------------------------
DROP TABLE IF EXISTS `carapp_admin`;
CREATE TABLE `carapp_admin` (
  `adminusername` varchar(50) NOT NULL,
  `adminpassword` varchar(50) NOT NULL,
  PRIMARY KEY (`adminusername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carapp_admin
-- ----------------------------
INSERT INTO `carapp_admin` VALUES ('123', '123');
INSERT INTO `carapp_admin` VALUES ('刘应乾', '123');

-- ----------------------------
-- Table structure for carapp_buycaruser
-- ----------------------------
DROP TABLE IF EXISTS `carapp_buycaruser`;
CREATE TABLE `carapp_buycaruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyertel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carapp_buycaruser
-- ----------------------------
INSERT INTO `carapp_buycaruser` VALUES ('6', '13995970335');
INSERT INTO `carapp_buycaruser` VALUES ('7', '13995970335');

-- ----------------------------
-- Table structure for carapp_cardetail
-- ----------------------------
DROP TABLE IF EXISTS `carapp_cardetail`;
CREATE TABLE `carapp_cardetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pingpai` varchar(50) NOT NULL,
  `chexi` varchar(50) NOT NULL,
  `chexin` varchar(50) NOT NULL,
  `licheng` varchar(50) NOT NULL,
  `pailiang` varchar(50) NOT NULL,
  `biansuxiang` varchar(50) NOT NULL,
  `spsj` varchar(50) NOT NULL,
  `spd` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `zws` varchar(50) NOT NULL,
  `rylx` varchar(50) NOT NULL,
  `chezhu` varchar(50) NOT NULL,
  `lie1` varchar(50) NOT NULL,
  `lie2` varchar(50) NOT NULL,
  `lie3` varchar(50) NOT NULL,
  `lie4` varchar(50) NOT NULL,
  `lie5` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carapp_cardetail
-- ----------------------------
INSERT INTO `carapp_cardetail` VALUES ('1', '奔驰', 'C级', '2014款 E 260L 豪华型', '2万', '1.8', '自动', '2018-5', '湖北武汉', '30.14', '4', '汽油', 'liu1', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('2', '大众', '迈腾', '2017款 330TSI DSG 领先型', '3万', '1.8', '自动', '2017-6', '湖北黄石', '20.19万', '4', '汽油', 'liu2', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('3', '奥迪', 'A4L', '2018款  40 TFSI 进取型', '2.0', '2.0', '自动', '2018-4', '湖北武汉', '23', '4', '汽油', 'liu3', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('4', '东风风神', 'A60 ', '2016款 1.5L 手动豪华型', '2.52', '1.8', '自动', '2017-3', '黄石', '1.19', '4', '汽油', 'liu4', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('5', '福特', ' 锐界', '2016款 EcoBoost 330 V6', '2.01', '1.6', '手动', '2017-6', '黄石', '2.03', '4', '汽油', 'liu5', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('6', '标致', '4008', '2017款 350THP 精英版', '1.88万', '1.8', '手动', '2017-6', '宜昌', '2.55', '4', '汽油', 'liu6', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('7', '雪佛兰', '乐风', '2010款 1.4AT风尚版', '28.8万', '1.6', '手动', '2015-4', '黄石', '1.25', '4', '汽油', 'liu7', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('8', '奔驰', 'CLA级', '2016款 CLA 200 时尚型(进口)', '2.88', '2.0', '手动', '2016-9', '武汉', '55.25', '4', '汽油', 'liu8', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('9', '奥迪', 'A5', '2009款 2.0TFSI coupe(进口) ', '7.65', '1.8', '手动', '2010-7', '武汉', '5.66', '4', '汽油', 'liu9', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('13', '本田', '飞度', '2018手动版', '2万公里', '1.8', '自动', '2017-6', '武汉', '18000000', '4', '汽油', 'liuaa', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('14', '大众', '甲壳虫', 'NB', '84000', '5.6', '自动', '2010-7', '湖北黄石', '22', '3', '汽油', '刘应乾', '', '', '', '', '');
INSERT INTO `carapp_cardetail` VALUES ('15', '大众', '甲壳虫', 'NB', '84000', '5.6', '自动', '2017-6', '湖北黄石', '22', '3', '汽油', '刘应乾', '', '', '', '', '');

-- ----------------------------
-- Table structure for carapp_user
-- ----------------------------
DROP TABLE IF EXISTS `carapp_user`;
CREATE TABLE `carapp_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `lie1` varchar(50) NOT NULL,
  `lie2` varchar(50) NOT NULL,
  `lie3` varchar(50) NOT NULL,
  `lie4` varchar(50) NOT NULL,
  `lie5` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carapp_user
-- ----------------------------
INSERT INTO `carapp_user` VALUES ('4235', 'lyq', '1359', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('guazi', 'lyq961129', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu1', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu2', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu3', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu4', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu5', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu6', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu7', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu8', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liu9', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liuaa', '12345a', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('liuyignqian', 'liu19961129', '13995970335', '', '', '', '', '');
INSERT INTO `carapp_user` VALUES ('哈刘应乾', 'lyq961129', '13995970335', '', '', '', '', '');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'carapp', 'admin');
INSERT INTO `django_content_type` VALUES ('10', 'carapp', 'buycaruser');
INSERT INTO `django_content_type` VALUES ('8', 'carapp', 'cardetail');
INSERT INTO `django_content_type` VALUES ('9', 'carapp', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-09-19 05:45:59');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-09-19 05:46:02');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-09-19 05:46:03');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-09-19 05:46:03');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-09-19 05:46:03');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-09-19 05:46:03');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-09-19 05:46:03');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('13', 'carapp', '0001_initial', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('14', 'carapp', '0002_auto_20180919_1345', '2018-09-19 05:46:04');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2018-09-19 05:46:05');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

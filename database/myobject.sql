/*
Navicat MySQL Data Transfer

Source Server         : my_db
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : myobject

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-10-14 19:06:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `sid` tinyint(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `price` tinyint(10) NOT NULL,
  `oldprice` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '美国U.S.POLO ASSN.棒球领夹克服 ', '//img.alicdn.com/bao/uploaded/i4/2140763365/TB1XHPhbFTM8KJjSZFAXXaexXXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '127', null);
INSERT INTO `list` VALUES ('2', 'JANCYBONY 男士商务休闲夹克衫特惠（ 挺阔有型,翻领立领任选）（9', 'https://cdnimg.ocj.com.cn/item_images/item/15/32/5832/15325832-M.jpg', '99', '127');
INSERT INTO `list` VALUES ('3', '拉图玛（LATUMA） 经典时尚绵羊皮外套（反季特惠）', 'https://cdnimg.ocj.com.cn/item_images/item/15/32/5832/15325832-M.jpg', '127', null);
INSERT INTO `list` VALUES ('4', '卡帝乐鳄鱼男士英伦风翻领夹克', 'https://cdnimg.ocj.com.cn/item/product/2020/9/main_1599542505583_253M.jpg', '127', null);
INSERT INTO `list` VALUES ('5', '卡帝乐鳄鱼男士翻领夹克外套（限量特惠）', 'https://cdnimg.ocj.com.cn/item/product/2020/3/main_1584673087272_657M.jpg', '127', null);
INSERT INTO `list` VALUES ('6', '奥腾（Haut） 男士英伦格纹棒球领时尚休闲茄克', 'https://cdnimg.ocj.com.cn/item/product/2020/3/main_1585031321237_783M.jpg', '127', null);
INSERT INTO `list` VALUES ('7', '卡帝乐鳄鱼男士英伦风立领夹克', 'https://cdnimg.ocj.com.cn/item/product/2020/9/main_1600139852714_616M.jpg', '127', null);
INSERT INTO `list` VALUES ('8', 'JANCYBONY 男士休闲立领夹克衫（1934）', 'https://cdnimg.ocj.com.cn/item/product/2020/3/main_1583417350754_973M.jpg', '127', '127');

-- ----------------------------
-- Table structure for `ocjproject`
-- ----------------------------
DROP TABLE IF EXISTS `ocjproject`;
CREATE TABLE `ocjproject` (
  `sid` tinyint(3) NOT NULL AUTO_INCREMENT,
  `picurl` varchar(999) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float(10,0) NOT NULL,
  `oldprice` float(10,0) DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ocjproject
-- ----------------------------
INSERT INTO `ocjproject` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i2/30402319/O1CN011Rl7oM1T093vmCPUu_!!0-item_pic.jpg_200x200q90.jpg_.webp', '清依食 崇明麻鸭1100克*2只 加散养鸭950克*2只', '258', '0', '');
INSERT INTO `ocjproject` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i2/TB1gHopsOAKL1JjSZFoYXGgCFXa_M2.SS2_200x200q90.jpg_.webp', '正广和黑枸杞柠檬味汽水', '130', '0', '');
INSERT INTO `ocjproject` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i4/307116571/TB2vHgNaeUkyKJjSsphXXbdaVXa_!!307116571.jpg_200x200q90.jpg_.webp', '纽仕兰 新西兰原装进口纽仕兰牧场调制乳粉1kg*2 袋装 全', '199', '299', '');
INSERT INTO `ocjproject` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/i3/110713146/O1CN01mxyc7H1Z6ubjKHiO2_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '波尔亚伯爵 法国原瓶原装进口 干红葡萄酒 6瓶整箱装 红酒', '328', '0', '');
INSERT INTO `ocjproject` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i3/2056173505/TB1SPKxfuSSBuNjy0FlXXbBpVXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '52度五粮液浓香型白酒6瓶装（原厂原箱）新包装', '6288', '0', '');
INSERT INTO `ocjproject` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i4/TB1d5OEGFXXXXbFXFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '【App今日特价】昂立多邦 会员装二盒装', '370', '588', '[秋季滋补专场]');
INSERT INTO `ocjproject` VALUES ('7', 'https://img.alicdn.com/bao/uploaded/i2/1598695834/TB21g63bbZnBKNjSZFGXXbt3FXa_!!1598695834.jpg_200x200q90.jpg_.webp', '永安燕 燕窝（白燕盏）（50克）', '1399', '0', '[秋季滋补专场]');
INSERT INTO `ocjproject` VALUES ('8', 'https://img.alicdn.com/bao/uploaded/i1/874114626/TB2M4dsg6uhSKJjSspjXXci8VXa_!!874114626.jpg_200x200q90.jpg_.webp', '【电视团购】神象 冬虫夏草（8g/44-46根）／盒（加赠西', '1988', '2799', '[秋季滋补专场]');

-- ----------------------------
-- Table structure for `registry`
-- ----------------------------
DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry
-- ----------------------------
INSERT INTO `registry` VALUES ('6', 'yxx', '123', '2141414@qq.com', '2020-09-19 11:29:08');
INSERT INTO `registry` VALUES ('7', 'yxx', '123', '2141414@qq.com', '2020-09-19 11:29:12');
INSERT INTO `registry` VALUES ('8', '123', '', '', '2020-09-19 11:39:16');
INSERT INTO `registry` VALUES ('9', 'test', 'fgfgg', '3283573415@qq.com', '2020-09-19 11:42:22');

-- ----------------------------
-- Table structure for `registry_copy`
-- ----------------------------
DROP TABLE IF EXISTS `registry_copy`;
CREATE TABLE `registry_copy` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry_copy
-- ----------------------------

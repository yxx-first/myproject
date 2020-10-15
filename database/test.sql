/*
Navicat MySQL Data Transfer

Source Server         : my_db
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-10-14 19:05:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `guestlove`
-- ----------------------------
DROP TABLE IF EXISTS `guestlove`;
CREATE TABLE `guestlove` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float(7,2) NOT NULL,
  `sailnumber` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestlove
-- ----------------------------
INSERT INTO `guestlove` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i4/134925028/TB1GQSyk26H8KJjy0FjXXaXepXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '出口英国罗兰水墨青花原单陶瓷釉下彩西餐具牛排盘平盘碗咖啡杯碟', '99999.99', '100');
INSERT INTO `guestlove` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i1/3358546860/TB2znb6ahHI8KJjy1zbXXaxdpXa_!!3358546860.jpg_200x200q90.jpg_.webp', '家用陶瓷双耳烤盘长方形烤碗创意芝士盘烘焙餐具烤箱微波炉焗饭碗', '123.00', '50');
INSERT INTO `guestlove` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', '创意日式双耳长方盘鱼盘西餐牛排盘陶瓷餐具微波炉专用菜盘点心盘', '100.25', '25');
INSERT INTO `guestlove` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '创意日式双耳长方盘鱼盘西餐牛排盘陶瓷餐具微波炉专用菜盘点心盘', '56.89', '20');
INSERT INTO `guestlove` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', '花间树里|彩云| ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '冰种阳绿翡翠戒指女蛋面裸石戒面18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('43', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('44', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('45', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('46', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('47', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('48', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('49', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('50', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('51', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('52', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('53', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('54', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('55', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('56', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('57', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('58', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('59', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('60', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('61', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('62', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('63', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('64', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('65', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('66', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');
INSERT INTO `guestlove` VALUES ('67', 'https://img.alicdn.com/bao/uploaded/i3/2055550425/TB28vMzjPnD8KJjSspbXXbbEXXa_!!2055550425.jpg_200x200q90.jpg_.webp', 'ins北欧风金边陶瓷甜品盘平盘子菜盘西餐牛排盘子', '100.25', '25');
INSERT INTO `guestlove` VALUES ('68', 'https://img.alicdn.com/bao/uploaded/i2/753580051/O1CN01lQuQNJ1CFOmGEYbg5_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '18K金镶嵌', '56.89', '20');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry_copy
-- ----------------------------
INSERT INTO `registry_copy` VALUES ('6', 'yxx', '123', '2141414@qq.com', '2020-09-19 11:29:08');
INSERT INTO `registry_copy` VALUES ('7', 'yxx', '123', '2141414@qq.com', '2020-09-19 11:29:12');
INSERT INTO `registry_copy` VALUES ('8', '123', '', '', '2020-09-19 11:39:16');
INSERT INTO `registry_copy` VALUES ('9', 'test', 'fgfgg', '3283573415@qq.com', '2020-09-19 11:42:22');

-- ----------------------------
-- Table structure for `taobaogoods`
-- ----------------------------
DROP TABLE IF EXISTS `taobaogoods`;
CREATE TABLE `taobaogoods` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float(7,2) unsigned NOT NULL,
  `sailnumber` tinyint(3) unsigned NOT NULL,
  `piclisturl` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taobaogoods
-- ----------------------------
INSERT INTO `taobaogoods` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '木邻 北欧电视柜现代简约小户型白橡木樱桃木客厅家具实木电视柜', '99.00', '15', 'https://img.alicdn.com/bao/uploaded/i2/30402319/O1CN011Rl7oM1T093vmCPUu_!!0-item_pic.jpg_200x200q90.jpg_.webp,https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '怀孕期居家无钢圈中长款宽松孕妇打底衫长袖打底t恤上衣女秋冬装', '39.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i4/307116571/TB2vHgNaeUkyKJjSsphXXbdaVXa_!!307116571.jpg_200x200q90.jpg_.webp', '高帮男女运动拳击贴肤软鞋沙滩鞋溯溪涉水防滑游泳潜水浮潜漂流鞋', '35.84', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/i3/110713146/O1CN01mxyc7H1Z6ubjKHiO2_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '一次性吸管整箱6000支可弯饮料果汁豆浆吸管', '59.00', '112', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i1/2275024826/TB2xNbvdxlmpuFjSZPfXXc9iXXa_!!2275024826.jpg_200x200q90.jpg_.webp', '正品墨西哥5A净水蓝珀手串纯天然蜜蜡佛珠琥珀圆珠单圈手链男女款', '58.99', '10', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i3/2056173505/TB1SPKxfuSSBuNjy0FlXXbBpVXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '夏季透气洞洞鞋女沙滩鞋防滑轻便鸟巢拖鞋户外速干涉水鞋女度假鞋', '19.99', '88', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('9', 'https://img.alicdn.com/bao/uploaded/i4/TB1d5OEGFXXXXbFXFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '折叠懒人沙发 可爱创意日式榻榻米 客厅卧室飘窗组合随心拼沙发椅', '250.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('10', 'https://img.alicdn.com/bao/uploaded/i2/1598695834/TB21g63bbZnBKNjSZFGXXbt3FXa_!!1598695834.jpg_200x200q90.jpg_.webp', '北欧单人现代简约布艺懒人小户型沙发迷你阳台卧室拆洗休闲沙发椅', '228.00', '102', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('11', 'https://img.alicdn.com/bao/uploaded/i1/874114626/TB2M4dsg6uhSKJjSspjXXci8VXa_!!874114626.jpg_200x200q90.jpg_.webp', '多功能布艺床上懒人沙发单人飘窗榻榻米网咖电脑无腿可调节折叠椅', '218.00', '42', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('12', 'https://img.alicdn.com/bao/uploaded/i3/43844436/O1CN01PWybgq1idjXJyMYCd_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '美克美家公园大道美式轻奢实木圆餐桌软包实', '2759.00', '38', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('13', 'https://gma.alicdn.com/bao/uploaded/i3/1756006063748529324/TB2iD.PtbVkpuFjSspcXXbSMVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '对抗服足球篮球训练背心成人儿童分队组训练', '12.00', '123', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('14', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01v962me1lbOJCKSnFq_!!0-saturn_solar.jpg_200x200.jpg_.webp', '电动洗鼻器壶机仪冲鼻水流喷雾窦腔成人儿童', '77.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('15', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01WDhG3z1lbOJXP9x4S_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国SinuPulse洗鼻仪洗鼻瓶洗鼻壶', '123.00', '12', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('16', 'https://gma.alicdn.com/bao/uploaded/i3/324010021/O1CN01ZmGWv41C1euHnoSMT_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国NOWFIT艾尔健椭圆机', '89.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('17', 'https://gma.alicdn.com/bao/uploaded/i1/43610982/O1CN01HeUhk31J7nWXh4xoS_!!0-saturn_solar.jpg_200x200.jpg_.webp', '羽毛球服套装男女款乒乓球夏跑步运动服定制', '35.00', '66', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('18', 'https://gma.alicdn.com/bao/uploaded/i2/28340651/O1CN01DXWul61GgCQgFRmI7_!!0-saturn_solar.jpg_200x200.jpg_.webp', '跪乳羊秋季运动会儿童校服套装小学生运动服', '442.00', '89', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/i1/2378279334/TB1BQpcSVXXXXajaXXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '新娘敬酒服2020新款时尚短款宴会聚会结婚红色连衣裙修身显瘦礼服', '110.00', '56', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '预售kikc连帽风衣2019秋季新款', '379.00', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '预售kikc连帽风衣2019秋季新款', '379.00', '100', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `isd` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`isd`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('22', 'yxx', '123', '3283573415@qq.com', '2020-09-19 19:38:02');
INSERT INTO `test` VALUES ('23', '', '', '', '2020-09-19 19:47:25');
INSERT INTO `test` VALUES ('24', '', '', '', '2020-09-19 19:49:11');
INSERT INTO `test` VALUES ('25', '', '', '', '2020-09-19 19:49:12');
INSERT INTO `test` VALUES ('26', '', '', '', '2020-09-19 19:49:57');
INSERT INTO `test` VALUES ('27', '', '', '', '2020-09-19 19:50:16');
INSERT INTO `test` VALUES ('28', '', '', '', '2020-09-19 19:50:17');
INSERT INTO `test` VALUES ('29', '', '', '', '2020-09-19 19:50:18');
INSERT INTO `test` VALUES ('30', '', '', '', '2020-09-19 19:51:02');
INSERT INTO `test` VALUES ('31', '', '', '', '2020-09-19 19:51:15');
INSERT INTO `test` VALUES ('32', '', '', '', '2020-09-19 20:05:46');
INSERT INTO `test` VALUES ('33', '', '', '', '2020-09-19 20:08:07');
INSERT INTO `test` VALUES ('34', '', '', '', '2020-09-19 20:08:08');
INSERT INTO `test` VALUES ('35', '', '', '', '2020-09-19 20:08:15');
INSERT INTO `test` VALUES ('36', '', '', '', '2020-09-19 20:08:16');
INSERT INTO `test` VALUES ('37', '', '', '', '2020-09-19 20:08:21');
INSERT INTO `test` VALUES ('38', '', '', '', '2020-09-19 20:08:28');

/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 127.0.0.1:3306
 Source Schema         : auction

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 29/10/2018 22:18:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(2000) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction
-- ----------------------------
BEGIN;
INSERT INTO `auction` VALUES (1001, 'Awesome Auction', '2018-06-01 12:00:00', '2018-06-06 12:00:00');
INSERT INTO `auction` VALUES (1002, 'Great Auction', '2018-06-02 14:00:00', '2018-06-07 14:00:00');
INSERT INTO `auction` VALUES (1003, 'Super Auction', '2018-06-03 08:00:00', '2018-06-08 08:00:00');
INSERT INTO `auction` VALUES (1004, 'Stupendous Auction', '2018-06-04 20:00:00', '2018-06-09 20:00:00');
INSERT INTO `auction` VALUES (1005, NULL, NULL, NULL);
INSERT INTO `auction` VALUES (1006, NULL, NULL, NULL);
INSERT INTO `auction` VALUES (1007, NULL, NULL, NULL);
INSERT INTO `auction` VALUES (1008, NULL, NULL, NULL);
INSERT INTO `auction` VALUES (1009, 'aaaaaa', NULL, NULL);
INSERT INTO `auction` VALUES (1010, 'abcd', '2018-01-01 00:00:00', '2018-01-02 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `picture_id` int(10) NOT NULL AUTO_INCREMENT,
  `picture_url` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`picture_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
BEGIN;
INSERT INTO `image` VALUES (1, 'www.bidfta.com/imageEM86721_1', 'EM86721');
INSERT INTO `image` VALUES (2, 'www.bidfta.com/imageEM86721_2', 'EM86721');
INSERT INTO `image` VALUES (3, 'www.bidfta.com/imageEM86722_3', 'EM86721');
INSERT INTO `image` VALUES (4, 'www.bidfta.com/imageEM86722_4', 'EM86721');
INSERT INTO `image` VALUES (5, 'www.bidfta.com/imageEM86722_5', 'EM86721');
INSERT INTO `image` VALUES (6, 'www.bidfta.com/imageEM86722_6', 'EM86722');
INSERT INTO `image` VALUES (7, 'www.bidfta.com/imageEM86722_7', 'EM86722');
INSERT INTO `image` VALUES (8, 'www.bidfta.com/imageEM86723_8', 'EM86722');
INSERT INTO `image` VALUES (9, 'www.bidfta.com/imageEM86723_9', 'EM86722');
INSERT INTO `image` VALUES (10, 'www.bidfta.com/imageEM86723_10', 'EM86722');
INSERT INTO `image` VALUES (11, 'www.bidfta.com/imageEM86723_11', 'EM86723');
INSERT INTO `image` VALUES (12, 'www.bidfta.com/imageEM86723_12', 'EM86723');
INSERT INTO `image` VALUES (13, 'www.bidfta.com/imageEM86724_13', 'EM86723');
INSERT INTO `image` VALUES (14, 'www.bidfta.com/imageEM86724_14', 'EM86723');
INSERT INTO `image` VALUES (15, 'www.bidfta.com/imageEM86724_15', 'EM86723');
INSERT INTO `image` VALUES (16, 'www.bidfta.com/imageEM86724_16', 'EM86724');
INSERT INTO `image` VALUES (17, 'www.bidfta.com/imageEM86724_17', 'EM86724');
INSERT INTO `image` VALUES (18, 'www.bidfta.com/imageEM86725_18', 'EM86724');
INSERT INTO `image` VALUES (19, 'www.bidfta.com/imageEM86725_19', 'EM86724');
INSERT INTO `image` VALUES (20, 'www.bidfta.com/imageEM86725_20', 'EM86724');
INSERT INTO `image` VALUES (21, 'www.bidfta.com/imageEM86725_21', 'EM86725');
INSERT INTO `image` VALUES (22, 'www.bidfta.com/imageEM86725_22', 'EM86725');
INSERT INTO `image` VALUES (23, 'www.bidfta.com/imageEM86726_23', 'EM86725');
INSERT INTO `image` VALUES (24, 'www.bidfta.com/imageEM86726_24', 'EM86725');
INSERT INTO `image` VALUES (25, 'www.bidfta.com/imageEM86726_25', 'EM86725');
INSERT INTO `image` VALUES (26, 'www.bidfta.com/imageEM86726_26', 'EM86726');
INSERT INTO `image` VALUES (27, 'www.bidfta.com/imageEM86726_27', 'EM86726');
INSERT INTO `image` VALUES (28, 'www.bidfta.com/imageEM86727_28', 'EM86726');
INSERT INTO `image` VALUES (29, 'www.bidfta.com/imageEM86727_29', 'EM86726');
INSERT INTO `image` VALUES (30, 'www.bidfta.com/imageEM86727_30', 'EM86726');
INSERT INTO `image` VALUES (31, 'www.bidfta.com/imageEM86727_31', 'EM86727');
INSERT INTO `image` VALUES (32, 'www.bidfta.com/imageEM86727_32', 'EM86727');
INSERT INTO `image` VALUES (33, 'www.bidfta.com/imageEM86728_33', 'EM86727');
INSERT INTO `image` VALUES (34, 'www.bidfta.com/imageEM86728_34', 'EM86727');
INSERT INTO `image` VALUES (35, 'www.bidfta.com/imageEM86728_35', 'EM86727');
INSERT INTO `image` VALUES (36, 'www.bidfta.com/imageEM86728_36', 'EM86728');
INSERT INTO `image` VALUES (37, 'www.bidfta.com/imageEM86728_37', 'EM86728');
INSERT INTO `image` VALUES (38, 'www.bidfta.com/imageEM86729_38', 'EM86728');
INSERT INTO `image` VALUES (39, 'www.bidfta.com/imageEM86729_39', 'EM86728');
INSERT INTO `image` VALUES (40, 'www.bidfta.com/imageEM86729_40', 'EM86728');
INSERT INTO `image` VALUES (41, 'www.bidfta.com/imageEM86729_41', 'EM86729');
INSERT INTO `image` VALUES (42, 'www.bidfta.com/imageEM86729_42', 'EM86729');
INSERT INTO `image` VALUES (43, 'www.bidfta.com/imageEM867210_43', 'EM86729');
INSERT INTO `image` VALUES (44, 'www.bidfta.com/imageEM867210_44', 'EM86729');
INSERT INTO `image` VALUES (45, 'www.bidfta.com/imageEM867210_45', 'EM86729');
INSERT INTO `image` VALUES (46, 'www.bidfta.com/imageEM867210_46', 'EM867210');
INSERT INTO `image` VALUES (47, 'www.bidfta.com/imageEM867210_47', 'EM867210');
INSERT INTO `image` VALUES (48, 'www.bidfta.com/imageEM867210_48', 'EM867210');
INSERT INTO `image` VALUES (49, 'www.bidfta.com/imageEM867211_49', 'EM867210');
INSERT INTO `image` VALUES (50, 'www.bidfta.com/imageEM867211_50', 'EM867210');
INSERT INTO `image` VALUES (51, 'www.bidfta.com/imageEM867211_51', 'EM867210');
INSERT INTO `image` VALUES (52, 'www.bidfta.com/imageEM867211_52', 'EM867211');
INSERT INTO `image` VALUES (53, 'www.bidfta.com/imageEM867211_53', 'EM867211');
INSERT INTO `image` VALUES (54, 'www.bidfta.com/imageEM867212_54', 'EM867211');
INSERT INTO `image` VALUES (55, 'www.bidfta.com/imageEM867212_55', 'EM867211');
INSERT INTO `image` VALUES (56, 'www.bidfta.com/imageEM867212_56', 'EM867211');
INSERT INTO `image` VALUES (57, 'www.bidfta.com/imageEM867212_57', 'EM867212');
INSERT INTO `image` VALUES (58, 'www.bidfta.com/imageEM867212_58', 'EM867212');
INSERT INTO `image` VALUES (59, 'www.bidfta.com/imageEM867213_59', 'EM867212');
INSERT INTO `image` VALUES (60, 'www.bidfta.com/imageEM867213_60', 'EM867212');
INSERT INTO `image` VALUES (61, 'www.bidfta.com/imageEM867213_61', 'EM867212');
INSERT INTO `image` VALUES (62, 'www.bidfta.com/imageEM867213_62', 'EM867213');
INSERT INTO `image` VALUES (63, 'www.bidfta.com/imageEM867213_63', 'EM867213');
INSERT INTO `image` VALUES (64, 'www.bidfta.com/imageEM867214_64', 'EM867213');
INSERT INTO `image` VALUES (65, 'www.bidfta.com/imageEM867214_65', 'EM867213');
INSERT INTO `image` VALUES (66, 'www.bidfta.com/imageEM867214_66', 'EM867213');
INSERT INTO `image` VALUES (67, 'www.bidfta.com/imageEM867214_67', 'EM867214');
INSERT INTO `image` VALUES (68, 'www.bidfta.com/imageEM867214_68', 'EM867214');
INSERT INTO `image` VALUES (69, 'www.bidfta.com/imageEM867215_69', 'EM867214');
INSERT INTO `image` VALUES (70, 'www.bidfta.com/imageEM867215_70', 'EM867214');
INSERT INTO `image` VALUES (71, 'www.bidfta.com/imageEM867215_71', 'EM867214');
INSERT INTO `image` VALUES (72, 'www.bidfta.com/imageEM867215_72', 'EM867215');
INSERT INTO `image` VALUES (73, 'www.bidfta.com/imageEM867215_73', 'EM867215');
INSERT INTO `image` VALUES (74, 'www.bidfta.com/imageEM867216_74', 'EM867215');
INSERT INTO `image` VALUES (75, 'www.bidfta.com/imageEM867216_75', 'EM867215');
INSERT INTO `image` VALUES (76, 'www.bidfta.com/imageEM867216_76', 'EM867215');
INSERT INTO `image` VALUES (77, 'www.bidfta.com/imageEM867216_77', 'EM867216');
INSERT INTO `image` VALUES (78, 'www.bidfta.com/imageEM867216_78', 'EM867216');
INSERT INTO `image` VALUES (79, 'www.bidfta.com/imageEM867217_79', 'EM867216');
INSERT INTO `image` VALUES (80, 'www.bidfta.com/imageEM867217_80', 'EM867216');
INSERT INTO `image` VALUES (81, 'www.bidfta.com/imageEM867217_81', 'EM867216');
INSERT INTO `image` VALUES (82, 'www.bidfta.com/imageEM867217_82', 'EM867217');
INSERT INTO `image` VALUES (83, 'www.bidfta.com/imageEM867217_83', 'EM867217');
INSERT INTO `image` VALUES (84, 'www.bidfta.com/imageEM867218_84', 'EM867217');
INSERT INTO `image` VALUES (85, 'www.bidfta.com/imageEM867218_85', 'EM867217');
INSERT INTO `image` VALUES (86, 'www.bidfta.com/imageEM867218_86', 'EM867217');
INSERT INTO `image` VALUES (87, 'www.bidfta.com/imageEM867218_87', 'EM867218');
INSERT INTO `image` VALUES (88, 'www.bidfta.com/imageEM867218_88', 'EM867218');
INSERT INTO `image` VALUES (89, 'www.bidfta.com/imageEM867219_89', 'EM867218');
INSERT INTO `image` VALUES (90, 'www.bidfta.com/imageEM867219_90', 'EM867218');
INSERT INTO `image` VALUES (91, 'www.bidfta.com/imageEM867219_91', 'EM867218');
INSERT INTO `image` VALUES (92, 'www.bidfta.com/imageEM867219_92', 'EM867219');
INSERT INTO `image` VALUES (93, 'www.bidfta.com/imageEM867219_93', 'EM867219');
INSERT INTO `image` VALUES (94, 'www.bidfta.com/imageEM867220_94', 'EM867219');
INSERT INTO `image` VALUES (95, 'www.bidfta.com/imageEM867220_95', 'EM867219');
INSERT INTO `image` VALUES (96, 'www.bidfta.com/imageEM867220_96', 'EM867219');
INSERT INTO `image` VALUES (97, 'www.bidfta.com/imageEM867220_97', 'EM867220');
INSERT INTO `image` VALUES (98, 'www.bidfta.com/imageEM867220_98', 'EM867220');
INSERT INTO `image` VALUES (99, 'www.bidfta.com/imageEM867220_99', 'EM867220');
INSERT INTO `image` VALUES (100, 'www.bidfta.com/imageEM867220_100', 'EM867220');
COMMIT;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` varchar(255) DEFAULT NULL,
  `item_brand` varchar(255) DEFAULT NULL,
  `item_desc` text,
  `MSRP` double(10,2) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `load_number` int(11) DEFAULT NULL,
  `lotter_id` int(10) DEFAULT NULL,
  `auction_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('EM86722', 'DYNA-GLO', 'DYNA-GLO DGO1176BDC-D CHARCOAL OFFSET SMOKER', 219.00, 'DGO1176BDC-D', 22960, 45, 1001);
INSERT INTO `item` VALUES ('EM86723', 'ELKAY', 'ELKAY DSE233194 DAYTON ELITE 20 GAUGE STAINLESS STEEL DOUBLE BOWL TOP MOUNT KITCHEN SINK, 33 X 19 X 8\"', 331.00, 'DSE233194', 22960, 45, 1001);
INSERT INTO `item` VALUES ('EM86724', 'EVENFLO', 'EVENFLO POSITION AND LOCK TALL PRESSURE MOUNT WOOD GATE', 29.99, '6622100', 22960, 45, 1001);
INSERT INTO `item` VALUES ('EM86725', 'EVENFLO', 'EVENFLO MULTI-USE DECOR TALL WALK-THRU GATE, BLACK METAL', 59.99, '4471110', 22960, 45, 1002);
INSERT INTO `item` VALUES ('EM86726', 'DELTA CHILDREN', 'DELTA CHILDREN SWEET BEGINNINGS BASSINET, FALLING LEAVES', 46.72, '25021-138', 22960, 44, 1002);
INSERT INTO `item` VALUES ('EM86727', 'DHP', 'DHP 8-INCH INDEPENDENTLY ENCASED COIL FUTON MATTRESS WITH CERTIPUR-US CERTIFIED FOAM, FULL SIZE, BLUE', 240.00, '5424696', 22960, 44, 1002);
INSERT INTO `item` VALUES ('EM86728', 'DRIVE MEDICAL', 'DRIVE MEDICAL 1239RD TWO WHEELED WALKER WITH SEAT, RED', 105.56, '1239RD', 22960, 44, 1002);
INSERT INTO `item` VALUES ('EM86729', 'DRIVE MEDICAL', 'DRIVE MEDICAL NITRO EURO STYLE RED ROLLATOR WALKER, RED', 527.80, 'RTL10266', 22960, 44, 1003);
INSERT INTO `item` VALUES ('EM867210', 'DUNLOP', 'DUNLOP OUTDOOR SPORTS VOLLEYBALL SET: PORTABLE NET WITH POLES, BALL & AIR PUMP - EQUIPMENT FOR BACKYARD PARTY GAMES - ADJUSTABLE HEIGHT FOR ADULTS OR KIDS, INCOMPLETE ', 89.99, 'NET100_097D', 22960, 44, 1003);
INSERT INTO `item` VALUES ('EM867211', 'CARLSON', 'EXTRA TALL GATE EXTENSION 24INCH', 61.59, '0950EW', 22960, 43, 1003);
INSERT INTO `item` VALUES ('EM867212', 'CARLSON', 'EXTRA TALL GATE EXTENSION 24INCH', 61.59, '0950EW', 22960, 43, 1003);
INSERT INTO `item` VALUES ('EM867213', 'CLASSIC BRANDS', 'CLASSIC BRANDS INSTANT FOUNDATION HIGH PROFILE 8-INCH BOX-SPRING REPLACEMENT, FULL', 108.00, '124001-5030', 22960, 43, 1004);
INSERT INTO `item` VALUES ('EM867214', 'CLASSIC BRANDS', 'CLASSIC BRANDS COOL GEL MEMORY FOAM REPLACEMENT SOFA BED MATTRESS, QUEEN', 156.00, '414803-1152', 22960, 43, 1004);
INSERT INTO `item` VALUES ('EM867215', 'DELTA CHILDREN', 'DELTA CHILDREN UPHOLSTERED GLIDER SWIVEL ROCKER CHAIR, FLAX', 399.99, '', 22960, 43, 1004);
INSERT INTO `item` VALUES ('EM867216', 'AUTO VENTSHADE', 'AUTO VENTSHADE 194744 IN-CHANNEL VENTVISOR WINDOW DEFLECTOR, 4 PIECE, MISSING 1', 104.21, '194744', 22960, 42, 1004);
INSERT INTO `item` VALUES ('EM867217', 'AXE BAT', 'AXE BAT L169F-32-21 AXE BAT 2018 AVENGE LITE (-11) FAST PITCH SOFTBALL BAT', 249.99, 'L169F-32-21', 22960, 42, 1005);
INSERT INTO `item` VALUES ('EM867218', 'BABYBJÖRN', 'BABYBJORN MESH BOUNCER BLISS, COCOA', 259.95, '006011US', 22960, 42, 1005);
INSERT INTO `item` VALUES ('EM867219', 'BARBIE', 'BARBIE DREAMHOUSE', 199.99, 'CJR47', 22960, 42, 1005);
INSERT INTO `item` VALUES ('EM867220', 'BIG JOE', 'BIG JOE LARGE FUF FOAM FILLED BEAN BAG CHAIR, COMFORT SUEDE, BLUE', 201.99, '', 22960, 42, 1005);
INSERT INTO `item` VALUES ('EM86721', 'BUFFALO TOOLS', 'BLACK BULL COS14 14-INCH CUT OFF SAW', 259.99, 'COS14', 22960, 45, 1001);
COMMIT;

-- ----------------------------
-- Table structure for lotter
-- ----------------------------
DROP TABLE IF EXISTS `lotter`;
CREATE TABLE `lotter` (
  `lotter_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lotter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotter
-- ----------------------------
BEGIN;
INSERT INTO `lotter` VALUES (41, 'Daniel');
INSERT INTO `lotter` VALUES (42, 'Sherry');
INSERT INTO `lotter` VALUES (43, 'Cody');
INSERT INTO `lotter` VALUES (44, 'Evan');
INSERT INTO `lotter` VALUES (45, 'Tabitha');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

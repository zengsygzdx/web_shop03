/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.20 : Database - shop2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_german2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shop2`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `cart_p_filename` varchar(128) DEFAULT NULL,
  `cart_p_name` varchar(64) DEFAULT NULL,
  `cart_p_price` decimal(10,2) DEFAULT NULL,
  `cart_nums` int DEFAULT NULL,
  `cart_p_stock` int DEFAULT NULL,
  `cart_p_id` int DEFAULT NULL,
  `cart_u_id` varchar(64) DEFAULT NULL,
  `cart_valid` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

insert  into `cart`(`cart_id`,`cart_p_filename`,`cart_p_name`,`cart_p_price`,`cart_nums`,`cart_p_stock`,`cart_p_id`,`cart_u_id`,`cart_valid`) values (14,'img/flo5.jpg','【花艺】七头美丽玫瑰仿真花束5','151.00',2,200,5,'zhangsan',1);
insert  into `cart`(`cart_id`,`cart_p_filename`,`cart_p_name`,`cart_p_price`,`cart_nums`,`cart_p_stock`,`cart_p_id`,`cart_u_id`,`cart_valid`) values (15,'img/flo1.jpg','【花艺】七头美丽玫瑰仿真花束','158.00',3,3000,1,'zhangsan',0);
insert  into `cart`(`cart_id`,`cart_p_filename`,`cart_p_name`,`cart_p_price`,`cart_nums`,`cart_p_stock`,`cart_p_id`,`cart_u_id`,`cart_valid`) values (16,'img/flo3.jpg','【花艺】七头美丽玫瑰仿真花束3','104.00',1,1000,3,'zhangsan',0);
insert  into `cart`(`cart_id`,`cart_p_filename`,`cart_p_name`,`cart_p_price`,`cart_nums`,`cart_p_stock`,`cart_p_id`,`cart_u_id`,`cart_valid`) values (17,'img/flo1.jpg','【花艺】七头美丽玫瑰仿真花束','158.00',1,3000,1,'lisi',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `PRODUCT_ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(128) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(512) DEFAULT NULL,
  `PRODUCT_PRICE` decimal(10,2) NOT NULL,
  `PRODUCT_STOCK` decimal(10,0) DEFAULT NULL,
  `PRODUCT_FILENAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (1,'【花艺】七头美丽玫瑰仿真花束','仿真花束太美了（包邮）','158.00','3000','img/flo1.jpg');
insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (2,'【花艺】七头美丽玫瑰仿真花束2','仿真花束太美了（包邮）','51.00','2000','img/flo2.jpg');
insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (3,'【花艺】七头美丽玫瑰仿真花束3','仿真花束太美了（包邮）','104.00','1000','img/flo3.jpg');
insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (4,'【花艺】七头美丽玫瑰仿真花束4','仿真花束太美了（包邮,七天无理由）','79.00','3000','img/flo4.jpg');
insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (5,'【花艺】七头美丽玫瑰仿真花束5','仿真花束太美了（包邮，七天无理由）','151.00','200','img/flo5.jpg');
insert  into `product`(`PRODUCT_ID`,`PRODUCT_NAME`,`PRODUCT_DESCRIPTION`,`PRODUCT_PRICE`,`PRODUCT_STOCK`,`PRODUCT_FILENAME`) values (6,'【花艺】七头美丽玫瑰仿真花束6','仿真花束太美了（包邮，七天无理由）','164.00','3','img/flo6.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `idenity_code` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `status` decimal(6,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('admin','admin','123','T','2019-10-08 00:00:00',NULL,'aaa@bbb.com','222222','4323323232323232','2');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('admin1','admin','123','T','2019-10-08 00:00:00',NULL,'aaa@bbb.com','222222','4323323232323232','2');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('admin2','admin','123','T','2019-10-08 00:00:00',NULL,'aaa@bbb.com','222222','4323323232323232','2');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('admin3','admin','123','T','2019-10-08 00:00:00',NULL,'aaa@bbb.com','222222','4323323232323232','2');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('admin4','admin','123','T','2019-10-08 00:00:00',NULL,'aaa@bbb.com','222222','4323323232323232','2');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('lisi','李四','123','F','2020-07-05 00:00:00',NULL,'111@e.gzhu.edu.cn','15622222222','北京三里屯','1');
insert  into `user`(`id`,`name`,`password`,`sex`,`birthday`,`idenity_code`,`email`,`mobile`,`address`,`status`) values ('zhangsan','张三','123','T','2020-07-12 00:00:00',NULL,'1706666666@e.gzhu.edu.cn','1566666875','广东省广州市番禺区小谷围街道大学城广州大学','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

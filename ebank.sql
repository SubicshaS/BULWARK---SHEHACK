/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.11 : Database - ebank
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ebank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ebank`;

/*Table structure for table `deposit` */

DROP TABLE IF EXISTS `deposit`;

CREATE TABLE `deposit` (
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `deposit` */

insert  into `deposit`(`fname`,`username`,`accno`) values ('subicsha','subicsha','1800'),('mithu','mithu','9080'),('keerthi','keerthi','0413'),('priya','priya','2019');
/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `nation` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `otp` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `info` */

insert  into `info`(`fname`,`username`,`password`,`gender`,`address`,`city`,`state`,`nation`,`accno`,`amount`,`otp`,`email`) values ('priya','priya','priya','female','puducherry','puducherry','puducherry','India','2019',0,'82','kpriyakumar98@gmail.com'),('subicsha','subicsha','subicsha','female','puducherry','puducherry','puducherry','India','1800',0,'12','kpriyakumar98@gmail.com'),('mithu','mithu','mithu','female','puducherry','puducherry','puducherry','India','9080',0,'21','kpriyakumar98@gmail.com'),('keerthi','keerthi','keerthi','female','puducherry','puducherry','puducherry','India','0413',0,'98','kpriyakumar98@gmail.com');

/*Table structure for table `ministate` */

DROP TABLE IF EXISTS `ministate`;

CREATE TABLE `ministate` (
  `id` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ministate` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
depositinfoinfodepositinfoinfodepositinfoinfodepositinfodepositinfo
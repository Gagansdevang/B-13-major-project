/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - group
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`group` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `group`;

/*Table structure for table `final` */

DROP TABLE IF EXISTS `final`;

CREATE TABLE `final` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `behaviour` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `final` */

insert  into `final`(`id`,`user`,`topic`,`image`,`description`,`location`,`grup`,`behaviour`) values (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `friendrequest` */

DROP TABLE IF EXISTS `friendrequest`;

CREATE TABLE `friendrequest` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(20) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `friendrequest` */

insert  into `friendrequest`(`sno`,`id`,`user`,`mobile`,`grup`,`sid`,`sname`,`status`) values (1,16,'Rani','8346578834','Farmer','14','deepa','Request Send'),(2,1,'lakshmi','9876543210','Doctor','14','deepa','Accepted'),(3,13,'Jhansi','9876543210','Politician','198','Deepa','Accepted'),(4,13,'Jhansi','9876543210','Politician','198','Deepa','Request Send'),(5,1,'lakshmi','9876543210','Doctor','13','Jhansi','Accepted'),(6,198,'Deepa','8248939923','Engineer','109','Sathya','Request Send'),(7,16,'Rani','8346578834','Farmer','109','Sathya','Request Send'),(8,1,'lakshmi','9876543210','Doctor','109','Sathya','Accepted'),(9,1,'lakshmi','9876543210','Doctor','109','Sathya','Request Send'),(10,198,'Deepa','8248939923','Engineer','657','gdeepa','Request Send'),(11,13,'Jhansi','9876543210','Politician','657','gdeepa','Accepted'),(12,1,'lakshmi','9876543210','Doctor','657','gdeepa','Request Send');

/*Table structure for table `movements` */

DROP TABLE IF EXISTS `movements`;

CREATE TABLE `movements` (
  `id` int(12) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `frm` varchar(200) DEFAULT NULL,
  `too` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `movements` */

insert  into `movements`(`id`,`user`,`email`,`mobile`,`location`,`frm`,`too`) values (1,'lakshmi','1cp.javateam2020@gmail.com','9876543210','Chennai','null','null'),(198,'Deepa','deepaginfotech@gmail.com','8248939923','Chennai','null','null'),(1,'lakshmi','1cp.javateam2020@gmail.com','9876543210','Chennai','null','null'),(13,'Jhansi','jhansi@gmail.com','9876543210','Chennai','null','null');

/*Table structure for table `neg` */

DROP TABLE IF EXISTS `neg`;

CREATE TABLE `neg` (
  `negative` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neg` */

insert  into `neg`(`negative`) values ('bad'),('selfish'),('foolish'),('stupied'),('guilty'),('Depression'),('lonely'),('not well');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `sno` int(200) NOT NULL AUTO_INCREMENT,
  `topic` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'wait',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`sno`,`topic`,`user`,`grup`,`image`,`description`,`location`,`status`) values (1,'Meditation','lakshmi','Doctor','yoga.jpg','Every people can do Meditation day by day. good So it give more peace and healthy for mind ..','Chennai','Postive'),(2,'ADMK','Jhansi','Politician','admk.png','During the ADMK period ,they act like good and selfish','Chennai','Neutral'),(3,'Future of India','Deepa','Engineer','engineer.jpg','Today engineers are the tommorow future.great We can give solution for all the realtime problems..','Chennai','wait'),(4,' Future ','Sathya','Business','database.jpg','In the world  Business in more power .. For that bisniess we have  great to use data thata avaiable in the lonely','Chennai','Neutral'),(6,'Deppresion','gdeepa','Actress','depression.jpg','Indian cinema is very great but due to lockdown. Every pepole is lonely and despression..','Salem','Neutral'),(7,'bhfgkujh','hgfduyjhfvuythfyrf','gfdjhikj','admk.png','gbfkjhkjmn','gfkjhiikhnukjufhccrxfdvc ','wait'),(8,'bhfgkujh','hgfduyjhfvuythfyrf','gfdjhikj','admk.png','gbfkjhkjmn','gfkjhiikhnukjufhccrxfdvc ','wait');

/*Table structure for table `pst` */

DROP TABLE IF EXISTS `pst`;

CREATE TABLE `pst` (
  `positive` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pst` */

insert  into `pst`(`positive`) values ('success'),('great'),('good'),('future'),('pleasant'),('wonderful'),('peace'),('health'),('wealth'),('happy');

/*Table structure for table `recommed` */

DROP TABLE IF EXISTS `recommed`;

CREATE TABLE `recommed` (
  `image` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recommed` */

insert  into `recommed`(`image`,`topic`,`description`,`user`,`grup`,`location`) values ('admk.png','ADMK','During the ADMK period ,they completed the peoples need.','Jhansi','Politician',' Chennai'),('engineer.jpg','Future of India','Today engineers are the tommorow future.We can give solution for all the realtime problems..','Deepa','Farmer',' Chennai'),('engineer.jpg','Future of India','Today engineers are the tommorow future.We can give solution for all the realtime problems..','Deepa','Doctor',' Chennai'),('engineer.jpg','Future of India','Today engineers are the tommorow future.We can give solution for all the realtime problems..','Deepa','Engineer',' Chennai'),('yoga.jpg','Meditation','Every people can do Meditation day by day. So it give more peace and healthy for mind ..','lakshmi','Engineer',' Chennai'),('yoga.jpg','Meditation','Every people can do Meditation day by day. So it give more peace and healthy for mind ..','lakshmi','Engineer',' Chennai'),('database.jpg',' Future ','In the world  Business in more power .. For that bisniess we have to use data thata avaiable in the world','Sathya','Engineer',' Chennai'),('yoga.jpg','Meditation','Every people can do Meditation day by day. So it give more peace and healthy for mind ..','lakshmi','Farmer',' Chennai'),('engineer.jpg','Future of India','Today engineers are the tommorow future.We can give solution for all the realtime problems..','Deepa','Busniess',' Chennai'),('depression.jpg','Deppresion','Indian cinema is very great but due to lockdown. Every pepole is lonely and despression..','gdeepa','Actress',' Salem'),('admk.png','ADMK','During the ADMK period ,they act like good and selfish','Jhansi','Engineer',' Chennai'),('depression.jpg','Deppresion','Indian cinema is very great but due to lockdown. Every pepole is lonely and despression..','gdeepa','Engineer',' Salem');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`grup`,`gender`,`mobile`,`location`,`status`) values ('admi.jpg',1,'lakshmi','lakshmi','1cp.javateam2020@gmail.com','14/07/1997','Doctor','female','9876543210','Chennai','Activated'),('key.png',13,'Jhansi','jhansi','jhansi@gmail.com','14/07/2000','Politician','female','9876543210','Chennai','Activated'),('data uowner.jpg',16,'Rani','rani','rani@gmail.com','21/01/1999','Farmer','female','8346578834','Chennai','Activated'),('admi.jpg',198,'Deepa','deepa','deepaginfotech@gmail.com','14/07/1997','Engineer','female','8248939923','Chennai','Activated'),('fema.jpg',109,'Sathya','sathya','deepaginfotech@gmail.com','21/01/1999','Busniess','female','9876543210','Chennai','Activated'),('data uowner.jpg',657,'gdeepa','gdeepa','deepaginfotech@gmail.com','21/01/1999','Actress','female','9876543210','Salem','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

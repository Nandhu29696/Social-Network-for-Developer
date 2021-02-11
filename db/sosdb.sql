/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - sos
*********************************************************************
Server version : 5.0.22-community-nt
*/
SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `sos`;

USE `sos`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admintable` */

DROP TABLE IF EXISTS `admintable`;

CREATE TABLE `admintable` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admintable` */

insert into `admintable` (`username`,`password`) values ('admin','admin');

/*Table structure for table `blockeduser` */

DROP TABLE IF EXISTS `blockeduser`;

CREATE TABLE `blockeduser` (
  `username` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockeduser` */

/*Table structure for table `bookmarked` */

DROP TABLE IF EXISTS `bookmarked`;

CREATE TABLE `bookmarked` (
  `username` varchar(100) default NULL,
  `domain` varchar(150) default NULL,
  `question` varchar(300) default NULL,
  `answer` varchar(300) default NULL,
  `answerer` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookmarked` */

insert into `bookmarked` (`username`,`domain`,`question`,`answer`,`answerer`) values ('selva','java','what is 
swings','swings are application','sss');

/*Table structure for table `ckeywords` */

DROP TABLE IF EXISTS `ckeywords`;

CREATE TABLE `ckeywords` (
  `keywords` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ckeywords` */

insert into `ckeywords` (`keywords`) values ('java');
insert into `ckeywords` (`keywords`) values ('oops');
insert into `ckeywords` (`keywords`) values ('int');
insert into `ckeywords` (`keywords`) values ('float');
insert into `ckeywords` (`keywords`) values ('c');

/*Table structure for table `cppkeywords` */

DROP TABLE IF EXISTS `cppkeywords`;

CREATE TABLE `cppkeywords` (
  `cppkeywords` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cppkeywords` */

insert into `cppkeywords` (`cppkeywords`) values ('cpp');
insert into `cppkeywords` (`cppkeywords`) values ('float');
insert into `cppkeywords` (`cppkeywords`) values ('pointers');
insert into `cppkeywords` (`cppkeywords`) values ('contructor');
insert into `cppkeywords` (`cppkeywords`) values ('destrctor');
insert into `cppkeywords` (`cppkeywords`) values ('garbage');
insert into `cppkeywords` (`cppkeywords`) values ('polymorphism');

/*Table structure for table `friendlist` */

DROP TABLE IF EXISTS `friendlist`;

CREATE TABLE `friendlist` (
  `user` varchar(50) default NULL,
  `friend` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friendlist` */

insert into `friendlist` (`user`,`friend`) values ('selva','aaaa');

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `f1` varchar(50) default NULL,
  `f2` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends` */

insert into `friends` (`f1`,`f2`) values ('selva','sss');
insert into `friends` (`f1`,`f2`) values ('selva','aaa');
insert into `friends` (`f1`,`f2`) values ('selva','aaa');
insert into `friends` (`f1`,`f2`) values ('selva','aaa');
insert into `friends` (`f1`,`f2`) values ('sss','aaa');
insert into `friends` (`f1`,`f2`) values ('selva','aaaa');

/*Table structure for table `javakeywords` */

DROP TABLE IF EXISTS `javakeywords`;

CREATE TABLE `javakeywords` (
  `keywords` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `javakeywords` */

insert into `javakeywords` (`keywords`) values ('java');
insert into `javakeywords` (`keywords`) values ('oops');
insert into `javakeywords` (`keywords`) values ('int');
insert into `javakeywords` (`keywords`) values ('float');
insert into `javakeywords` (`keywords`) values ('jsp');
insert into `javakeywords` (`keywords`) values ('swings');
insert into `javakeywords` (`keywords`) values ('jdbc');
insert into `javakeywords` (`keywords`) values ('applets');
insert into `javakeywords` (`keywords`) values ('servlets');
insert into `javakeywords` (`keywords`) values ('corejava');
insert into `javakeywords` (`keywords`) values ('public');
insert into `javakeywords` (`keywords`) values ('private');
insert into `javakeywords` (`keywords`) values ('protected');
insert into `javakeywords` (`keywords`) values ('throws');
insert into `javakeywords` (`keywords`) values ('parse');
insert into `javakeywords` (`keywords`) values ('System');
insert into `javakeywords` (`keywords`) values ('out');
insert into `javakeywords` (`keywords`) values ('println');
insert into `javakeywords` (`keywords`) values ('caste');

/*Table structure for table `postedans` */

DROP TABLE IF EXISTS `postedans`;

CREATE TABLE `postedans` (
  `ques` varchar(100) default NULL,
  `ans` varchar(150) default NULL,
  `answerer` varchar(50) default NULL,
  `domain` varchar(50) default NULL,
  `confidentlevel` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `postedans` */

insert into `postedans` (`ques`,`ans`,`answerer`,`domain`,`confidentlevel`) values ('what is swings','swings are 
application','sss','java','confident');

/*Table structure for table `postedcontent` */

DROP TABLE IF EXISTS `postedcontent`;

CREATE TABLE `postedcontent` (
  `username` varchar(50) default NULL,
  `postcnt` varchar(50) default NULL,
  `domain` varchar(50) default NULL,
  `receiver` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `postedcontent` */

insert into `postedcontent` (`username`,`postcnt`,`domain`,`receiver`) values ('selva','what is java','c','aaaa');
insert into `postedcontent` (`username`,`postcnt`,`domain`,`receiver`) values ('selva','what is java','java','aaaa');
insert into `postedcontent` (`username`,`postcnt`,`domain`,`receiver`) values ('selva','waht is oops','c','aaaa');
insert into `postedcontent` (`username`,`postcnt`,`domain`,`receiver`) values ('selva','waht is oops','java','aaaa');
insert into `postedcontent` (`username`,`postcnt`,`domain`,`receiver`) values ('selva','what is 
swings','java','sss');

/*Table structure for table `ratingstable` */

DROP TABLE IF EXISTS `ratingstable`;

CREATE TABLE `ratingstable` (
  `username` varchar(50) default NULL,
  `domain` varchar(50) default NULL,
  `ratings` varchar(50) default NULL,
  `funratings` varchar(50) default NULL,
  `confident` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ratingstable` */

insert into `ratingstable` (`username`,`domain`,`ratings`,`funratings`,`confident`) values ('sss','java','3','4','2');
insert into `ratingstable` (`username`,`domain`,`ratings`,`funratings`,`confident`) values ('selva','java','1','1','1');

/*Table structure for table `serverdb` */

DROP TABLE IF EXISTS `serverdb`;

CREATE TABLE `serverdb` (
  `ques` varchar(100) default NULL,
  `ans` varchar(150) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `serverdb` */
insert into `serverdb` (`ques`,`ans`) values ('what is java','java is programming tool');
insert into `serverdb` (`ques`,`ans`) values ('what is jsp','java server page');
/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `name` varchar(50) default NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `prof` varchar(50) default NULL,
  `domain` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `emailid` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert into `userdetails` (`name`,`username`,`password`,`age`,`prof`,`domain`,`mobile`,`emailid`) values 
('aaa','aaaa','aaa','24',NULL,'java','9632587414','ask@gmail.com');
insert into `userdetails` (`name`,`username`,`password`,`age`,`prof`,`domain`,`mobile`,`emailid`) values 
('Selva','selva','java','25',NULL,'java','9965330590','dselvait@gmail.com');
insert into `userdetails` (`name`,`username`,`password`,`age`,`prof`,`domain`,`mobile`,`emailid`) values 
('sss','sss','sss','25','ssss','java','9965330590','sss@gmail.com');

SET SQL_MODE=@OLD_SQL_MODE;
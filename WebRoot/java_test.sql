/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23 : Database - java_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`java_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `java_test`;

/*Table structure for table `block` */

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `blockid` int(11) NOT NULL AUTO_INCREMENT COMMENT '块id，如一、二等',
  `blockname` varchar(50) DEFAULT NULL COMMENT '一、二、三',
  `blockdes` varchar(300) DEFAULT NULL COMMENT '描述',
  `testpaper` int(11) DEFAULT NULL COMMENT '外键，说明属于哪份卷子',
  PRIMARY KEY (`blockid`),
  KEY `FK597C48D103677CA` (`testpaper`),
  CONSTRAINT `FK597C48D103677CA` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`),
  CONSTRAINT `block_ibfk_1` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `block` */

insert  into `block`(`blockid`,`blockname`,`blockdes`,`testpaper`) values (1,'选择题','软计一',1),(2,'填空题','软计一',1),(3,'简答题','软计一',1);

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `classid` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id号',
  `classname` varchar(60) DEFAULT NULL COMMENT '班级名称',
  `major` varchar(20) DEFAULT NULL COMMENT '专业',
  `grade` varchar(4) DEFAULT NULL COMMENT '年级',
  `dept` int(3) DEFAULT NULL COMMENT '所在院系',
  PRIMARY KEY (`classid`),
  KEY `FK5A5A978BFB17774` (`dept`),
  CONSTRAINT `FK5A5A978BFB17774` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`classid`,`classname`,`major`,`grade`,`dept`) values (1,'14软工','软件工程','14级',1),(2,'15软工','软件工程','15级',1);

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `collectionid` int(11) NOT NULL AUTO_INCREMENT,
  `collectionname` varchar(50) DEFAULT NULL COMMENT '教师自定义的收藏夹名字',
  `teacher` int(11) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectionid`),
  KEY `FK9835AE9E16EC6DB6` (`question`),
  KEY `FK9835AE9E69BC3297` (`teacher`),
  CONSTRAINT `FK9835AE9E16EC6DB6` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`),
  CONSTRAINT `FK9835AE9E69BC3297` FOREIGN KEY (`teacher`) REFERENCES `user` (`userid`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`teacher`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `collection` */

insert  into `collection`(`collectionid`,`collectionname`,`teacher`,`question`) values (1,'操作系统',7,4),(2,'操作系统',7,5),(3,'操作系统',7,6),(4,'操作系统',7,7),(5,'操作系统',7,8);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id号',
  `coursename` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `detail` varchar(30) DEFAULT NULL COMMENT '课程介绍',
  `subject` int(11) DEFAULT NULL COMMENT '科目大类,不具体到专业',
  `state` varchar(30) DEFAULT NULL COMMENT '课程状态',
  `dept` int(11) DEFAULT NULL COMMENT '所属学院，外键',
  PRIMARY KEY (`courseid`),
  UNIQUE KEY `coursename` (`coursename`),
  KEY `FKAF42E01BF5014F2E` (`subject`),
  KEY `FKAF42E01BBFB17774` (`dept`),
  CONSTRAINT `FKAF42E01BBFB17774` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`),
  CONSTRAINT `FKAF42E01BF5014F2E` FOREIGN KEY (`subject`) REFERENCES `subject` (`subjectid`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`courseid`,`coursename`,`detail`,`subject`,`state`,`dept`) values (1,'软件工程与计算一','孙娜',4,NULL,NULL),(2,'软件工程与计算二','啦啦啦',4,NULL,NULL),(4,'软件工程与计算','哈哈哈',4,NULL,NULL),(7,'计算机系统基础','马老师',4,NULL,NULL),(9,'中间件','吴倩',4,NULL,NULL),(12,'马原','黄竹',2,NULL,NULL),(14,'高数上下','乌大神',1,NULL,NULL),(15,'哈哈哈哈','嘿嘿嘿嘿',NULL,NULL,NULL);

/*Table structure for table `coustudent` */

DROP TABLE IF EXISTS `coustudent`;

CREATE TABLE `coustudent` (
  `coustudentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程和学生之间的关系',
  `teccourse` int(11) DEFAULT NULL COMMENT '对应的课程',
  `student` int(11) DEFAULT NULL COMMENT '对应的学生',
  PRIMARY KEY (`coustudentid`),
  KEY `FKCBFAE492F3A9A94C` (`student`),
  KEY `FKCBFAE492CF93E62E` (`teccourse`),
  KEY `FKCBFAE4924F88E8F0` (`student`),
  CONSTRAINT `FKCBFAE4924F88E8F0` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `FKCBFAE492CF93E62E` FOREIGN KEY (`teccourse`) REFERENCES `teacourse` (`teacourseid`),
  CONSTRAINT `FKCBFAE492F3A9A94C` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `coustudent_ibfk_1` FOREIGN KEY (`student`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coustudent_ibfk_2` FOREIGN KEY (`teccourse`) REFERENCES `teacourse` (`teacourseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `coustudent` */

insert  into `coustudent`(`coustudentid`,`teccourse`,`student`) values (1,1,2),(2,1,4),(3,1,8),(4,1,9),(5,1,12),(6,1,14);

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptid` int(3) NOT NULL AUTO_INCREMENT COMMENT '院系id号',
  `deptname` varchar(25) DEFAULT NULL COMMENT '院系名称',
  `deptdes` varchar(300) DEFAULT NULL COMMENT '学院描述',
  PRIMARY KEY (`deptid`),
  UNIQUE KEY `deptname` (`deptname`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

insert  into `dept`(`deptid`,`deptname`,`deptdes`) values (1,'信息工程学院','信'),(2,'生环学院','生'),(3,'理学院','美'),(6,'文传学院','文'),(7,'文传学院3','文'),(8,'马克思主义学院','马'),(13,'哈哈哈','哈'),(15,'啦啦啦啦啦啦','啦'),(16,'哈喽小萝莉','哈喽'),(17,'外院',NULL);

/*Table structure for table `errorque` */

DROP TABLE IF EXISTS `errorque`;

CREATE TABLE `errorque` (
  `errorqueid` int(11) NOT NULL AUTO_INCREMENT,
  `stuque` int(11) DEFAULT NULL COMMENT '学生题目id',
  PRIMARY KEY (`errorqueid`),
  KEY `FK533747B916EC6DB6` (`stuque`),
  KEY `FK533747B9CE0E2084` (`stuque`),
  CONSTRAINT `FK533747B9CE0E2084` FOREIGN KEY (`stuque`) REFERENCES `stuque` (`stuqueid`),
  CONSTRAINT `errorque_ibfk_1` FOREIGN KEY (`stuque`) REFERENCES `stuque` (`stuqueid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `errorque` */

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '题库中题的id',
  `type` int(10) DEFAULT NULL COMMENT '题型',
  `subject` int(11) DEFAULT NULL COMMENT '题目的科目大类',
  `adder` int(20) DEFAULT NULL COMMENT '学号/学工号',
  `label` varchar(120) DEFAULT NULL COMMENT '涉及的知识点',
  `stem` text COMMENT '题干',
  `annotation` text COMMENT '题目解析',
  `answer` text COMMENT '标准答案',
  `quescore` int(5) DEFAULT NULL COMMENT '建议分数',
  `option1` varbinary(240) DEFAULT NULL COMMENT '选项1',
  `option2` varchar(240) DEFAULT NULL COMMENT '选项2',
  `option3` varchar(240) DEFAULT NULL COMMENT '选项3',
  `option4` varchar(240) DEFAULT NULL COMMENT '选项4',
  `option5` varchar(240) DEFAULT NULL COMMENT '选项5',
  `option6` varchar(240) DEFAULT NULL COMMENT '选项6',
  `option7` varchar(240) DEFAULT NULL COMMENT '选项7',
  `isPicture` tinyint(1) DEFAULT NULL COMMENT '是否全为图片',
  `isvisiable` tinyint(1) DEFAULT '0' COMMENT '是否题目对学生可见',
  `depth` double DEFAULT NULL COMMENT '题目难度',
  `testcreator` int(11) DEFAULT NULL COMMENT '考试的创建者',
  PRIMARY KEY (`questionid`),
  KEY `FKBA823BE6FAF0318B` (`type`),
  KEY `FKBA823BE6F5014F2E` (`subject`),
  KEY `FKBA823BE6C51047C3` (`adder`),
  KEY `FKBA823BE68239BA0F` (`depth`),
  CONSTRAINT `FKBA823BE6C51047C3` FOREIGN KEY (`adder`) REFERENCES `user` (`userid`),
  CONSTRAINT `FKBA823BE6F5014F2E` FOREIGN KEY (`subject`) REFERENCES `subject` (`subjectid`),
  CONSTRAINT `FKBA823BE6FAF0318B` FOREIGN KEY (`type`) REFERENCES `quetype` (`quetypeid`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`type`) REFERENCES `quetype` (`quetypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_ibfk_2` FOREIGN KEY (`subject`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_ibfk_3` FOREIGN KEY (`adder`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`questionid`,`type`,`subject`,`adder`,`label`,`stem`,`annotation`,`answer`,`quescore`,`option1`,`option2`,`option3`,`option4`,`option5`,`option6`,`option7`,`isPicture`,`isvisiable`,`depth`,`testcreator`) values (1,1,4,7,'计算机科学','设置当前目录的主要目的是','无说明\r\n','C',2,'A.节省外存空间','B.节省内存空间','C .加快文件的检索速度','D.加快文件的读写速度',NULL,NULL,NULL,0,1,0.75,NULL),(2,2,4,7,'软件工程','在虚拟内存管理中,地址变换机构将逻辑地址变换为物理地址,形成该逻辑地址阶段是','链接是在虚拟内存管理中,地址变换机构将逻辑地址变换为物理地址,形成该逻辑地址的阶段。','链接',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0.34,NULL),(3,1,4,10,'计算机科学','设与某资源关联的信号量初值为3,当前值为1。若M表示该资源的可用个数，N表示等待该资源的进程数。则M、N分别是',NULL,'B',3,'A. 0、1','B. 1、0','C．1、2','D．2、0',NULL,NULL,NULL,NULL,NULL,0.9,NULL),(4,1,NULL,7,NULL,'操作系统是对             进行管理的软件。','操作系统管理计算机资源','A',NULL,'计算机资源','应用程序',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,3,NULL,7,NULL,'分时操作系统通常采用时间片轮转策略为用户服务。','分时操作系统确实是采用时间片轮转策略为用户服务。','对',NULL,'对','错',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,NULL,7,NULL,'通过某种技术把一个物理实体变为若干个逻辑上的对应物，称为','通过某种技术把一个物理实体变为若干个逻辑上的对应物，称为虚拟','虚拟',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(7,6,NULL,7,NULL,'           是分时操作系统的特征','XXX','A',NULL,'独立性','实时性',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(8,4,NULL,7,NULL,'操作系统的主要特征','并发、共享、虚拟和异步','并发、共享、虚拟和异步',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);

/*Table structure for table `quetype` */

DROP TABLE IF EXISTS `quetype`;

CREATE TABLE `quetype` (
  `quetypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '题型id',
  `typename` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`quetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `quetype` */

insert  into `quetype`(`quetypeid`,`typename`) values (1,'选择题'),(2,'填空题'),(3,'判断题'),(4,'简答题'),(5,'应用题'),(6,'多选题');

/*Table structure for table `selectcourse` */

DROP TABLE IF EXISTS `selectcourse`;

CREATE TABLE `selectcourse` (
  `selectid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '选课id号',
  `student` int(11) DEFAULT NULL COMMENT '学生',
  `teacourse` int(11) DEFAULT NULL COMMENT '所选课程',
  PRIMARY KEY (`selectid`),
  KEY `FK94AD681796E628A0` (`teacourse`),
  KEY `FK94AD6817F3A9A94C` (`student`),
  KEY `FK94AD68174F88E8F0` (`student`),
  KEY `FK94AD681765C76FAC` (`teacourse`),
  CONSTRAINT `FK94AD68174F88E8F0` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK94AD681765C76FAC` FOREIGN KEY (`teacourse`) REFERENCES `teacourse` (`teacourseid`),
  CONSTRAINT `FK94AD6817F3A9A94C` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `selectcourse_ibfk_3` FOREIGN KEY (`student`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `selectcourse_ibfk_4` FOREIGN KEY (`teacourse`) REFERENCES `teacourse` (`teacourseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `selectcourse` */

/*Table structure for table `stupaper` */

DROP TABLE IF EXISTS `stupaper`;

CREATE TABLE `stupaper` (
  `stupaperid` int(11) NOT NULL AUTO_INCREMENT COMMENT '对应于学生的试卷',
  `student` int(11) DEFAULT NULL COMMENT '学生',
  `test` int(11) DEFAULT NULL COMMENT '对应的考试',
  `score` int(3) DEFAULT NULL COMMENT '试卷得分',
  `status` int(1) DEFAULT NULL COMMENT '试卷状态，是否提交',
  `accuracy` int(5) DEFAULT NULL COMMENT '正确率，如98',
  PRIMARY KEY (`stupaperid`),
  KEY `FK707913D8F3A9A94C` (`student`),
  KEY `FK707913D8BFC0040E` (`test`),
  KEY `FK707913D84F88E8F0` (`student`),
  CONSTRAINT `FK707913D84F88E8F0` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK707913D8BFC0040E` FOREIGN KEY (`test`) REFERENCES `test` (`testid`),
  CONSTRAINT `FK707913D8F3A9A94C` FOREIGN KEY (`student`) REFERENCES `user` (`userid`),
  CONSTRAINT `stupaper_ibfk_2` FOREIGN KEY (`test`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stupaper_ibfk_3` FOREIGN KEY (`student`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `stupaper` */

insert  into `stupaper`(`stupaperid`,`student`,`test`,`score`,`status`,`accuracy`) values (1,4,1,80,0,1),(2,2,1,45,0,1);

/*Table structure for table `stuque` */

DROP TABLE IF EXISTS `stuque`;

CREATE TABLE `stuque` (
  `stuqueid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `stupaper` int(11) DEFAULT NULL COMMENT '对应的学生试卷',
  `testque` int(11) DEFAULT NULL COMMENT '题目',
  `answer` varchar(200) DEFAULT NULL COMMENT '学生的答案',
  `score` int(2) DEFAULT NULL COMMENT '得分',
  PRIMARY KEY (`stuqueid`),
  KEY `FKCAD6DC0D2A1B46B4` (`testque`),
  KEY `FKCAD6DC0D82DA1D9A` (`stupaper`),
  CONSTRAINT `FKCAD6DC0D2A1B46B4` FOREIGN KEY (`testque`) REFERENCES `testque` (`testquesid`),
  CONSTRAINT `FKCAD6DC0D82DA1D9A` FOREIGN KEY (`stupaper`) REFERENCES `stupaper` (`stupaperid`),
  CONSTRAINT `stuque_ibfk_1` FOREIGN KEY (`testque`) REFERENCES `testque` (`testquesid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stuque_ibfk_2` FOREIGN KEY (`stupaper`) REFERENCES `stupaper` (`stupaperid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `stuque` */

insert  into `stuque`(`stuqueid`,`stupaper`,`testque`,`answer`,`score`) values (1,1,1,'C',3),(2,1,2,'链接',2);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `subjectname` varchar(50) DEFAULT NULL COMMENT '课程名字',
  PRIMARY KEY (`subjectid`),
  UNIQUE KEY `subjectname` (`subjectname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`subjectid`,`subjectname`) values (2,'政治'),(3,'文学'),(4,'理工'),(1,'经济');

/*Table structure for table `teacourse` */

DROP TABLE IF EXISTS `teacourse`;

CREATE TABLE `teacourse` (
  `teacourseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '授课id号',
  `teacher` int(11) DEFAULT NULL COMMENT '授课教师',
  `course` int(11) DEFAULT NULL COMMENT '课程',
  `class` int(11) DEFAULT NULL COMMENT '教授班级',
  `year` int(20) DEFAULT NULL COMMENT '学年，值2014、2015等',
  `term` int(11) DEFAULT NULL COMMENT '学期，值为1、2',
  `couscore` double DEFAULT NULL COMMENT '学分',
  `coutime` double DEFAULT NULL COMMENT '课时',
  `state` varchar(20) DEFAULT NULL COMMENT '课程状态',
  PRIMARY KEY (`teacourseid`),
  KEY `FKE558542B96E628A0` (`course`),
  KEY `FKE558542B15915B06` (`class`),
  KEY `FKE558542B28103C9A` (`teacher`),
  KEY `FKE558542B69BC3297` (`teacher`),
  CONSTRAINT `FKE558542B15915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `FKE558542B69BC3297` FOREIGN KEY (`teacher`) REFERENCES `user` (`userid`),
  CONSTRAINT `FKE558542B96E628A0` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`),
  CONSTRAINT `teacourse_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacourse_ibfk_4` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacourse_ibfk_5` FOREIGN KEY (`teacher`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `teacourse` */

insert  into `teacourse`(`teacourseid`,`teacher`,`course`,`class`,`year`,`term`,`couscore`,`coutime`,`state`) values (1,7,1,1,2014,2,100,36,'正在开课'),(2,10,9,1,2015,1,100,45,'正在开课');

/*Table structure for table `teamark` */

DROP TABLE IF EXISTS `teamark`;

CREATE TABLE `teamark` (
  `teamarkid` int(11) NOT NULL AUTO_INCREMENT,
  `stuque` int(11) DEFAULT NULL,
  `comment` tinytext COMMENT '教师评语',
  PRIMARY KEY (`teamarkid`),
  KEY `FKAA526DDFCE0E2084` (`stuque`),
  KEY `FKAA363EDDCE0E2084` (`stuque`),
  CONSTRAINT `FKAA363EDDCE0E2084` FOREIGN KEY (`stuque`) REFERENCES `stuque` (`stuqueid`),
  CONSTRAINT `FKAA526DDFCE0E2084` FOREIGN KEY (`stuque`) REFERENCES `stuque` (`stuqueid`),
  CONSTRAINT `teamark_ibfk_1` FOREIGN KEY (`stuque`) REFERENCES `stuque` (`stuqueid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teamark` */

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `testid` int(11) NOT NULL AUTO_INCREMENT COMMENT '考试id号',
  `testname` varchar(20) DEFAULT NULL COMMENT '考试名称',
  `testpaper` int(11) DEFAULT NULL COMMENT '采用的试卷',
  `testcreator` int(11) DEFAULT NULL COMMENT '考试的创建者',
  `starttime` time DEFAULT NULL COMMENT '开始时间',
  `class` int(11) DEFAULT NULL COMMENT '被分配考试的班级',
  `teststatement` varchar(40) DEFAULT NULL COMMENT '考试描述',
  PRIMARY KEY (`testid`),
  KEY `FK36449215915B06` (`class`),
  KEY `FK364492103677CA` (`testpaper`),
  KEY `FK3644928239BA0F` (`testcreator`),
  CONSTRAINT `FK364492103677CA` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`),
  CONSTRAINT `FK36449215915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `FK3644928239BA0F` FOREIGN KEY (`testcreator`) REFERENCES `user` (`userid`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_ibfk_2` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_ibfk_3` FOREIGN KEY (`testcreator`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `test` */

insert  into `test`(`testid`,`testname`,`testpaper`,`testcreator`,`starttime`,`class`,`teststatement`) values (1,'14软工月考一',1,7,'14:00:00',1,'第一次测试'),(2,'14软工月考二',2,7,'08:00:00',2,'第二次测试'),(4,'15软工月考二',1,7,'20:00:00',2,'啦啦啦');

/*Table structure for table `testpaper` */

DROP TABLE IF EXISTS `testpaper`;

CREATE TABLE `testpaper` (
  `testpaperid` int(11) NOT NULL AUTO_INCREMENT COMMENT '组卷id',
  `testpapername` varchar(30) DEFAULT NULL COMMENT '试卷的名字',
  `creator` int(11) DEFAULT NULL COMMENT '创建试卷的老师',
  `questionnum` int(2) DEFAULT NULL COMMENT '题量',
  `totalscore` int(3) DEFAULT NULL COMMENT '总分',
  `totaltime` int(10) DEFAULT NULL COMMENT '答题时间min',
  PRIMARY KEY (`testpaperid`),
  KEY `FKBA8FD83AFCD8E6E1` (`creator`),
  CONSTRAINT `FKBA8FD83AFCD8E6E1` FOREIGN KEY (`creator`) REFERENCES `user` (`userid`),
  CONSTRAINT `testpaper_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `testpaper` */

insert  into `testpaper`(`testpaperid`,`testpapername`,`creator`,`questionnum`,`totalscore`,`totaltime`) values (1,'软件工程阶段一考试卷',7,20,100,60),(2,'软件工程阶段二考试',7,50,100,120);

/*Table structure for table `testque` */

DROP TABLE IF EXISTS `testque`;

CREATE TABLE `testque` (
  `testquesid` int(11) NOT NULL AUTO_INCREMENT COMMENT '组卷试题id',
  `block` int(11) DEFAULT NULL COMMENT '对应的block',
  `quesnum` int(3) DEFAULT NULL COMMENT 'question在block中的顺序',
  `question` int(11) DEFAULT NULL COMMENT '对应题库中的题',
  `score` int(2) DEFAULT NULL COMMENT 'question在block中的分数',
  `depth` int(5) DEFAULT NULL COMMENT 'question在block中的难度',
  PRIMARY KEY (`testquesid`),
  KEY `quesnum` (`quesnum`),
  KEY `FKAB3750EF103677CA` (`block`),
  KEY `FKAB3750EF16EC6DB6` (`question`),
  KEY `FKAB3750EF364B6B70` (`block`),
  CONSTRAINT `FKAB3750EF16EC6DB6` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKAB3750EF364B6B70` FOREIGN KEY (`block`) REFERENCES `block` (`blockid`),
  CONSTRAINT `testque_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testque_ibfk_2` FOREIGN KEY (`block`) REFERENCES `block` (`blockid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `testque` */

insert  into `testque`(`testquesid`,`block`,`quesnum`,`question`,`score`,`depth`) values (1,1,1,1,2,0),(2,1,2,3,2,1),(3,2,3,2,4,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(40) DEFAULT NULL COMMENT '用户名',
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `usernum` varchar(50) DEFAULT NULL COMMENT '学号、学工号',
  `usertype` int(11) NOT NULL COMMENT '用户角色',
  `reaname` varchar(50) DEFAULT NULL COMMENT '真实名字',
  `class` int(11) DEFAULT NULL COMMENT '班级',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `phonenum` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `dept` int(11) DEFAULT NULL COMMENT '所在学院、外键',
  `position` varchar(50) DEFAULT NULL COMMENT '教师职称',
  `intro` varchar(300) DEFAULT NULL COMMENT '用户简介',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `usernum` (`usernum`),
  KEY `FK8FFE823B15915B06` (`class`),
  KEY `FK36EBCB15915B06` (`class`),
  KEY `FK36EBCB824130F4` (`usertype`),
  KEY `FK36EBCBBFB17774` (`dept`),
  CONSTRAINT `FK36EBCB15915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `FK36EBCB824130F4` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`usertypeid`),
  CONSTRAINT `FK36EBCBBFB17774` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`),
  CONSTRAINT `FK8FFE823B15915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_4` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`usertypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`usernum`,`usertype`,`reaname`,`class`,`gender`,`phonenum`,`email`,`dept`,`position`,`intro`) values (1,'hmjhmj','45','45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'hmj','hmj','31',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'123456','123','32',3,NULL,NULL,NULL,'1234567890','',NULL,NULL,NULL),(5,'456789','456789','21',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'1234','sn','2005',2,NULL,NULL,NULL,'123','123@12345678',NULL,NULL,NULL),(8,'hmj','hmj','14047021',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'dyf','dyf','14047001',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'xxx123','xxx123','200567',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'qqq123','qqq123','14047003',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'345','123','123',3,NULL,NULL,NULL,NULL,'123@123',NULL,NULL,NULL),(14,'2','2','2',3,NULL,NULL,NULL,NULL,'2@2',NULL,NULL,NULL),(15,'啦啦啦','8',NULL,3,NULL,NULL,NULL,'','8@8',NULL,NULL,NULL);

/*Table structure for table `usertype` */

DROP TABLE IF EXISTS `usertype`;

CREATE TABLE `usertype` (
  `usertypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `role` varchar(30) DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`usertypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `usertype` */

insert  into `usertype`(`usertypeid`,`role`) values (1,'admin'),(2,'teacher'),(3,'student');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

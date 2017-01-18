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

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '管理员用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `reaname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `telephone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`username`,`password`,`reaname`,`telephone`,`sex`,`email`) values (1,'hmj123',NULL,NULL,NULL,NULL,NULL),(2,'dyf','456',NULL,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`classid`,`classname`,`major`,`grade`,`dept`) values (1,'14软工','软件工程','14级',1);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id号',
  `coursename` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `detail` varchar(30) DEFAULT NULL COMMENT '课程介绍',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

/*Table structure for table `coustudent` */

DROP TABLE IF EXISTS `coustudent`;

CREATE TABLE `coustudent` (
  `coustudentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程和学生之间的关系',
  `teccourse` int(11) DEFAULT NULL COMMENT '对应的课程',
  `student` int(11) DEFAULT NULL COMMENT '对应的学生',
  PRIMARY KEY (`coustudentid`),
  KEY `FKCBFAE492F3A9A94C` (`student`),
  KEY `FKCBFAE492CF93E62E` (`teccourse`),
  CONSTRAINT `FKCBFAE492CF93E62E` FOREIGN KEY (`teccourse`) REFERENCES `teacourse` (`teacourseid`),
  CONSTRAINT `FKCBFAE492F3A9A94C` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`),
  CONSTRAINT `coustudent_ibfk_1` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coustudent_ibfk_2` FOREIGN KEY (`teccourse`) REFERENCES `teacourse` (`teacourseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `coustudent` */

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptid` int(3) NOT NULL AUTO_INCREMENT COMMENT '院系id号',
  `deptname` varchar(25) DEFAULT NULL COMMENT '院系名称',
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

insert  into `dept`(`deptid`,`deptname`) values (1,'信息工程学院');

/*Table structure for table `errorque` */

DROP TABLE IF EXISTS `errorque`;

CREATE TABLE `errorque` (
  `errorqueid` int(11) NOT NULL AUTO_INCREMENT,
  `question` int(11) DEFAULT NULL COMMENT '题库中题目id',
  PRIMARY KEY (`errorqueid`),
  KEY `FK533747B916EC6DB6` (`question`),
  CONSTRAINT `FK533747B916EC6DB6` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`),
  CONSTRAINT `errorque_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `errorque` */

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '题库中题的id',
  `type` int(10) DEFAULT NULL COMMENT '题型',
  `subject` varchar(120) DEFAULT NULL COMMENT '题目的科目大类',
  `creator` int(20) DEFAULT NULL COMMENT '学号/学工号',
  `label` varchar(120) DEFAULT NULL COMMENT '涉及的知识点',
  `stem` text COMMENT '题干',
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
  `isvisiable` tinyint(1) DEFAULT NULL COMMENT '是否题目对学生可见',
  PRIMARY KEY (`questionid`),
  KEY `FKBA823BE6FAF0318B` (`type`),
  CONSTRAINT `FKBA823BE6FAF0318B` FOREIGN KEY (`type`) REFERENCES `quetype` (`quetypeid`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`type`) REFERENCES `quetype` (`quetypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `question` */

/*Table structure for table `quetype` */

DROP TABLE IF EXISTS `quetype`;

CREATE TABLE `quetype` (
  `quetypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '题型id',
  `typename` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`quetypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quetype` */

/*Table structure for table `selectcourse` */

DROP TABLE IF EXISTS `selectcourse`;

CREATE TABLE `selectcourse` (
  `selectid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '选课id号',
  `student` int(11) DEFAULT NULL COMMENT '学生',
  `course` int(11) DEFAULT NULL COMMENT '所选课程',
  PRIMARY KEY (`selectid`),
  KEY `FK94AD681796E628A0` (`course`),
  KEY `FK94AD6817F3A9A94C` (`student`),
  CONSTRAINT `FK94AD681796E628A0` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`),
  CONSTRAINT `FK94AD6817F3A9A94C` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`),
  CONSTRAINT `selectcourse_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `selectcourse_ibfk_3` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `selectcourse` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `stuname` varchar(40) DEFAULT NULL COMMENT '学生姓名',
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `stunumber` varchar(50) DEFAULT NULL COMMENT '学生学号String',
  `class` int(11) DEFAULT NULL COMMENT '班级',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `phonenum` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`studentid`),
  KEY `dept` (`stunumber`),
  KEY `FK8FFE823B15915B06` (`class`),
  CONSTRAINT `FK8FFE823B15915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`studentid`,`stuname`,`password`,`stunumber`,`class`,`gender`,`phonenum`,`email`) values (4,'hmj','hmj','14047021',1,'女','2147483647','1512339883@qq.com');

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
  CONSTRAINT `FK707913D8BFC0040E` FOREIGN KEY (`test`) REFERENCES `test` (`testid`),
  CONSTRAINT `FK707913D8F3A9A94C` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`),
  CONSTRAINT `stupaper_ibfk_2` FOREIGN KEY (`test`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stupaper_ibfk_3` FOREIGN KEY (`student`) REFERENCES `student` (`studentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stupaper` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stuque` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师id号',
  `teaname` varchar(20) DEFAULT NULL COMMENT '教师姓名',
  `teanum` varchar(50) DEFAULT NULL COMMENT '教师学工号',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `dept` int(3) DEFAULT NULL COMMENT '所在院系，外键',
  `position` varchar(5) DEFAULT NULL COMMENT '职称等级',
  `intro` varchar(30) DEFAULT NULL COMMENT '简介',
  `gender` varchar(5) DEFAULT NULL COMMENT '性别',
  `phonenum` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`teacherid`),
  KEY `FKAA31CBE2BFB17774` (`dept`),
  CONSTRAINT `FKAA31CBE2BFB17774` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`deptid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*Table structure for table `teacourse` */

DROP TABLE IF EXISTS `teacourse`;

CREATE TABLE `teacourse` (
  `teacourseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '授课id号',
  `teacher` int(11) DEFAULT NULL COMMENT '授课教师',
  `course` int(11) DEFAULT NULL COMMENT '课程',
  `class` int(11) DEFAULT NULL COMMENT '教授班级',
  PRIMARY KEY (`teacourseid`),
  KEY `FKE558542B96E628A0` (`course`),
  KEY `FKE558542B15915B06` (`class`),
  KEY `FKE558542B28103C9A` (`teacher`),
  CONSTRAINT `FKE558542B15915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `FKE558542B28103C9A` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacherid`),
  CONSTRAINT `FKE558542B96E628A0` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`),
  CONSTRAINT `teacourse_ibfk_2` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacourse_ibfk_3` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacherid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacourse_ibfk_4` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacourse` */

/*Table structure for table `teamark` */

DROP TABLE IF EXISTS `teamark`;

CREATE TABLE `teamark` (
  `teamarkid` int(11) NOT NULL AUTO_INCREMENT,
  `stuque` int(11) DEFAULT NULL,
  `comment` tinytext COMMENT '教师评语',
  PRIMARY KEY (`teamarkid`),
  KEY `FKAA526DDFCE0E2084` (`stuque`),
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
  CONSTRAINT `FK364492103677CA` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`),
  CONSTRAINT `FK36449215915B06` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_ibfk_2` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test` */

/*Table structure for table `testpaper` */

DROP TABLE IF EXISTS `testpaper`;

CREATE TABLE `testpaper` (
  `testpaperid` int(11) NOT NULL AUTO_INCREMENT COMMENT '组卷id',
  `testpapername` varchar(30) DEFAULT NULL COMMENT '试卷的名字',
  `creator` int(11) DEFAULT NULL COMMENT '创建试卷的老师',
  `questionnum` int(2) DEFAULT NULL COMMENT '题量',
  `totalscore` int(3) DEFAULT NULL COMMENT '总分',
  `totaltime` int(10) DEFAULT NULL COMMENT '答题时间min',
  PRIMARY KEY (`testpaperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `testpaper` */

/*Table structure for table `testque` */

DROP TABLE IF EXISTS `testque`;

CREATE TABLE `testque` (
  `testquesid` int(11) NOT NULL AUTO_INCREMENT COMMENT '组卷试题id',
  `testpaper` int(11) DEFAULT NULL COMMENT '对应的试卷',
  `quesnum` int(3) DEFAULT NULL COMMENT '题在试卷中的顺序',
  `question` int(11) DEFAULT NULL COMMENT '对应题库中的题',
  `score` int(2) DEFAULT NULL COMMENT '分数',
  `depth` int(5) DEFAULT NULL COMMENT '题目难度如98',
  PRIMARY KEY (`testquesid`),
  KEY `quesnum` (`quesnum`),
  KEY `FKAB3750EF103677CA` (`testpaper`),
  KEY `FKAB3750EF16EC6DB6` (`question`),
  CONSTRAINT `FKAB3750EF103677CA` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`),
  CONSTRAINT `FKAB3750EF16EC6DB6` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`),
  CONSTRAINT `testque_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testque_ibfk_2` FOREIGN KEY (`testpaper`) REFERENCES `testpaper` (`testpaperid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `testque` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

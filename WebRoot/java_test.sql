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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`classid`,`classname`,`major`,`grade`,`dept`) values (1,'14软工','软件工程','14级',1),(2,'15软工','软件工程','15级',1),(3,'16软工','软件工程','16级',1),(4,'14计算机','计算机科学与计算','14级',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`courseid`,`coursename`,`detail`,`subject`,`state`,`dept`) values (1,'软件工程与计算一','孙娜',4,'正在开课',1),(2,'软件工程与计算二','啦啦啦',4,'正在开课',1),(4,'软件工程与计算','哈哈哈',4,'正在开课',1),(7,'计算机系统基础','马老师',4,'正在开课',1),(9,'中间件','吴倩',4,'正在开课',1),(12,'马原','黄竹',2,'正在开课',8),(14,'高数上下','乌大神',1,'待审核',3),(15,'哈哈哈哈','嘿嘿嘿嘿',2,'待审核',13),(16,'云计算导论','是韦老师开的哦~',4,'待审核',1);

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
  `option1` varchar(240) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项1',
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
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`questionid`,`type`,`subject`,`adder`,`label`,`stem`,`annotation`,`answer`,`quescore`,`option1`,`option2`,`option3`,`option4`,`option5`,`option6`,`option7`,`isPicture`,`isvisiable`,`depth`,`testcreator`) values (1,1,4,7,'操作系统','设置当前目录的主要目的是','无说明\r\n','C',2,'A.节省外存空间','B.节省内存空间','C .加快文件的检索速度','D.加快文件的读写速度',NULL,NULL,NULL,0,1,0.75,NULL),(2,2,4,7,'操作系统','在虚拟内存管理中,地址变换机构将逻辑地址变换为物理地址,形成该逻辑地址阶段是','链接是在虚拟内存管理中,地址变换机构将逻辑地址变换为物理地址,形成该逻辑地址的阶段。','链接',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0.34,NULL),(3,1,4,10,'操作系统','设与某资源关联的信号量初值为3,当前值为1。若M表示该资源的可用个数，N表示等待该资源的进程数。则M、N分别是',NULL,'B',3,'A. 0、1','B. 1、0','C．1、2','D．2、0',NULL,NULL,NULL,NULL,NULL,0.9,NULL),(4,1,1,7,'操作系统','操作系统是对             进行管理的软件。','操作系统管理计算机资源','A',NULL,'计算机资源','应用程序',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,3,4,7,'操作系统','分时操作系统通常采用时间片轮转策略为用户服务。','分时操作系统确实是采用时间片轮转策略为用户服务。','对',NULL,'对','错',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,4,7,'操作系统','通过某种技术把一个物理实体变为若干个逻辑上的对应物，称为','通过某种技术把一个物理实体变为若干个逻辑上的对应物，称为虚拟','虚拟',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(7,6,4,7,'操作系统','           是分时操作系统的特征','XXX','A',NULL,'独立性','实时性',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(8,4,4,7,'操作系统','操作系统的主要特征','并发、共享、虚拟和异步','并发、共享、虚拟和异步',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(9,4,12,7,'军事理论','精确制导武器的特点？','','高精度、高效能、高技术、射程远、威力大',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(10,1,9,7,'操作系统','一般用户更喜欢使用的系统是（  ）。','无说明\n','C',NULL,'A.手工操作','B.单道批处理','C.多道批处理','D.网络操作系统','','','',NULL,NULL,NULL,NULL),(11,1,9,7,'操作系统','操作系统的发展过程是（  ）。','无说明\n','C',NULL,'A.原始操作系统，管理程序，操作系统','B.原始操作系统，操作系统，管理程序','C.管理程序，原始操作系统，操作系统','D.管理程序，操作系统，原始操作系统','','','',NULL,NULL,NULL,NULL),(12,1,9,7,'操作系统','进程调度的对象和任务分别是（  ）。','无说明\n','C',NULL,'A、作业，从就绪队列中按一定的调度策略选择一个进程占用CPU','B、进程，从后备作业队列中按调度策略选择一个作业占用CPU','C、进程，从就绪队列中按一定的调度策略选择一个进程占用CPU','D、作业，从后备作业队列中调度策略选择一个作业占用CPU','','','',NULL,NULL,NULL,NULL),(13,1,9,7,'操作系统','支持程序浮动的地址转换机制是（  ）。','无说明\n','A',NULL,'A、动态重定位　　　　　　','B、段式地址转换','C、页式地址转换　　　　  　','D、静态重定位','','','',NULL,NULL,NULL,NULL),(14,1,9,7,'操作系统','设计批处理多道系统时，首先要考虑的是（  ）。','无说明\n','B',NULL,'A、灵活性和可适应性　','B、系统效率和吞吐量','C、交互性和响应时间　','D、实时性和可靠性','','','',NULL,NULL,NULL,NULL),(15,1,9,7,'操作系统','文件的保密是指防止文件被（  ）。','无说明\n','C',NULL,'A、篡改　','B、破坏','C、窃取','D、删除','','','',NULL,NULL,NULL,NULL),(16,1,9,7,'操作系统','UNIX中的文件系统采用（  ）。','无说明\n','D',NULL,'A、网状文件','B、记录式文件','C、索引文件','D、索引文件','','','',NULL,NULL,NULL,NULL),(17,1,9,7,'操作系统','文件系统的主要目的是（  ）。','无说明\n','A',NULL,'A、实现对文件的按名存取','B、实现虚拟存贮器','C、提高外围设备的输入输出速度','D、用于存贮系统文档','','','',NULL,NULL,NULL,NULL),(18,1,9,7,'操作系统','为了允许不同用户的文件具有相同的文件名，通常在文件系统中采用（  ）。','无说明\n','B',NULL,'A、重名翻译','B、多级目录　','C、约定','D、文件名','','','',NULL,NULL,NULL,NULL),(19,1,9,7,'操作系统','一种既有利于短小作业又兼顾到长作业的作业调度算法是（  ）。','无说明\n','C　',NULL,'A、先来先服务　','B、轮转　','C、最高响应比优先','D、均衡调度','','','',NULL,NULL,NULL,NULL),(20,1,9,7,'操作系统','当每类资源只有一个个体时，下列说法中不正确的是（  ）。','无说明\n','C　',NULL,'A、有环必死锁　　　   ','B、死锁必有环','C、有环不一定死锁　','D、被锁者一定全在环中','','','',NULL,NULL,NULL,NULL),(21,1,9,7,'操作系统','在单处理器的多进程系统中，进程什么时候占用处理器和能占用多长时间，取决于（  ）。','无说明\n','B',NULL,'A、进程相应的程序段的长度','B、进程自身和进程调度策略','C、进程总共需要运行时间多少','D、进程完成什么功能','','','',NULL,NULL,NULL,NULL),(22,4,12,7,'军事理论','国防的类型有哪些？我国国防属于什么类型的国防？','','主要有四种：扩张型；自卫型；联盟型；中立型。我国国防属于自卫型国防。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(23,4,12,7,'军事理论','海湾战争、阿富汗战争、科索沃战争、伊拉克战争分别爆发于哪一年？','','海湾战争1991年；阿富汗战争2001年；科索沃战争1999年；伊拉克战争2003年。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(24,2,9,7,'操作系统','.若信号量S的初值定义为10，则在S上调用了16次P操作和15次V操作后S的值应该为（  ）。','无说明','9',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(25,2,9,7,'操作系统','每个索引文件都必须有一张     表，其中的地址登记项用来指出文件在外存上的位置信息（  ）。','','索引结点',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(26,4,12,7,'军事理论','导弹按射程如何分类？','','近程导弹＜1000公里、中程导弹1000—3000公里、远程导弹3000—8000公里、洲际导弹＞8000公里',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(27,1,5,7,'管理学','管理的核心是（  ）。','','D',NULL,'A.决策 ','B.领导','C.激励','D.处理好人际关系','','','',NULL,NULL,NULL,NULL),(28,1,5,7,'管理学','霍桑实验的结论中对职工的定性是（  ）。','','B',NULL,'A.经济人',' B.社会人','C.自我实现人','D.复杂人','','','',NULL,NULL,NULL,NULL),(29,1,5,7,'管理学','古典管理理论阶段的代表性理论是（  ）。','','A',NULL,'A.科学管理理论','B 行政组织理论','C.行为科学理论',' D.权变理论','','','',NULL,NULL,NULL,NULL),(30,1,5,7,'管理学','双因素理论中的双因素指的是（  ）。','','D',NULL,'A.人和物的因素','B.信息与环境','C. 自然因素和社会因素','D.自然因素和社会因素','','','',NULL,NULL,NULL,NULL),(31,1,5,7,'管理学','泰罗认为工人和雇主双方都必须来一次（  ）。','','D',NULL,'A.管理培训','B.管理实践','C.劳动竞赛','D.心理革命','','','',NULL,NULL,NULL,NULL),(32,1,5,7,'管理学','从某种意义上讲，组织就是一个信息沟通网络，处在这个信息网络中心并对网络的畅通负有责任的人是（  ）。','','D',NULL,'A.信息系统管理员','B.高层管理者','C.一线员工 ',' D.主管人员','','','',NULL,NULL,NULL,NULL),(33,1,1,7,'微观经济学','以下不是直接影响需求的因素或条件是（  ）。','','',NULL,'A、价格',' B、偏好','C、收入','D、成本','','','',NULL,NULL,NULL,NULL),(34,1,1,7,'微观经济学','当出租车租金上涨后，对公共汽车服务的（  ）。','','',NULL,'A、需求下降',' B、需求增加','C、需求量下降',' D、需求量增加','','','',NULL,NULL,NULL,NULL),(35,1,1,7,'微观经济学','若需求曲线富有弹性，其确切的含义是价格上升会引起（  ）。','','',NULL,'A、购买者购买量的下降',' B、购买者购买量的增加','C、购买者总支出的增加 ','D、购买者总支出的减少','','','',NULL,NULL,NULL,NULL),(36,1,1,7,'微观经济学','加入一个完全竞争厂商接到订单价格小于平均成本但但大于平均可变成本，它应该是（  ）。','','',NULL,'A、停止生产',' B、生产且有利润',' C、亏损但继续生产 ','D、生产且利润为零','','','',NULL,NULL,NULL,NULL),(37,1,1,7,'微观经济学','如果价格下降10%能使买者总支出增加10%，则这种商品的需求量对价格（  ）。','','',NULL,'A、富有弹性','B、具有单位弹性','C、缺乏弹性','D、其弹性不能确定','','','',NULL,NULL,NULL,NULL),(38,1,1,7,'微观经济学','已知XY两种商品的交叉弹性—-0.4，则这两种商品是（  ）。','','',NULL,'A、独立品',' B、替代品','C、补充品 ',' D、不能确','','','',NULL,NULL,NULL,NULL),(39,1,1,7,'微观经济学','在完全竞争市场中，厂商短期均衡条件是（  ）。','','',NULL,'A、P=AR','B、P=MR',' C、P=MC ',' D、P=AC','','','',NULL,NULL,NULL,NULL),(40,4,12,7,'军事理论','什么是精确制导武器？包括哪两大类？','','是指采用精确制导技术，直接命中概率在50％以上的武器。包括导弹和精确制导弹药两大类',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(41,1,2,7,'历史学','我国科举制度正式形成于（  ）','','',NULL,'A、汉朝 ','B、三国',' C、隋朝',' D、唐朝','','','',NULL,NULL,NULL,NULL),(42,1,2,7,'历史学','隋炀帝发动的三次战争是对（  ）','','',NULL,'A、匈奴  ','B、北魏',' C、东突厥','D、高丽','','','',NULL,NULL,NULL,NULL),(43,1,2,7,'历史学','626年发动“玄武门之变”的是（ ）','','',NULL,'A、李渊 ','B、李建成',' C、李世民','D、李元吉','','','',NULL,NULL,NULL,NULL),(44,1,2,7,'历史学','唐太宗时期，先后进谏200多次的著名大臣是（  ）','','',NULL,'A、房玄龄',' B、魏征 ',' C、姚崇',' D、杜如晦','','','',NULL,NULL,NULL,NULL),(45,1,2,7,'历史学','历史上把唐太宗统治时期称为（  ）','','',NULL,'A、贞观之治',' B、开元盛世','C、开皇之治','D、光武中兴','','','',NULL,NULL,NULL,NULL),(46,1,2,7,'历史学','我国饮茶之风风靡全国始于（  ）','','',NULL,'A、秦朝',' B、汉朝','C、南北朝','D、唐朝','','','',NULL,NULL,NULL,NULL),(47,1,2,7,'历史学','下列农具中，可用于灌溉的是（  ）','','',NULL,'A、曲辕犁','B、耧车','C、水排','D、筒车','','','',NULL,NULL,NULL,NULL),(48,1,2,7,'历史学','维吾尔族的祖先在唐玄宗时被称作（  ）','','',NULL,'A、突厥',' B、回纥','C、回鹘','D、兀儿','','','',NULL,NULL,NULL,NULL),(49,1,2,7,'历史学','唐朝的外国留学生中，人数最多的是（ ）','','',NULL,'A、新罗人','B、高丽人','C、日本人',' D、波斯人','','','',NULL,NULL,NULL,NULL),(50,1,2,7,'历史学','今天的印度半岛各国，唐朝时称为（  ）','','',NULL,'A、安息','B、大秦','C、天竺',' D、大食','','','',NULL,NULL,NULL,NULL),(51,1,2,7,'历史学','唐玄宗统治后期的年号是（  ）','','',NULL,'A、贞观',' B、开元','C、天宝','D、开皇','','','',NULL,NULL,NULL,NULL),(52,1,2,7,'历史学','唐朝由强盛走向衰落的转折点是（  ）','','',NULL,'A、唐玄宗任用奸臣','B、藩镇割据局面的形成','C、安史之乱','D、唐末农民起义的爆发','','','',NULL,NULL,NULL,NULL),(53,1,2,7,'历史学','建于隋朝的建筑物是（  ）','','',NULL,'A、赵州桥',' B、大雁塔 ',' C、大昭寺','D、佛光寺','','','',NULL,NULL,NULL,NULL),(54,1,2,7,'历史学','后世尊称的“药王”是（  ）','','',NULL,'A、僧一行 ','B、王叔和',' C、李时珍','D、孙思邈','','','',NULL,NULL,NULL,NULL),(55,1,2,7,'历史学','欧洲第一部由国家编定并颁布的药典比我国晚了（  ）','','',NULL,'A、600年',' B、700年',' C、800年','D、900多年','','','',NULL,NULL,NULL,NULL),(56,3,2,7,'历史学','“唇亡齿寒”一词中的“唇”和“齿”最初指代的是两个国家。（  ）','','对',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(57,3,2,7,'历史学','我国第一位以山水诗著名的诗人是曾做过永嘉太守的谢灵运（  ）','','对',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(58,3,2,7,'历史学','“春花秋月何时了，往事知多少”语出我国女词人李清照的《虞美人》。（  ）','','错',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(59,3,2,7,'历史学','《窦娥冤》、《西厢记》、《牡丹亭》和《桃花扇》都是著名的元杂剧历史知识竞赛试题及答案知识竞赛。（  ）','','错',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(60,3,2,7,'历史学','被称为“四史”的史书是《史记》《汉书》《后汉书》和《资治通鉴》。（  ）','','错',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(61,3,2,7,'历史学','我国国歌又名《义勇军进行曲》，由田汉作词，聂耳作曲。（  ）','','对',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(62,3,2,7,'历史学','鲁迅的小说《狂人日记》《祝福》《孔乙己》都出自小说集《呐喊》。（  ）','','错',NULL,'对','错','','','','','',NULL,NULL,NULL,NULL),(63,4,2,7,'历史学','隋朝大运河的四段、五河是哪四段、哪五河？','','四段：通济渠、永济渠、邗勾；',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(64,4,2,7,'历史学','隋朝的建立时间、地点、人物？','','581年，长安',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(65,4,2,7,'历史学','唐朝的建立时间、地点、人物？','','618年，长安，唐太宗',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(66,4,2,7,'历史学','说出唐朝和五个少数民族的名称？','','吐蕃、回纥、靺鞨、南诏、突厥',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(67,4,2,7,'历史学','唐朝和五个国家的科技交往和贸易，请说出交往的国家名称？','','新罗、天竺、波斯、日本、东南亚',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(68,2,2,7,'历史学','说出唐初的年代( )','','618—713年',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(69,2,2,7,'历史学','说出盛唐的年代( )','','713—766年',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(70,2,2,7,'历史学','说出中唐的年代( )','','766—835年',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(71,2,4,7,'哲学','改革和社会革命都根源于统治阶级和被统治阶级之间的矛盾。(  ) ','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(72,2,4,7,'哲学','唯物辩证法的总特征是普遍联系和永恒发展的观点。（  ）','',' 对',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(73,2,4,7,'哲学','“一切以时间、地点、条件为转移”否定了人的主观能动性的发挥。（  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(74,2,4,7,'哲学','辩证的否定是事物发展与联系的环节。（  ）','',' 对',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(75,2,4,7,'哲学','规律是人们主观建立起来的事物现象间的联系。（  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(76,2,4,7,'哲学','矛盾普遍性和特殊性的关系是矛盾普遍性包含矛盾的特殊性。（  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(77,2,4,7,'哲学','从唯物史观的观点看，伟人的活动是“历史的灵魂”。（  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(78,2,4,7,'哲学','“物质是永恒的”和“世界上一切事物都是有生有灭的”这两种说法是相互否定的。（  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(79,2,4,7,'哲学','从马克思主义哲学来看，对待我国传统文化的正确态度是辩证否定。（ ）','',' 对',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(80,2,4,7,'哲学','科学的任务就是揭示规律性，消灭偶然性。（ ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(81,2,4,7,'哲学','用发展的观点看世界，就要坚持事物是“方生方死，方死方生，方可方不可，方不可方可”。 （  ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(82,2,4,7,'哲学','唯物史观认为，人类社会的发展是一个自然历史的过程。（  ）','',' 对',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(83,2,4,7,'哲学','中国古代哲学家公孙龙“白马非马”之说的错误在于割裂了整体与部分的关系。（错 ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(84,2,4,7,'哲学','哲学史上割裂感性认识与理性认识辩证统一的理论是二元论。（ 错 ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(85,2,4,7,'哲学','马克思主义哲学的物质概念所指的就是自然事物。（ 错 ）','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(86,2,4,7,'哲学','人口因素在社会发展中起决定的作用。(　　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(87,2,4,7,'哲学','社会意识的演变具有相对独立性。（　　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(88,2,4,7,'哲学','上层建筑决定经济基础的性质。(　　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(89,2,4,7,'哲学','社会革命的根本问题是夺取国家政权问题。(　错　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(90,2,4,7,'哲学','从形式上看，科学是知识的理论体系。(　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(91,2,4,7,'哲学','马克思主义哲学的研究对象是物质世界的一切现象。(　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(92,2,4,7,'哲学','在马克思主义哲学看来，人脑产生意识，就同肝脏分泌胆汁一样。(　　　)','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(93,2,4,7,'哲学','哲学是世界观，对人们的实践行为不提供方法上的指导。(　　　)　','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(94,2,4,7,'哲学','哲学是科学知识的概括与总结，所以不涉及价值问题。(　　)　','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(95,2,4,7,'哲学','在哲学思想中，自然观和历史观没有统一性。(　　　)　','','错',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(96,2,4,7,'哲学','列举关于哲学本质的不同理解的学说','','普遍规律说、认识论说、语言分析说、存在意义说、精神境界说、文化批判说、文化样式说、实践论说。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(97,2,4,7,'哲学','辩证法与形而上学的对立','','辩证法是关于世界普遍联系和永恒发展的学说，它用联系的、发展的从而是全面的观点来看世界，而形而上学则是用孤立的、静止的从而是片面的观点来看世界。辩证法和形而上学之间存在着三个方面的原则性对立：一是联系观点和孤立观点的对立；二是发展变化观点和静止不变观点的对立；三是全面观点和片面观点的对立。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(98,2,4,7,'哲学','哲学和各门具体科学的关系？','','1、哲学涉及自然、社会、思维领域，包含的问题是多方面的。2、具体科学都是以自然或社会领域中的某一方面为对象，它研究的问题是具体的，限定于特定领域，而哲学以整体的世界为对象，它所研究问题的范畴具有普遍性，它提问的方式和问题本身就具有抽象性和普遍性。3、哲学以各门具体科学为基础，是各门具体科学知识的概念和总结，为各门具体科学提供世界观和方法论，各门科学必须以哲学为指导，二者的关系是共性和个性，一般和个别，普遍和特殊，抽象和具体，指导和被指导的关系。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(99,2,4,7,'哲学','解放思想的哲学根据','','解放思想是马克思主义科学世界观和方法论的集中体现和根本要求。具体说来，解放思想着眼于从主体方面，在尊重客观规律的前提下，强调充分发挥人的主观能动性。它是马克思主义哲学唯物论、辩证法、认识论和历史观的根本要求和集中体现。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(100,2,4,7,'哲学','简述社会改革的实质和作用','','社会改革是同一社会形态对某些不适应的方面和环节的调整，不改变该社会制度的根本性质，是社会发展中的量变或部分质变。 ',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(101,2,4,7,'哲学','简述规律的含义及特点','','规律是指事物之间的内在的必然联系。这种联系不断重复出现，在一定条件下经常起作用，并且决定着事物必然向着某种趋向发展。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(102,4,12,7,'军事理论','越南战争和第四次中东战争处在世界新军事变革的哪个发展阶段？','','（孕育奠基阶段）',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(103,4,12,7,'军事理论','新军事技术革命最早是由前苏联哪位将领提出的？','','（奥加尔科夫元帅）',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(104,4,12,7,'军事理论','20世纪90年代至2002年是世界新军事变革发展的什麽阶段？（全面展开阶段）','','（全面展开阶段',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(105,4,12,7,'军事理论','什么是航天技术？它由哪几部分组成？','','航天技术，是指将航天器送入太空，以探索、开发和利用太空及地球以外天体的综合性工程技术，又称空间技术。主要由航天运载器技术、航天器技术和航天测控技术组成。',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(106,4,12,7,'军事理论','1957年10月4日，哪个国家成功发射了世界上第一颗人造地球卫星？','','前苏联',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(107,4,12,7,'军事理论','第一、二、三宇宙速度分别是多少？','','7.9千米／秒、11.2千米／秒、16.7千米／秒）',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(108,4,12,7,'军事理论','要使航天器在空间轨道上安全运行，除必要速度外，运行高度通常在多少以上？','','120千米',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(109,4,12,7,'军事理论','“能源”号、“土星”系列、“阿里亚娜”系列、“长征”系列运载火箭分别是哪个国家或地区发射的？','','前苏联、美国、欧洲航天局、中国',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(110,4,12,7,'军事理论','1961年4月12日，哪国宇航员乘坐载人飞船进人太空，第一次将人类遨游太空的梦想变为现实？','','前苏联',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(111,4,12,7,'军事理论','1969年7月20日，哪国宇航员乘坐飞船首次登月成功，开辟了人类登月活动的新篇章。','','美国',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(112,4,12,7,'军事理论','哪一年我国首次发射了“东方红”1号试验卫星，成为继美、苏、法、日后第五个能制造和发射人造卫星的国家？','','1970年',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(113,4,12,7,'军事理论','2003年10月15日，我国“神舟”五号载人飞船发射成功，中华民族的千年“飞天”梦想终于实现，谁乘座这艘飞船执行了太空飞行任务？','','杨利伟',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(114,4,12,7,'军事理论','军事航天系统大致可分为哪四类？','','军事航天运输系统，军事卫星系统，军事载人航天系统和航天作战系统',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(250,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(251,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(252,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(253,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(254,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(255,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(256,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(257,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(258,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(259,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(260,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(261,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(262,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(263,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(264,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(265,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(266,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(267,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(268,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(269,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(270,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(271,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(272,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(273,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(274,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(275,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(276,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(277,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(278,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(279,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(280,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(281,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(282,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(283,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(284,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(285,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(286,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(287,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(288,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(289,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(290,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(291,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(292,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(293,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(294,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(295,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(296,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(297,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(298,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(299,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(300,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(301,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(302,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(303,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(304,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(305,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(306,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(307,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(308,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(309,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(310,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(311,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(312,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(313,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(314,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(315,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(316,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(317,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(318,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(319,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(320,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(321,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(322,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(323,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(324,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(325,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(326,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(327,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(328,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(329,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(330,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(331,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(332,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(333,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(334,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(335,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(336,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(337,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(338,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(339,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(340,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(341,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(342,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(343,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(344,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(345,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL),(346,NULL,NULL,NULL,'','','','',NULL,'','','','','','','',NULL,NULL,NULL,NULL);

/*Table structure for table `quetype` */

DROP TABLE IF EXISTS `quetype`;

CREATE TABLE `quetype` (
  `quetypeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '题型id',
  `typename` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`quetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`subjectid`,`subjectname`) values (12,'军事学'),(11,'农学'),(10,'医学'),(2,'历史'),(4,'哲学'),(9,'工学'),(7,'教育学'),(3,'文学'),(6,'法学'),(8,'理学'),(5,'管理学'),(1,'经济学');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `teacourse` */

insert  into `teacourse`(`teacourseid`,`teacher`,`course`,`class`,`year`,`term`,`couscore`,`coutime`,`state`) values (1,7,1,1,2014,2,100,36,'正在开课'),(2,10,9,1,2015,1,100,45,'正在开课'),(3,7,1,NULL,2017,1,67,67,'正在审核'),(5,7,16,NULL,2017,1,80,80,'正在审核'),(7,7,16,NULL,2017,1,80,80,'正在审核');

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

insert  into `user`(`userid`,`username`,`password`,`usernum`,`usertype`,`reaname`,`class`,`gender`,`phonenum`,`email`,`dept`,`position`,`intro`) values (1,'hmjhmj','45','45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'hmj','hmj','31',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'123456','123','32',3,NULL,NULL,NULL,'1234567890','',NULL,NULL,NULL),(5,'456789','456789','21',2,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(7,'1234','2005','2005',2,NULL,NULL,NULL,'123','123@12345678',1,NULL,NULL),(8,'hmj','hmj','14047021',3,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(9,'dyf','dyf','14047001',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'xxx123','xxx123','200567',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'qqq123','qqq123','14047003',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'345','123','123',3,NULL,NULL,NULL,NULL,'123@123',NULL,NULL,NULL),(14,'2','2','2',3,NULL,NULL,NULL,NULL,'2@2',NULL,NULL,NULL),(15,'啦啦啦','8',NULL,3,NULL,NULL,NULL,'','8@8',NULL,NULL,NULL);

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

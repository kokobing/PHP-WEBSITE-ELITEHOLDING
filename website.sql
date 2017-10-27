-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 27 日 01:00
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `eliteholding`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, 'test', '', '/admin/hr/hr_exam.php', 4, 2, 18, 0);
INSERT INTO `backmenu` VALUES (19, 1, 'test2', '', '/admin/hr/hr_job.php', 4, 2, 19, 0);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (50, 1, '留言反馈', '', '/admin/news/news_manage.php?&searchselect=8', 3, 2, 50, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `exam`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2013-12-04 11:47:33', '116.7.12.209');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, 'LOGO、Header电话管理', '', '', 'Call us:&nbsp;<span>400-705-0277</span>', 0, 1);
INSERT INTO `layout` VALUES (2, 1, '页脚管理', '', '', '<strong><span style="color:#ff0000;">links：<a href="http://www.jsdiecastings.com/">aluminum die castings</a></span></strong>', 0, 2);
INSERT INTO `layout` VALUES (6, 1, '首页文本B', '', 'Advanced Molding Technology', '<div>\r\n	Elite continues to invest in state of the art machines and technology to provide process consistency, precision, and reduced labor. Combining automated process monitoring and an expert staff of process technicians means we can quickly detect process issues and correct for out of control variables.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 5);
INSERT INTO `layout` VALUES (4, 1, '友情链接管理', '', '', '', 0, 4);
INSERT INTO `layout` VALUES (5, 1, '首页文本A', '', 'CAD/CAM design and  manufacture of moulds, patterns, models, jigs & fixtures, prototype parts. Full CAD modelling and Surface generation...', '<div>\r\n	For over 25 years Elite has been dedicated to providing companies with superior&nbsp;Tool making&nbsp;and tooling, along with metal finishing and CNC machining through state of the art machinery and processes. Specializing in aluminum and pricision molding, engineers and production staff will develop a high pressure&nbsp;molding process that will produce your parts economically and with reliable quality.</div>\r\n<div>\r\n	Request a Quote, or Ask a Question today!</div>\r\n', 0, 6);
INSERT INTO `layout` VALUES (3, 1, 'BANNER图管理', '', '', '', 0, 3);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (3, 3, 1, '', '', '', '1369576566.jpg', '', 1, 'JPG', '2013-05-26 21:56:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (2, 1, 1, '', '', '', '1369575679.png', '', 1, 'PNG', '2013-05-26 21:41:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (4, 3, 1, '', '', '', '1369576574.jpg', '', 1, 'JPG', '2013-05-26 21:56:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (5, 3, 1, '', '', '', '1369576583.jpg', '', 1, 'JPG', '2013-05-26 21:56:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (6, 4, 1, '', '', '1#', '1369577741.jpg', '', 1, 'JPG', '2013-05-26 22:15:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (15, 4, 1, '', '', '', '1370488683.gif', '', 1, 'GIF', '2013-06-06 11:18:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (13, 4, 1, '', '', '', '1370488533.jpg', '', 1, 'JPG', '2013-06-06 11:15:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 0, 'Information', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (2, 1, 'Services', '', 1, 1, 2, 2);
INSERT INTO `newsdir` VALUES (3, 1, 'Design Expertise', '', 1, 1, 2, 3);
INSERT INTO `newsdir` VALUES (4, 1, 'Resource Center', '', 1, 1, 2, 4);
INSERT INTO `newsdir` VALUES (5, 1, 'About Us', '', 1, 1, 2, 5);
INSERT INTO `newsdir` VALUES (6, 1, 'Newsletter', '', 1, 1, 2, 6);
INSERT INTO `newsdir` VALUES (7, 1, 'Feedback', '', 1, 0, 1, 7);
INSERT INTO `newsdir` VALUES (8, 1, 'Request a Quote', '', 1, 7, 2, 8);
INSERT INTO `newsdir` VALUES (9, 1, 'Ask a Question', '', 1, 7, 2, 9);
INSERT INTO `newsdir` VALUES (10, 1, 'Free Design CD', '', 1, 7, 2, 10);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (1, 2, 0, 1, 'Product Design', 'Our highly skilled, creative engineers provide assistance to our customers and prospective customers with quotes, part redesigns for die casting, and tooling design. They act as project managers, working closely with production, quality and sales. These combined efforts facilitate the development of functional, practical tool designs and improve quality and efficiency in all phases of engineering and production.', '<p style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; font: 13px Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Our highly skilled, creative engineers provide assistance to our customers and prospective customers with quotes, part redesigns for die casting, and tooling design. They act as project managers, working closely with production, quality and sales. These combined efforts facilitate the development of functional, practical tool designs and improve quality and efficiency in all phases of engineering and production.</span></p>\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; font-weight: bold; color: rgb(51,51,51); padding-bottom: 5px; font-style: normal; text-align: left; padding-top: 10px; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; line-height: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<span class="style10" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Rapid Prototyping</span></h3>\r\n<div style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; text-align: left; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<span class="style10" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Complete, accurate designs can be turned into prototypes. Although prototyping the product is not always necessary, it can be a valuable tool to prevent functional errors. Utilizing 3D CAD databases, we can transform your 3D Model into a sample metal casting within a week once the CAD Model is completed. Rapid prototyping can then be used for plaster or sand casting for larger sample runs (over 6 parts) as a bridge to the permanent production die cast tooling. </span></div>\r\n<div style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></div>\r\n<div style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	&nbsp;</div>\r\n<div style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	Prototyping can provide the following advantages over the Manufacture of Production Tooling initially:</div>\r\n<ul class="style10" style="list-style-type: disc; white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 2em; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Metal parts (prototypes) in days instead of weeks</span></li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Less expensive than Permanent Tooling</span></li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Shorter Lead-time than Permanent Tooling</span></li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Avoids delay of normal product development schedules</span></li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Produce product to approximate desired features of the proposed die casting for testing and evaluation &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">&nbsp;</strong></span></li>\r\n</ul>\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; font-weight: bold; color: rgb(51,51,51); padding-bottom: 5px; font-style: normal; padding-top: 10px; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; line-height: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	Rapid<span class="Apple-converted-space">&nbsp;</span>Tooling for Sand Cast Production</h3>\r\n<ul style="list-style-type: disc; white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; font: 13px Arial, Helvetica, sans-serif; padding-left: 2em; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Produce a sand cast pattern from your CAD Model in days</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Raipd Tooling for Short Run Production Jobs - quantity of 6 to 100 units</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		An affordable option to get your project started, tested, and proven out</li>\r\n</ul>\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; font-weight: bold; color: rgb(51,51,51); padding-bottom: 5px; font-style: normal; padding-top: 10px; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; line-height: normal; padding-right: 0px; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	&nbsp;</h3>\r\n<br />\r\n<img alt="" src="/upload/other/images/20130606_064823.jpg" style="height: 677px; width: 497px" />', '', 1, 1, '', '2013-05-26', '2013-05-26 14:55:51', '2013-06-06 14:48:32', '0000-00-00 00:00:00', 0, 1);
INSERT INTO `newsinfo` VALUES (2, 2, 0, 1, 'Aluminum Casting', 'Aluminum die casting has been a specialty of Elite for the past 25 years. Our aluminum casting service has been helping engineers and architects bring their designs to life with state of the art part designs and reliable quality.', '<p style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,51); padding-bottom: 0px; text-align: justify; padding-top: 0px; font: 12px Verdana, Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	Elite holding has a well equipped Sheet Metal facility and press shop (with presses ranging from 30 ton to 200 ton). Stampings ranging from small connector parts to larger automotive panels can be handled.<br />\r\n	&nbsp;</p>\r\n<p style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,51); padding-bottom: 0px; text-align: justify; padding-top: 0px; font: 12px Verdana, Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	Systematic Quality Assurance plans, stage-wise inspection, and good manufacturing practices ensure high quality stampings.&nbsp; Value added processes include plating, painting, powder coating, welding (spot, projection &amp; MIG) and assembly.<br />\r\n	<br />\r\n	<br />\r\n	<img alt="" src="/upload/other/images/20130606_064540.jpg" style="height: 442px; width: 552px" /></p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 15:11:52', '2013-06-06 14:46:27', '2013-06-05 14:57:00', 0, 3);
INSERT INTO `newsinfo` VALUES (3, 2, 0, 1, 'CNC Machining', 'Machined Castings - Any features can be machined into our base castings with our top quality equipment. Our skilled operators employ all forms of machining to meet your requirements: multi-point drilling and tapping, milling, boring, lathe work, and grinding.', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Machined Castings - Any features can be machined into our base castings with our top quality equipment. Our skilled operators employ all forms of machining to meet your requirements: multi-point drilling and tapping, milling, boring, lathe work, and grinding.</span></p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	For start-up or multi-tool operations we utilize our CNC equipment, which enables us to perform many tasks at one station. Focusing on increased throughput and low cost, we will design and construct multi-point or dial machines for high volume applications. At Premier we can customize any tooling you require with our quality machines, exceptional engineering, and expert production staff.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><img alt="" src="/upload/other/images/20130606_064420.jpg" style="height: 497px; width: 497px" /></span></p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 15:14:00', '2013-06-06 14:44:44', '0000-00-00 00:00:00', 0, 4);
INSERT INTO `newsinfo` VALUES (4, 2, 0, 1, 'Metal Finishing', 'Large capacity vibratory deburring is a popular finishing technique in circumstances where "pre-plate" or operator handling of the product is important. This method provides two benefits in one process: smooth radiused edges and removal of the oils used in machining and trimming. We offer any combination of plastic, ceramic, steel, and other media.', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">After all aspects of the casting and machining are complete, we can apply all aesthetic, functional, or protective coatings. The various finishing options include:</span></p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Vibratory Deburring</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Shotblasting</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Robotic Sanding, Polishing, and Bright Finish</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Robotic Painting</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Powder Paint</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Wet Spray Paint</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Plating- Chromate, E-Nickel, Cadmium, and Silver Plating</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		E Coating</li>\r\n</ul>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Large capacity vibratory deburring is a popular finishing technique in circumstances where &quot;pre-plate&quot; or operator handling of the product is important. This method provides two benefits in one process: smooth radiused edges and removal of the oils used in machining and trimming. We offer any combination of plastic, ceramic, steel, and other media.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Shotblasting provides a &quot;sand blast&quot; finish in a variety of textures. We recommend this technique for both &quot;flash&quot; removal and pre-paint texturizing. Shotblasting also gives the product a brightened metal finish.</p>\r\n<br />\r\n<img alt="" src="/upload/other/images/20130606_064731.jpg" style="height: 497px; width: 497px" />', '', 1, 1, '', '2013-05-26', '2013-05-26 15:16:13', '2013-06-06 14:47:54', '0000-00-00 00:00:00', 0, 2);
INSERT INTO `newsinfo` VALUES (5, 2, 0, 1, 'Injection Molding ', 'We at Elite have the facilities and expertise to do many types of assembly and testing. Product Assembly is ensured to maintain the highest standard of quality, as well as efficient turn around times utilizing assembly lines for large quantities.', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 16px"><span style="font-family: arial, helvetica, sans-serif"><span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">We at Elite have the facilities and expertise to do many types of assembly and testing. Product Assembly is ensured to maintain the highest standard of quality, as well as efficient turn around times utilizing assembly lines for large quantities.</span></span></span></p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 16px"><span style="font-family: arial, helvetica, sans-serif">From simple mechanical assembly and pressure testing, to electrical assembly and testing with a network analyzer. This will allow you to purchase a finished product rather than just a component.</span></span></p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<table border="0" style="height: 848px; white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,51); text-align: justify; font: 12px Simsun; orphans: 2; widows: 2; letter-spacing: normal; width: 514px; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<tbody>\r\n		<tr valign="top">\r\n			<td height="206">\r\n				<p align="left" class="style5 style14" style="font-size: 18px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-size: 16px"><span style="font-family: arial"><strong>Process Capabilities</strong><br />\r\n					<br />\r\n					<span style="font-size: 14px"><span style="font-family: arial, helvetica, sans-serif">Injection molding presses<br />\r\n					Presses range in size from 55 thru 500 tons<br />\r\n					Environmentally controlled molding facility with 24 hour operation<br />\r\n					Shot sizes up to 76 ounces of plastic<br />\r\n					Mold design /build is in same facility for best customer service of part and tool changes<br />\r\n					Cavitation from one to 96 cavities per mold<br />\r\n					Process hot /insulated runner, stack, unscrewing, insert, and cam /hydraulic core pull mold.</span></span></span></span></span></p>\r\n			</td>\r\n			<td align="center" valign="middle">\r\n				<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-family: arial"><img alt="" src="http://www.eliteholding.cn/UploadFile/Photo/2013-5/2013050922091731249.jpg" style="border-top: medium none; height: 180px; font-family: Arial, Verdana, sans-serif; border-right: medium none; border-bottom: medium none; text-align: left; border-left: medium none; width: 150px" /></span></span></td>\r\n			<td align="center" valign="middle">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign="top">\r\n			<td height="209">\r\n				<p class="style5 style14" style="font-size: 18px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">&nbsp;</span></p>\r\n				<p class="style5 style14" style="font-size: 18px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-family: arial"><strong>Materials Molded</strong><br />\r\n					<br />\r\n					<span style="font-size: 14px">Commercial grades of polypropylene, polyethylene, nylon,<br />\r\n					polystyrene, and ABS<br />\r\n					Engineering resins including polycarbonate, polyester, urethane,<br />\r\n					PVC, acrylic, acetal, PPO, PBT, and TPR<br />\r\n					Glass, mineral, foam and Teflon filled materials<br />\r\n					High temperature (oil-cooled) molding resins<br />\r\n					Protein and starch based thermoplastic resins<br />\r\n					All colors are available</span></span></span></p>\r\n			</td>\r\n			<td align="center" colspan="2" valign="middle">\r\n				<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-family: arial"><img src="http://www.eliteholding.cn/UploadFile/Photo/2013-5/201359G52tD!c4Vc.jpg" style="border-top: medium none; height: 177px; border-right: medium none; border-bottom: medium none; border-left: medium none; width: 150px" /></span></span></td>\r\n		</tr>\r\n		<tr valign="top">\r\n			<td style="height: 154px">\r\n				<p class="style5 style14" style="font-size: 18px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">&nbsp;</span></p>\r\n				<p class="style5 style14" style="font-size: 18px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-family: arial"><strong>Value Added Secondary Operations</strong><br />\r\n					<br />\r\n					<span style="font-size: 14px">Hot stamping, painting and silk screening<br />\r\n					Sonic welding and adhesive bonding<br />\r\n					Drilling, tapping and secondary CNC machining<br />\r\n					Assembly of molded /stamped parts to a finished product<br />\r\n					Special packaging for commercial or retail</span></span></span></p>\r\n			</td>\r\n			<td align="center" valign="middle">\r\n				<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><img alt="" src="http://www.eliteholding.cn/UploadFile/Photo/2013-5/2013050922211237100.jpg" style="border-top: medium none; height: 180px; font-family: arial; border-right: medium none; border-bottom: medium none; text-align: left; border-left: medium none; width: 150px" /></span></td>\r\n			<td align="center" valign="middle">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr valign="top">\r\n			<td height="210">\r\n				<p style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">&nbsp;</span></p>\r\n				<p style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><span style="font-size: 18px"><span style="font-family: arial"><span class="style5 style14"><strong>Customers &amp; Industries Served</strong><br />\r\n					<br />\r\n					<span style="font-size: 14px">Serving small businesses and fortune 500 companies in China and around the world Products for industrial and home controls, communication, agriculture,<br />\r\n					consumer products, health care, transportation, commercial equipment and many other industries<br />\r\n					Providing quality service to surpass our customers needs in a value-mindedmanner is our primary mission</span></span></span></span></span></p>\r\n			</td>\r\n			<td align="center" valign="middle">\r\n				<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><img alt="" src="http://www.eliteholding.cn/UploadFile/Photo/2013-5/2013050922215126589.jpg" style="border-top: medium none; height: 180px; font-family: arial; border-right: medium none; border-bottom: medium none; border-left: medium none; width: 150px" /></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 15:18:08', '2013-06-05 20:17:51', '0000-00-00 00:00:00', 0, 5);
INSERT INTO `newsinfo` VALUES (6, 2, 0, 1, 'Tool Making', 'Elite tool manufactures a large range of parts for many different industries. With your specifications, our manufacturing engineers, quality engineers, and production staff develop a process that will produce your parts economically, and with reliable quality.', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span class="text1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Elite tool manufactures a large range of parts for many different industries. With your specifications, our manufacturing engineers, quality engineers, and production staff develop a process that will produce your parts economically, and with reliable quality.</span></p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<br />\r\n<img alt="" src="/upload/other/images/20130606_064303.jpg" style="height: 497px; width: 497px" />', '', 1, 1, '', '2013-05-26', '2013-05-26 15:18:48', '2013-06-06 14:43:31', '0000-00-00 00:00:00', 0, 6);
INSERT INTO `newsinfo` VALUES (7, 3, 0, 1, 'Engineering', 'Our highly skilled, creative engineers provide assistance to our customers and prospective customers with quotes, rapid prototyping and tooling design.', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 16px">Our highly skilled, creative engineers provide assistance to our customers and prospective customers with quotes, rapid prototyping and tooling design. They act as project managers, working closely with the production and quality and sales. These combined efforts facilitate the development of functional, practical tool designs and improve quality and efficiency in all phases of engineering and production.</span></p>\r\n<h2 class="text" style="font-size: 18px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 16px"><strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Tooling Design</strong></span></h2>\r\n<p style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 16px">A good design is the heart of a&nbsp;<span class="Apple-converted-space">&nbsp;</span><span class="h21 ">mold,therefore,Elite pays special attention<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">to the mold costrution,cooling and moving<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">mechanisms,Our team of experienced<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">designers can guide customers through<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">the concept of a product,development of&nbsp;<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">part design,selection of the most suitable<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">material,and finally tool design,Economic<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">assessments can be made during this<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 ">process from tooling and moulded part&nbsp;<span class="Apple-converted-space">&nbsp;</span></span><span class="h21 STYLE15">cost estimates.</span></span></p>\r\n<p class="text" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; text-align: center; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 20:22:34', '2013-06-05 21:09:29', '0000-00-00 00:00:00', 0, 7);
INSERT INTO `newsinfo` VALUES (8, 3, 0, 1, 'Quality Assurance', 'Elite Holding Quality Management System is ISO 9001:2000 Certified', '<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Elite Holding&nbsp;Quality Management System is ISO 9001:2000 Certified</strong></h3>\r\n<p class="style1" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Advanced Quality/Production Planning</strong></p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		A Part Control Plan is generated for each part manufactured identifying all key product characteristics and defining the methods for their control.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		A Process Flowchart is generated and defines the manufacturing process as well as the interaction and controls throughout the product realization.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Process Failure Mode &amp; Effects Analysis is performed to assure the prevention of defectives through the manufacturing process.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		A Full Metrology Review of the key parameters is performed and methods established to assure design intent is met.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		A Full Dimensional Layout is performed to verify mold design and part print compliance in the pre-production phase.</li>\r\n</ul>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Measuring Equipment</strong></p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Spectrometer for Spectrographic Analysis of Alloy</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		2-Coordinate Measurement Machines for full dimensional layout</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Pro-Manager &amp; Visi-Trak for real-time monitoring and SPC analysis of key process parameters</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Standard calibrated instruments used throughout industry to verify key product characteristics</li>\r\n</ul>\r\n<p class="style1" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Quality Control</strong></p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Part Qualification: First-Piece Inspection at the start of each production run</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		SPC: Variable and Attribute Control Charting during the production run</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Part Evaluation: Last Piece Inspection at the end of each production run</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Final Audit: Random sampling of each ship lot for compliance of key characteristics</li>\r\n</ul>\r\n<p class="style1" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Quality Assurance Team</strong></p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		ASQ Certifications in Quality Engineering, Quality Auditing, Quality Technology, and Mechanical Inspection</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Our cross-functional approach to Quality is personified by Product Control Teams</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Internally Certified Operators demonstrate our commitment to Continual Improvement</li>\r\n</ul>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 20:23:34', '2013-06-05 15:16:54', '0000-00-00 00:00:00', 0, 8);
INSERT INTO `newsinfo` VALUES (9, 3, 0, 1, 'Facility and Capabilities', '', '<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">We also have fully equipped in-house machine shop for all your machining needs.<span class="Apple-converted-space">&nbsp;</span></span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Our extensive machining capabilities include:</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Metal machining</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Aluminum tool manufacturing</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; CNC turning &amp; lath operation</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; 3-axis CNC milling</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Secondary drilling or milling operations</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Plastics annealing for stress relief</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Ultrasonic insertion &amp; welding</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Bonding</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,0); text-align: justify; font: 14px/18px SegoeUINormal; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; background-color: rgb(255,255,255); text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">&gt; Metal welding</span><br />\r\n<br />\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 20:24:36', '2013-06-05 15:15:08', '0000-00-00 00:00:00', 0, 9);
INSERT INTO `newsinfo` VALUES (10, 4, 0, 1, 'FAQ', 'What is die casting? How are die castings produced? Learn the answers to all of your frequently asked questions.', '<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	What is&nbsp;Die Casting?</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Die casting is a manufacturing process for producing accurately dimensioned, sharply defined, smooth or textured-surface metal parts. It is accomplished by forcing molten metal under high pressure into reusable metal dies. The process is often described as the shortest distance between raw material and finished product. The term, &quot;die casting,&quot; is also used to describe the finished part.&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	How Are Die&nbsp;Castings Produced?</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	First, a steel mold capable of producing tens of thousands of castings in rapid succession must be made in at least two sections to permit removal of castings. These sections are mounted securely in a machine and are arranged so that one is stationary (fixed die half) while the other is moveable (injector die half). To begin the casting cycle, the two die halves are clamped tightly together by the die casting machine. Molten metal is injected into the die cavity where it solidifies quickly. The die halves are drawn apart and the casting is ejected. Die casting dies can be simple or complex, having moveable slides, cores, or other sections depending on the complexity of the casting.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	The complete cycle of the die casting process is by far the fastest known for producing precise non-ferrous metal parts. This is in marked contrast to sand casting which requires a new sand mold for each casting. While the permanent mold process uses iron or steel molds instead of sand, it is considerably slower, and not as precise as die casting.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	How do I know what&nbsp;process is best for my needs?</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	There are several ways to tell what type of die casting or molding process is best for your needs, using several criteria.&nbsp;</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Types of Machines&nbsp;for Die Casting</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Regardless of the type of machine used, it is essential that die halves, cores and/or other moveable sections be securely locked in place during the casting cycle. Generally, the clamping force of the machine is governed by (a) the projected surface area of the casting (measured at the die parting line) and (b) the pressure used to inject metal into the die. Most machines use toggle type mechanisms actuated by hydraulic cylinders (sometimes air pressure) to achieve locking. Others use direct acting hydraulic pressure. Safety interlock systems are used to prevent the die from opening during the casting cycles.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Die casting machines, large or small, vary fundamentally only in the method used to inject molten metal into the die. These are classified and described as either hot or cold chamber die casting machines.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Hot Chamber&nbsp;Machines</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Hot chamber machines are used primarily for zinc, and low melting point alloys which do not readily attack and erode metal pots, cylinders and plungers. Advanced technology and development of new, higher temperature materials has extended the use of this equipment for magnesium alloys.<br style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px" />\r\n	Figure 1: Hot Chamber Machine. Diagram illustrates the plunger mechanism which is submerged in molten metal. Modern machines are hydraulically operated and equipped with automatic cycling controls and safety devices.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	In the hot chamber machine, the injection mechanism is immersed in molten metal in a furnace attached to the machine. As the plunger is raised, a port opens allowing molten metal to fill the cylinder. As the plunger moves downward sealing the port, it forces molten metal through the gooseneck and nozzle into the die. After the metal has solidified, the plunger is withdrawn, the die opens, and the resulting casting is ejected.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Hot chamber machines are rapid in operation. Cycle times vary from less than one second for small components weighing less than one ounce to thirty seconds for a casting of several pounds. Dies are filled quickly (normally between five and forty milliseconds) and metal is injected at high pressures (1,500 to over 4,500 psi). Nevertheless, modern technology gives close control over these values, thus producing castings with fine detail, close tolerances and high strength.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Cold Chamber&nbsp;Machines</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Cold chamber machines differ from hot chamber machines primarily in one respect; the injection plunger and cylinder are not submerged in molten metal. The molten metal is poured into a &quot;cold chamber&quot; through a port or pouring slot by a hand or automatic ladle. A hydraulically operated plunger, advancing forward, seals the port forcing metal into the locked die at high pressures. Injection pressures range from 3,000 to over 10,000 psi for both aluminum and magnesium alloys, and from 6,000 to over 15,000 psi for copper base alloys.<br style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px" />\r\n	Figure 2: Cold Chamber Machine. Diagram illustrates die, cold chamber and horizontal ram or plunger (in charging position).</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	In a cold chamber machine, more molten metal is poured into the chamber than is needed to fill the die cavity. This helps sustain sufficient pressure to pack the cavity solidly with casting alloy. Excess metal is ejected along with the casting and is part of the complete shot.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Operation of a &quot;cold chamber&quot; machine is a little slower than a &quot;hot chamber&quot; machine because of the ladling operation. A cold chamber machine is used for high melting point casting alloys because plunger and cylinder assemblies are less subject to attack since they are not submerged in molten metal.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Casting Dies&nbsp;and their Construction</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Die casting dies are made of alloy tool steels in at least two sections called fixed die half and ejector die half. The fixed die half is mounted on the side toward the molten metal injection system. The ejector die half, to which the die casting adheres, and from which it is ejected when the die is opened, is mounted on the moveable platen of the machine.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	The fixed die half of the die is designed to contain the sprue hole through which molten metal enters the die. The ejector half usually contains the runners (passage ways) and gates (inlets) which route molten metal to the cavity (or cavities) of the die. The ejector half is also connected to an ejector box which houses the mechanism for ejecting the casting from the die. Ejection occurs when pins connected to the ejector plate move forward to force the casting from the cavity. This usually occurs as part of the opening stroke of the machine. Placement of ejector pins must be carefully arranged so force placed upon the casting during ejection will not cause deformation. Return pins attached to the ejector plate return this plate to its casting position as the die closes.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Fixed and moveable cores are often used in dies. If fixed, the core axis must be parallel to the direction of die opening. If moveable, they are often attached to core slides. Should the side of a die casting design require a depression, the die can be made with one or more slides to obtain the desired result without affecting ejection of the casting from the die cavity. All moveable slides and cores must be carefully fitted, and have the ability to be securely locked into position during the casting cycle. Otherwise, molten metal could be forced into their slideways causing a disruption of operations. Although slides and cores add to the complexity and cost of die construction, they make it possible to produce die castings in a wide variety of configurations, and usually more economically than any other metalworking process.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<hr style="border-top-style: solid; font-size: 13px; border-left-style: solid; height: 1px; font-family: Arial, Helvetica, sans-serif; border-top-color: gray; border-bottom-style: solid; color: rgb(51,51,51); padding-bottom: 0px; border-bottom-color: gray; padding-top: 0px; border-right-style: solid; padding-left: 0px; margin: 0px; border-right-color: gray; padding-right: 0px; border-left-color: gray" />\r\n<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Types&nbsp;of Dies</h3>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Dies are classified as: single cavity, multiple cavity, combination and unit dies.</p>\r\n<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	A single cavity die requires no explanation. Multiple cavity dies have several cavities which are all identical. If a die has cavities of different shapes, it&rsquo;s called a combination or family die. A combination die is used to produce several parts for an assembly. For simple parts, unit dies might be used to effect tooling and production economies. Several parts for an assembly, or for different customers, might be cast at the same time with unit dies. One or more unit dies are assembled in a common holder and connected by runners to a common opening or sprue hole. This permits simultaneous filling of all cavities.</p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 20:56:35', '2013-06-05 15:38:11', '0000-00-00 00:00:00', 0, 10);
INSERT INTO `newsinfo` VALUES (15, 5, 0, 1, 'About Us', 'about us', '<p>\r\n	<span style="white-space: normal; text-transform: none; word-spacing: 0px; float: none; color: rgb(0,0,51); text-align: justify; font: 12px Verdana, Arial, Helvetica, sans-serif; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Elite holding Building progressive dies and molds for our global customers continues to be Elite Mold&#39;s core belief. Over 50 experienced employees drivers over 400 top quality dies and molds a year to many of the world&#39;s best company, The ability to produce mold at the International standard, strong engineering and design capability, fluent English communication skill, aggressive delivery, competitive pricing and business integrity continues to be the success factor of Elite Mold.&nbsp;</span></p>\r\n<p style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,51); padding-bottom: 0px; text-align: justify; padding-top: 0px; font: 12px Verdana, Arial, Helvetica, sans-serif; padding-left: 0px; margin: 0px; orphans: 2; widows: 2; letter-spacing: normal; padding-right: 0px; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	&nbsp;Elite Mold team looks forward to participating in the success of your next program.<br />\r\n	<br />\r\n	<img alt="" src="/upload/other/images/20130605_132930.jpg" style="height: 263px; width: 350px" /></p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 21:10:17', '2013-06-05 21:30:39', '0000-00-00 00:00:00', 0, 15);
INSERT INTO `newsinfo` VALUES (16, 5, 0, 1, 'Mission Statement', '', '<p style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Elite tooling&nbsp;will be one of the leaders in the&nbsp;tooling markets and generate a return on capital commensurate with its leadership position by supplying high quality products and services that utilize state of the art technologies:</p>\r\n<ul style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		We strive to be a reliable and responsive supplier of cost effective and quality products to our Customers.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		We strive to provide a motivating, safe and rewarding environment for our Employees.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		We strive to be recognized as a professionally managed Engineered Services and tooling Facility.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		We strive to maintain mutually beneficial relationships with our Suppliers.</li>\r\n	<li style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		We strive to contribute to the improvement of our technical, business and public Communities.</li>\r\n</ul>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 21:14:33', '2013-06-10 10:45:26', '0000-00-00 00:00:00', 0, 16);
INSERT INTO `newsinfo` VALUES (11, 4, 0, 1, 'Helpful Articles', '', '', '', 1, 1, '', '2013-05-26', '2013-05-26 20:57:17', '2013-06-05 15:32:07', '0000-00-00 00:00:00', 0, 11);
INSERT INTO `newsinfo` VALUES (12, 4, 0, 1, 'Design Ideas', 'View design ideas for die casting alloys, alloy properties, material comparison, and design suggestions.', '<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	<font color="#f68816">Die Casting Alloys</font></h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	Learn the basics about die casting alloys, aluminum, zinc, and zinc aluminum (ZA) alloys, including which are the easiest to die cast, the cost benefits, and other important information to help guide your design decisions.</p>\r\n<hr style="margin: 0px; padding: 0px; height: 1px; border-style: solid; border-color: gray; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; " />\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	<font color="#f68816">Alloy Properties</font></h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	View helpful charts on the following topics:</p>\r\n<ul style="margin: 0px; padding-right: 0px; padding-left: 2em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Typical Mechanical Properties</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Finishing: Decorative</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Protective</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Processing and Production</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Chemical Composition (%)</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Characteristics of Die Casting Alloys</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Dimensional and Weight Limits</li>\r\n</ul>\r\n<hr style="margin: 0px; padding: 0px; height: 1px; border-style: solid; border-color: gray; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; " />\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	<font color="#f68816">Material Comparison</font></h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	View helpful charts on the comparison of metals versus the comparison of materials.</p>\r\n<hr style="margin: 0px; padding: 0px; height: 1px; border-style: solid; border-color: gray; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; " />\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	<font color="#f68816">Design Suggestions</font></h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	To gain maximum advantage of the die casting process, it is always a good idea to draw upon the wide ranging experience of a custom die caster. New designs should be reviewed during the early of development. Significant savings may be realized during this interchange of ideas. View our guides for design.</p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 20:58:10', '2013-05-26 20:59:36', '0000-00-00 00:00:00', 0, 12);
INSERT INTO `newsinfo` VALUES (13, 4, 0, 1, 'Purchasing Checklists', 'Let Premier guide you through tooling for die casting, aluminum alloy data, and obtain a general purchasing checklist that encompasses a breadth of die casting options.', '<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	For Determining What Direction or Die Casting Process You Should Pursue</h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<font color="#f68816"><b>General Die Casting Design Data Sheet</b></font></p>\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	Checklist for Die Casting Die Specifications</h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<font color="#f68816"><b>Tooling for Die Casting</b></font></p>\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	Die Casting Alloy Information</h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<font color="#f68816"><b>Aluminum Alloy Data</b></font></p>\r\n<h3 style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	For use in Consultation with your Caster</h3>\r\n<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<font color="#f68816"><b>Purchasing Checklist</b></font></p>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 21:00:11', '2013-05-26 21:00:46', '0000-00-00 00:00:00', 0, 13);
INSERT INTO `newsinfo` VALUES (14, 4, 0, 1, 'Videos', 'videos to see die casting processes, machines and tools in action.', '<div id="content-header" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<h1 class="title" style="font-size: 20px; color: rgb(21,59,113); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		Aluminum Die Casting CNC Machining</h1>\r\n</div>\r\n<div id="content-area" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<div class="node node node-type-video" id="node-41" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; clear: both; margin: 0px; padding-right: 0px">\r\n		<div class="node-inner" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n			<div class="content" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n				<div class="field field-type-emvideo field-field-video" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					<div class="field-label" style="font-weight: bold; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n						Video:&nbsp;</div>\r\n					<div class="field-items" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n						<div class="field-item odd" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n							<div class="emvideo emvideo-video emvideo-youtube" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n								<div class="media-youtube" id="media-youtube-1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n									<div id="media-youtube-default-external-1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n										<object data="http://www.youtube.com/v/ufGvodC8iDc&amp;amp;rel=0&amp;amp;enablejsapi=1&amp;amp;playerapiid=ytplayer&amp;amp;fs=1" height="288" id="media-youtube-default-external-object-1" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px" type="application/x-shockwave-flash" width="512"></object></div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					Computer Numerical Controlled (CNC) machine that is machining an aluminum die casting. Video shows automated tool changing and automatic handling of the casting. The process has a short cycle time and is repeatable since the machine is programmed for the specific part. Little labor is needed to machine the die cast part. The die cast part is made with a high pressure die cast process.</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 21:01:03', '2013-06-05 15:27:09', '0000-00-00 00:00:00', 0, 14);
INSERT INTO `newsinfo` VALUES (17, 5, 0, 1, 'Quality Policy', '', '<p style="margin: 0px; padding: 4px 0px 8px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	Achieving our Mission will be a direct result of our Company&#39;s Quality Improvement Culture. Our Culture is a product of each individual employee&rsquo;s attitudes and conduct. Each employee is obligated to:</p>\r\n<ol style="margin: 0px; padding-right: 0px; padding-left: 2em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Manufacture products to established requirements, or cause the requirements to officially change.</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Know the authorized written procedures for their job.</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Not knowingly pass on defective work to our internal or external customers.</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Be responsible for defect elimination in all we do.</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Be responsible for delivering our work on time.</li>\r\n	<li style="margin: 0px; padding: 0px; ">\r\n		Actively participate in training to support quality improvement in our products, processes, and services.</li>\r\n</ol>\r\n<h3 class="text2" style="margin: 0px; padding: 10px 0px 5px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; ">\r\n	Our Standard is to &quot;Do It Right the First Time&quot;</h3>\r\n', '', 1, 1, '', '2013-05-26', '2013-05-26 21:15:06', '2013-05-26 21:15:39', '0000-00-00 00:00:00', 0, 17);
INSERT INTO `newsinfo` VALUES (18, 5, 0, 1, 'Customer Service', '', '<span style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51)">Our customer service representative is a vital component of our pledge to provide quality products and service. Well-oriented with Elite</span>', '', 1, 1, '', '2013-05-26', '2013-05-26 21:15:55', '2013-06-10 10:44:09', '0000-00-00 00:00:00', 0, 18);
INSERT INTO `newsinfo` VALUES (30, 2, 0, 1, '新增空白信息', '', '', '', 1, 1, '', '2013-06-13', '2013-06-13 14:45:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 30);
INSERT INTO `newsinfo` VALUES (19, 6, 0, 1, 'Report: China stole U.S. weapons secrets', 'American defense officials Tuesday pushed back against the notion that China has used cyberespionage to obtain extensive design information on advanced American weapons.', '<div>\r\n	American defense officials Tuesday pushed back against the notion that China has used cyberespionage to obtain extensive design information on advanced American weapons.</div>\r\n<div>\r\n	&quot;Suggestions that cyberintrusions have somehow led to the erosion of our capabilities or technological edge are incorrect,&quot; said Pentagon press secretary George Little. &quot;We maintain full confidence in our weapons platforms.&quot;</div>\r\n<div>\r\n	The Pentagon was responding to a list of weapons systems whose secrets had been compromised by Chinese cyberespionage, which the Washington Post says was in a confidential report by the Defense Science Board.</div>\r\n<div>\r\n	While the extent of the secrets stolen was not clear, the list of compromised weapons in the Post included some of the Defense Department&#39;s crown jewels of high-tech fighting: jets like the F-35 and the FA-18, anti-missile defenses like the Patriot and Aegis systems, the new Littoral Combat Ship and the Global Hawk unmanned surveillance plane.</div>\r\n', '', 1, 1, '', '2013-05-29', '2013-05-29 14:26:51', '2013-05-29 16:10:17', '0000-00-00 00:00:00', 0, 19);
INSERT INTO `newsinfo` VALUES (20, 6, 0, 1, 'Aung San Suu Kyi criticizes 2-child limit on Rohingyas', 'Nobel peace laureate Aung San Suu Kyi has joined human rights activists in criticizing a two-child limit imposed on Muslim families by authorities in areas of western Myanmar in an attempt to control their population.', '<div>\r\n	Nobel peace laureate Aung San Suu Kyi has joined human rights activists in criticizing a two-child limit imposed on Muslim families by authorities in areas of western Myanmar in an attempt to control their population.</div>\r\n<div>\r\n	The government of Myanmar&#39;s Rakhine State, which borders Bangladesh, says the restriction was ordered in two townships that have the biggest populations of Rohingya -- a persecuted, stateless Muslim minority -- because of concerns about their high birthrate.</div>\r\n', '', 1, 1, '', '2013-05-29', '2013-05-29 14:34:48', '2013-05-29 16:10:03', '0000-00-00 00:00:00', 0, 20);
INSERT INTO `newsinfo` VALUES (21, 6, 0, 1, 'Pakistan: 1 killed, 1 wounded in polio worker attack', 'Gunmen fired on two female health workers administering polio vaccines in northwest Pakistan on Tuesday, killing one and wounding the other.', '<div>\r\n	Gunmen fired on two female health workers administering polio vaccines in northwest Pakistan on Tuesday, killing one and wounding the other.</div>\r\n<div>\r\n	The shooting on the outskirts of Peshawar was the latest in a series of deadly attacks against those giving out the vaccine.</div>\r\n<div>\r\n	Two men on a motorbike opened fire on the two women while they were going house to house in the village of Bedh Der, said local police official Shafi Ullah.</div>\r\n<div>\r\n	One woman died at the scene; the other was critically injured, Ullah said.</div>\r\n', '', 1, 1, '', '2013-05-29', '2013-05-29 14:35:25', '2013-05-29 16:09:42', '0000-00-00 00:00:00', 0, 21);
INSERT INTO `newsinfo` VALUES (22, 6, 0, 1, 'China calls on citizens to behave as civilized tourists', 'Spitting. Littering. Cutting in lines. Defacing historic treasures.', '<div>\r\n	Spitting. Littering. Cutting in lines. Defacing historic treasures.</div>\r\n<div>\r\n	These are some of the behaviors the Chinese government is hoping to eradicate with a set of official conventions to be followed by Chinese citizens when traveling.</div>\r\n<div>\r\n	The guidelines were posted Tuesday on the Chinese central government&#39;s website.</div>\r\n<div>\r\n	According to state news agency Xinhua, the regulations also prohibit climbing on or touching ancient relics or carving into them.</div>\r\n<div>\r\n	&quot;Being a civilized tourist is the obligation of each citizen,&quot; according to the government post, which lays out a long list of guidelines issued by the National Tourism Administration.</div>\r\n', '', 1, 1, '', '2013-05-29', '2013-05-29 14:36:26', '2013-05-29 16:08:56', '0000-00-00 00:00:00', 0, 22);
INSERT INTO `newsinfo` VALUES (23, 6, 0, 1, 'China scours globe for future energy supplies', 'China''s energy imports are so fundamental to its survival and development that China''s new leadership has taken extraordinary steps to secure future supplies.', '<div>\r\n	Editor&#39;s note: Geoff Hiscock is a former Asia Business Editor of CNN.com and the author of &quot;Earth Wars: The Battle for Global Resources,&quot; published by Wiley.</div>\r\n<div>\r\n	(CNN) -- China&#39;s energy imports are so fundamental to its survival and development that China&#39;s new leadership has taken extraordinary steps to secure future supplies.</div>\r\n<div>\r\n	In a flurry of official visits over the past two months involving President Xi Jinping, Premier Li Keqiang and Foreign Minister Wang Yi, China has sought to bolster its energy relations with big strategic neighbors Russia and India, key energy exporters Indonesia, Brunei and South Africa, emerging resources suppliers such as Tanzania and the Republic of Congo in Africa, and renewable energy pioneer Germany.</div>\r\n<div>\r\n	In addition, China hosted a visit by Australian leader Julia Gillard, whose discussions with Xi and Li touched on clean energy expertise and the burgeoning resources trade between the two countries.</div>\r\n', '', 1, 1, '', '2013-05-29', '2013-05-29 14:37:24', '2013-05-29 16:09:25', '0000-00-00 00:00:00', 0, 23);
INSERT INTO `newsinfo` VALUES (24, 8, 0, 1, '留言反馈 :a -  时间：2013-05-30 10:09:00', '', '\r\n<br><br>\r\n	   \r\nName : a<br><br>\r\nCompany : b<br><br>\r\nPhone : c<br><br>\r\nEmail : d<br><br>\r\nComments : e<br><br>\r\n\r\n2013-05-30', '', 1, 1, '', '2013-05-30', '2013-05-30 22:09:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `newsinfo` VALUES (25, 8, 0, 1, '留言反馈 :1 -  时间：2013-05-30 22:12:13', '', '\r\n<br><br>\r\n	   \r\nName : 1<br><br>\r\nCompany : 2<br><br>\r\nPhone : 3<br><br>\r\nEmail : 4<br><br>\r\nComments : 5<br><br>\r\n\r\n2013-05-30', '', 1, 1, '', '2013-05-30', '2013-05-30 22:12:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `newsinfo` VALUES (26, 9, 0, 1, '留言反馈 :aa -  时间：2013-05-30 22:23:49', '', '\r\n<br><br>\r\n	   \r\nName : aa<br><br>\r\nCompany : bb<br><br>\r\nPhone : cc<br><br>\r\nEmail : dd<br><br>\r\nComments : ee<br><br>\r\n\r\n2013-05-30', '', 1, 1, '', '2013-05-30', '2013-05-30 22:23:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `newsinfo` VALUES (27, 9, 0, 1, '留言反馈 :WW -  时间：2013-05-30 22:28:16', '', '\r\n<br><br>\r\n	   \r\nName : WW<br><br>\r\nCompany : EE<br><br>\r\nPhone : RR<br><br>\r\nEmail : TT<br><br>\r\nComments : YY<br><br>\r\n\r\n2013-05-30', '', 1, 1, '', '2013-05-30', '2013-05-30 22:28:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `newsinfo` VALUES (28, 10, 0, 1, '留言反馈 :TY -  时间：2013-05-30 22:29:04', '', '\r\n<br><br>\r\n	   \r\nName : TY<br><br>\r\nCompany : UI<br><br>\r\nPhone : OP<br><br>\r\nEmail : LK<br><br>\r\nComments : JH<br><br>\r\n\r\n2013-05-30', '', 1, 1, '', '2013-05-30', '2013-05-30 22:29:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);
INSERT INTO `newsinfo` VALUES (29, 2, 0, 1, '新增空白信息', '', '', '', 0, 1, '', '2013-06-05', '2013-06-05 14:59:34', '0000-00-00 00:00:00', '2013-06-05 14:59:53', 0, 29);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (20, 1, 1, '', '', '', '1370436421.jpg', '', 1, 'JPG', '2013-06-05 20:47:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (16, 2, 1, '', '', '', '1370435083.jpg', '', 1, 'JPG', '2013-06-05 20:24:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (7, 4, 1, '', '', '', '1370425180.jpg', '', 1, 'JPG', '2013-06-05 17:39:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (15, 3, 1, '', '', '', '1370434511.jpg', '', 1, 'JPG', '2013-06-05 20:15:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (11, 5, 1, '', '', '', '1370433823.jpg', '', 1, 'JPG', '2013-06-05 20:03:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 6, 1, '', '', '', '1370433503.jpg', '', 1, 'JPG', '2013-06-05 19:58:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, 'Portfolio', '', 'Portfolio', 'Portfolio', '', '<p style="padding-bottom: 8px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); font-size: 13px; padding-top: 4px">\r\n	The following represent examples of parts fabricated by Elite Holding.</p>\r\n<table border="0" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; width: 600px; padding-right: 0px; border-collapse: collapse; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); font-size: 13px; padding-top: 0px">\r\n	<tbody style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px">\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="119" src="http://www.diecasting.com/sites/all/files/pe_adclem1.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="180" src="http://www.diecasting.com/sites/all/files/pe_bendix_d2.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="138" src="http://www.diecasting.com/sites/all/files/pe_blonde2.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="153" src="http://www.diecasting.com/sites/all/files/pe_conn_rod.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="116" src="http://www.diecasting.com/sites/all/files/pe_frt_panel.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="79" src="http://www.diecasting.com/sites/all/files/pe_marlin.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="113" src="http://www.diecasting.com/sites/all/files/pe_marms1.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="154" src="http://www.diecasting.com/sites/all/files/pe_mossberg.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="189" src="http://www.diecasting.com/sites/all/files/pe_motion_systems.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="123" src="http://www.diecasting.com/sites/all/files/pe_nvg_rear_case.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="185" src="http://www.diecasting.com/sites/all/files/pe_pin_fin_frame_blue.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 15px 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="167" src="http://www.diecasting.com/sites/all/files/pro_k%26l.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n		<tr style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="148" src="http://www.diecasting.com/sites/all/files/pro_keene-cage-blue.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 15px 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n			<td style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px">\r\n				<img border="0" height="131" src="http://www.diecasting.com/sites/all/files/pro_porter_cable.jpg" style="border-bottom: 0px; border-left: 0px; padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; border-top: 0px; border-right: 0px; padding-top: 0px" width="200" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n');
INSERT INTO `pageset` VALUES (2, 1, 'Contact Us', '', 'Contact Us', 'Contact Us', '', '<h3 class="style5" style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 14px"><span class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Elite (HongKong) Holding Ltd.<br />\r\n	<br />\r\n	<span style="font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; float: none; font-weight: normal; color: rgb(0,0,51); font-style: normal; text-align: justify; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; line-height: normal; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Add: Room 1001, 10/F., Tai Yau Building,<br />\r\n	181 Johnston Road, Wanchai, Hong Kong</span><br />\r\n	<br />\r\n	<span style="font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; float: none; font-weight: normal; color: rgb(0,0,51); font-style: normal; text-align: justify; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; line-height: normal; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Tel : (852)&nbsp; 2889 8833</span><br style="white-space: normal; text-transform: none; word-spacing: 0px; color: rgb(0,0,51); text-align: justify; font: 12px Verdana, Arial, Helvetica, sans-serif; orphans: 2; widows: 2; letter-spacing: normal; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="font-variant: normal; white-space: normal; text-transform: none; word-spacing: 0px; float: none; font-weight: normal; color: rgb(0,0,51); font-style: normal; text-align: justify; orphans: 2; widows: 2; display: inline !important; letter-spacing: normal; line-height: normal; text-indent: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Fax : (852) 2889 8433</span><br />\r\n	<br />\r\n	Mailing Address:</span></span></h3>\r\n<p class="style5" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span style="font-size: 14px"><font color="#333333"><strong>Elite Mold (Shenzhen) Co., Ltd.</strong><br />\r\n	<br />\r\n	Add:No.65 Tianyun Road Xitou<br />\r\n	Songgang Town Bao&#39;an District,<br />\r\n	Shenzhen, Guangdong Provice,<br />\r\n	China (518105)<br />\r\n	<br />\r\n	Tel:&nbsp; (86) 755 8177 6701<br />\r\n	Fax: (86) 755 2709 4913</font></span><br />\r\n	&nbsp;</p>\r\n<h3 class="style5" style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	<span class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">E-mail:</span>&nbsp;<a href="mailto:elitemold@eliteholding.cn"><span style="color: #0000ff">elitemold@eliteholding.cn</span></a></h3>\r\n<p class="text" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n<p class="text" style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	&nbsp;</p>\r\n');
INSERT INTO `pageset` VALUES (3, 1, 'Reasons to Buy China', '', 'Top 5 Saved Costs of Offshore Sourcing of Die Solutions', 'Reasons to Buy China', '', '<h3 style="font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-bottom: 5px; padding-top: 10px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n	Top&nbsp;5&nbsp;Saved Costs of Offshore Sourcing of Die Solutions</h3>\r\n<ol style="font-size: 13px; font-family: Arial, Helvetica, sans-serif; color: rgb(51,51,51); padding-left: 2em; margin: 0px; padding-right: 0px">\r\n	<li class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Market Share Superiority</strong>\r\n		<ol style="list-style-type: lower-alpha; padding-left: 2em; margin: 0px; padding-right: 0px">\r\n			<li>\r\n				<span class="style7" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">You may create a new competitor for your product. The competing product can be developed using our production of&nbsp;tooling with lower cost.</span>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					&nbsp;</p>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n	<li class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span class="style11" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Technology Guaranteed</strong></span>\r\n		<ol style="list-style-type: lower-alpha; padding-left: 2em; margin: 0px; padding-right: 0px">\r\n			<li>\r\n				<span class="style7" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">It&#39;s&nbsp;safe to reveal secret technology to an offshore suppler with a Confidencient Agreement. we will keep every piece of sheet from you between us.</span>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					&nbsp;</p>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n	<li class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span class="style11" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Easy Communication</strong></span>\r\n		<ol style="list-style-type: lower-alpha; padding-left: 2em; margin: 0px; padding-right: 0px">\r\n			<li>\r\n				<span class="style7" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Fluent English Speaker in to the process of communicating die design changes and assuring&nbsp;our proper implementation despite barriers of language, distance, and culture.</span>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					&nbsp;</p>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n	<li class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">Long Lead Times</strong>\r\n		<ol style="list-style-type: lower-alpha; padding-left: 2em; margin: 0px; padding-right: 0px">\r\n			<li>\r\n				<span class="style7" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">We will put&nbsp;offshore production lead times into our manufacturing schedule to ensure the end Customer deadline, weekly report will be supplied with details, keep you on post..</span>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					&nbsp;</p>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n	<li class="style6" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n		<span class="style11" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px"><strong style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">The&nbsp;Lower&nbsp;Cost</strong></span>\r\n		<ol style="list-style-type: lower-alpha; padding-left: 2em; margin: 0px; padding-right: 0px">\r\n			<li>\r\n				<span class="style7" style="padding-bottom: 0px; padding-top: 0px; padding-left: 0px; margin: 0px; padding-right: 0px">We help you win the market by fast delivery, lower material, laber cost,with guarantees of same tooling life.</span>\r\n				<p style="padding-bottom: 8px; padding-top: 4px; padding-left: 0px; margin: 0px; padding-right: 0px">\r\n					&nbsp;</p>\r\n			</li>\r\n		</ol>\r\n	</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=265 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 0, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 0, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (264, 1, 50, 1, 1, 1, 1, 1, 1, 0, 1, '2012-06-15 10:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productdir`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productinfo`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `productpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, 'Elite (HongKong) Holding Ltd.', 'Elite (HongKong) Holding Ltd.', 'Elite (HongKong) Holding Ltd.', '', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页----HOME', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (13, 1, '总经理致辞----CEO''s Message', '/about/ceomessage.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);

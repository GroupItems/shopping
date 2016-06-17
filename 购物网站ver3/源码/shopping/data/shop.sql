
--管理员表
CREATE TABLE IF NOT EXISTS `shop_admin`(
	`id`int(11) NOT NULL AUTO_INCREMENT,
	`username` varchar(20) not null unique,
	`password` varchar(32) not null,
	`email` varchar(50) not null,
	PRIMARY KEY (`id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

--分类表
CREATE TABLE IF NOT EXISTS `shop_cate`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`cName` varchar(50) not null unique,
	PRIMARY KEY (`id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;


--商品表
CREATE TABLE IF NOT EXISTS `shop_pro`(
	`id` int(11) NOT NULL auto_increment PRIMARY KEY,
	`pName` varchar(50) not null unique,
	`pSn` varchar(50) not null,
	`pNum` int unsigned default 1,
	`mPrice` decimal(10,2) not null,
	`iPrice` decimal(10,2) not null,
	`pDesc` text,
	`pImg` varchar(50) not null,
	`pubTime` int unsigned not null,
	`isShow` tinyint(1) default 1,
	`isHot` tinyint(1) default 0,
	`cId` smallint unsigned not null
);



--用户表
CREATE TABLE `shop_user`(
	`id` int(11) NOT NULL auto_increment PRIMARY KEY,
	`username` varchar(20) not null unique,
	`password` varchar(32) not null,
	`sex` enum("男","女","保密") not null default "保密",
	`face` varchar(50) not null,
	`regTime` int unsigned not null
);




--相册表
CREATE TABLE IF NOT EXISTS `shop_album`(
	`id` int(11) NOT NULL auto_increment PRIMARY KEY,
	`pid` int unsigned not null,
	`albumPath` varchar(50) not null
);
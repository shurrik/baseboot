/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.9-log : Database - first
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_sys_dept` */

DROP TABLE IF EXISTS `t_sys_dept`;

CREATE TABLE `t_sys_dept` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级部门ID',
  `pname` varchar(100) DEFAULT NULL COMMENT '上级部门名称',
  `dep_order` int(11) DEFAULT NULL COMMENT '顺序',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_dept` */

/*Table structure for table `t_sys_message` */

DROP TABLE IF EXISTS `t_sys_message`;

CREATE TABLE `t_sys_message` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `from_id` varchar(64) DEFAULT NULL COMMENT '发送人ID',
  `from_name` varchar(100) DEFAULT NULL COMMENT '发送人',
  `to_id` varchar(64) DEFAULT NULL COMMENT '接收人ID',
  `to_name` varchar(100) DEFAULT NULL COMMENT '接收人',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `read_flag` tinyint(1) DEFAULT NULL COMMENT '已读',
  `url` varchar(500) DEFAULT NULL COMMENT '消息路径',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_message` */

/*Table structure for table `t_sys_oplog` */

DROP TABLE IF EXISTS `t_sys_oplog`;

CREATE TABLE `t_sys_oplog` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `title` varchar(500) DEFAULT NULL COMMENT '来文标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_oplog` */

/*Table structure for table `t_sys_resource` */

DROP TABLE IF EXISTS `t_sys_resource`;

CREATE TABLE `t_sys_resource` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(500) DEFAULT NULL COMMENT '资源路径',
  `pid` varchar(64) DEFAULT NULL COMMENT '父ID',
  `summary` varchar(200) DEFAULT NULL COMMENT '介绍',
  `res_order` int(11) DEFAULT NULL COMMENT '顺序',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_resource` */

insert  into `t_sys_resource`(`id`,`name`,`url`,`pid`,`summary`,`res_order`,`create_date`,`update_date`) values ('15045142e81f478093c384d2e49fd183','系统版本','admin/version/list','c8101bf7bf4f49439926fabc585e3aff',NULL,100,'2016-01-21 17:19:40','2016-01-21 17:19:40'),('23f9f5e30efb446e8b99828f231801bf','用户管理','admin/user/list','c8101bf7bf4f49439926fabc585e3aff',NULL,30,'2015-04-05 23:05:51','2015-04-05 23:05:51'),('25e11f9651cf431ca4ba8dc2b57733d9','角色管理','admin/role/list','c8101bf7bf4f49439926fabc585e3aff',NULL,40,'2015-04-05 23:06:15','2015-04-05 23:06:15'),('39d2a6c1f2884eaa802de67d6474af51','消息管理','admin/message/list ','c8101bf7bf4f49439926fabc585e3aff',NULL,80,'2015-12-07 10:16:54','2015-12-07 10:16:54'),('608b6f6ad5fc4553bcfbcecbbb45e87c','系统参数设置','admin/setting/list','c8101bf7bf4f49439926fabc585e3aff',NULL,90,'2016-01-21 15:47:30','2016-01-21 15:47:30'),('7e9b6ee824244aee9423bba18d68240d','资源管理','admin/resource/tree','c8101bf7bf4f49439926fabc585e3aff',NULL,20,'2016-06-02 10:12:27','2016-06-02 10:12:27'),('9e0fb0bd541745b3849f0c0cc8f5e091','用户消息数','admin/usermsgcount/list','c8101bf7bf4f49439926fabc585e3aff',NULL,80,'2015-04-07 10:57:36','2015-04-07 10:57:36'),('c0721cac2b02490c9b40ad590af5de66','部门管理','admin/dept/list','c8101bf7bf4f49439926fabc585e3aff',NULL,10,'2015-04-05 20:49:06','2015-04-05 20:49:06'),('c0a6c2746fa2410384f4cac6e73a0a79','操作日志','admin/oplog/list','c8101bf7bf4f49439926fabc585e3aff',NULL,90,'2015-04-22 10:01:47','2015-04-22 10:01:47'),('c8101bf7bf4f49439926fabc585e3aff','系统管理','/','root',NULL,100,'2015-04-05 20:47:58','2015-04-05 20:47:58'),('ef6ffbc106d94ffd9594c337cd407103','资源管理','admin/resource/list','c8101bf7bf4f49439926fabc585e3aff',NULL,20,'2015-04-05 23:05:23','2015-04-05 23:05:23');

/*Table structure for table `t_sys_role` */

DROP TABLE IF EXISTS `t_sys_role`;

CREATE TABLE `t_sys_role` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `summary` varchar(200) DEFAULT NULL COMMENT '介绍',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_role` */

insert  into `t_sys_role`(`id`,`name`,`summary`,`create_date`,`update_date`) values ('25ea24d421684be987921a8579c790eb','管理员','管理员','2015-03-31 15:07:02','2015-03-31 15:07:02');

/*Table structure for table `t_sys_roleresource` */

DROP TABLE IF EXISTS `t_sys_roleresource`;

CREATE TABLE `t_sys_roleresource` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `resource_id` varchar(64) DEFAULT NULL COMMENT '资源ID',
  `resource_name` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_roleresource` */

insert  into `t_sys_roleresource`(`id`,`role_id`,`role_name`,`resource_id`,`resource_name`,`create_date`,`update_date`) values ('09f44c924568445abe98739a3f5f6b55','25ea24d421684be987921a8579c790eb','管理员','c0a6c2746fa2410384f4cac6e73a0a79',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('1d83a5edfde34976a253c51c2344077b','25ea24d421684be987921a8579c790eb','管理员','608b6f6ad5fc4553bcfbcecbbb45e87c',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('1f2b6ec52c6f4c90b19f2f4b76b639a9','25ea24d421684be987921a8579c790eb','管理员','c0721cac2b02490c9b40ad590af5de66',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('3a0e5c4a733a4d0c92d19ce1bd5d3308','25ea24d421684be987921a8579c790eb','管理员','39d2a6c1f2884eaa802de67d6474af51',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('3f8ce8ad88c04ce2a3575dab35d231b5','25ea24d421684be987921a8579c790eb','管理员','25e11f9651cf431ca4ba8dc2b57733d9',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('793bc6178d9642e19a86bf6b0301f25e','25ea24d421684be987921a8579c790eb','管理员','f1eec15d261749c98db37eb2a7d7cb6c',NULL,'2016-06-28 09:49:11','2016-06-28 09:49:11'),('984a1ecb145a4e17a22aa5398d472260','25ea24d421684be987921a8579c790eb','管理员','23f9f5e30efb446e8b99828f231801bf',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('c3057fbe12514e9e8dbfe5c4acd9a888','25ea24d421684be987921a8579c790eb','管理员','15045142e81f478093c384d2e49fd183',NULL,'2016-06-28 09:49:09','2016-06-28 09:49:09'),('d3c85a8d309543eb9f0bfbd012263272','25ea24d421684be987921a8579c790eb','管理员','9e0fb0bd541745b3849f0c0cc8f5e091',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('da8188efbbdd45259fbf138d3c6c4270','25ea24d421684be987921a8579c790eb','管理员','f3bf5dc00ce94bbdb1beec2ad7824e6b',NULL,'2016-06-28 09:49:11','2016-06-28 09:49:11'),('eaf5da2846904ad091793904fab1ea55','25ea24d421684be987921a8579c790eb','管理员','ef6ffbc106d94ffd9594c337cd407103',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10'),('f180ee4f2e274f8cac892072fb13a4fb','25ea24d421684be987921a8579c790eb','管理员','c8101bf7bf4f49439926fabc585e3aff',NULL,'2016-06-28 09:49:09','2016-06-28 09:49:09'),('f5f4b10432c04524a75c2ec7c2f050a5','25ea24d421684be987921a8579c790eb','管理员','7e9b6ee824244aee9423bba18d68240d',NULL,'2016-06-28 09:49:10','2016-06-28 09:49:10');

/*Table structure for table `t_sys_setting` */

DROP TABLE IF EXISTS `t_sys_setting`;

CREATE TABLE `t_sys_setting` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `param_val` varchar(100) NOT NULL COMMENT '值',
  `param_key` varchar(100) NOT NULL COMMENT '键',
  `note` varchar(100) NOT NULL COMMENT '说明',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_setting` */

insert  into `t_sys_setting`(`id`,`param_val`,`param_key`,`note`,`create_date`,`update_date`) values ('1ec590661da04af6add2625ee599cf33','http://10.238.14.178:8080','fileHost','文件服务器地址','2016-01-22 13:26:45','2016-01-22 13:26:45'),('af84a0af1da847b1ae6925ba74eb25a1','1','mailAble','1邮件启用;0邮件停用','2016-04-06 08:49:05','2016-04-06 08:49:05');

/*Table structure for table `t_sys_user` */

DROP TABLE IF EXISTS `t_sys_user`;

CREATE TABLE `t_sys_user` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(13) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `dep_id` varchar(64) DEFAULT NULL COMMENT '部门ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_USER_NAME` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_user` */

insert  into `t_sys_user`(`id`,`user_name`,`real_name`,`password`,`mobile`,`email`,`dep_id`,`create_date`,`update_date`) values ('77a896896e0c4348ba200ac912c89235','admin','admin','c0de2ca069d5a39ca269fe282ddb18e7','1','1','','2015-04-08 21:42:55','2015-04-08 21:42:55');

/*Table structure for table `t_sys_usermsgcount` */

DROP TABLE IF EXISTS `t_sys_usermsgcount`;

CREATE TABLE `t_sys_usermsgcount` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `unread` int(11) DEFAULT NULL COMMENT '新消息数',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_usermsgcount` */

insert  into `t_sys_usermsgcount`(`id`,`user_id`,`unread`,`create_date`,`update_date`) values ('4ef319e206e345388695b77095481640','77a896896e0c4348ba200ac912c89235',0,'2015-04-08 21:42:55','2015-04-30 18:05:00');

/*Table structure for table `t_sys_userrole` */

DROP TABLE IF EXISTS `t_sys_userrole`;

CREATE TABLE `t_sys_userrole` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `role_id` varchar(100) DEFAULT NULL COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_userrole` */

insert  into `t_sys_userrole`(`id`,`user_id`,`real_name`,`role_id`,`role_name`,`create_date`,`update_date`) values ('a4ba223bc78f4ba899f3f118d0dac00a','77a896896e0c4348ba200ac912c89235','admin','25ea24d421684be987921a8579c790eb',NULL,'2015-12-07 10:07:11','2015-12-07 10:07:11');

/*Table structure for table `t_sys_version` */

DROP TABLE IF EXISTS `t_sys_version`;

CREATE TABLE `t_sys_version` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `sys_name` varchar(50) NOT NULL COMMENT '系统名称',
  `sys_version` varchar(10) NOT NULL COMMENT '系统版本',
  `build_date` datetime DEFAULT NULL COMMENT '构建时间',
  `copy_right` varchar(50) DEFAULT NULL COMMENT '版权归属',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_version` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

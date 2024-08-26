CREATE DATABASE IF NOT EXISTS `t2`;
USE `t2`;

DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='t1表';

insert into `t2` (`name`) values ('张三');
insert into `t2` (`name`) values ('李四');
insert into `t2` (`name`) values ('王五');
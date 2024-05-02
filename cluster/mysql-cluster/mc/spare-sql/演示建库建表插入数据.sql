CREATE DATABASE IF NOT EXISTS `test1`;
USE `test1`;

DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '植物名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='test1表';

insert into `test1` (`name`) values ('test1');
insert into `test1` (`name`) values ('test2');
insert into `test1` (`name`) values ('test3');
insert into `test1` (`name`) values ('test4');
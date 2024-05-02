-- SELECT
-- 	COLUMN_NAME 列名,
-- 	COLUMN_TYPE 数据类型,
-- 	DATA_TYPE 字段类型,
-- 	CHARACTER_MAXIMUM_LENGTH 长度,
-- 	IS_NULLABLE 是否为空,
-- 	COLUMN_DEFAULT 默认值,
-- 	COLUMN_COMMENT 备注 
-- FROM
-- 	INFORMATION_SCHEMA.COLUMNS 
-- WHERE
-- 	table_schema = 'plat' 
-- 	AND table_name = 'plat_orders'

CREATE DATABASE IF NOT EXISTS `plat`;
USE `plat`;

DROP TABLE IF EXISTS `plat`;
CREATE TABLE `plat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '植物名称',
  `cover` varchar(255) NOT NULL DEFAULT '' COMMENT '植物封面图片',
  `latin_name` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-拉丁学名',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-别名',
  `section` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-科',
  `subfamily` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-亚科',
  `circles` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-界',
  `family` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-族',
  `door` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-门',
  `genus` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-属',
  `outline` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-纲',
  `species` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-种',
  `sub_outline` varchar(255) NOT NULL DEFAULT '' COMMENT '植物-亚纲',
  `distribution_area` varchar(255) NOT NULL DEFAULT '' COMMENT '分布区域',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '详细描述',
  `plant_classification_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '植物分类ids,多个逗号分隔',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物表';

DROP TABLE IF EXISTS `plant_classification`;
CREATE TABLE `plant_classification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物分类表';

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

DROP TABLE IF EXISTS `plat_orders`;
CREATE TABLE `plat_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `plat_id` int(10) NOT NULL DEFAULT '0' COMMENT '植物id',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '价格,单位:分',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `plat_id` (`plat_id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物商品订单表';
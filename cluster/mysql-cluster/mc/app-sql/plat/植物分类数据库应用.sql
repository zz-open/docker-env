CREATE DATABASE IF NOT EXISTS `plat`;
USE `plat`;

DROP TABLE IF EXISTS `plat`;
CREATE TABLE `plat` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
  `plant_classification_id` int(10) NOT NULL DEFAULT '0' COMMENT '植物分类表主键',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物表';

INSERT INTO `plat`.`plat` (`id`, `plant_classification_id`, `name`, `cover`, `latin_name`, `alias`, `section`, `subfamily`, `circles`, `family`, `door`, `genus`, `outline`, `species`, `sub_outline`, `distribution_area`, `description`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '3', '菊花', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-05-04 00:30:01', '2024-05-04 00:30:01');
INSERT INTO `plat`.`plat` (`id`, `plant_classification_id`, `name`, `cover`, `latin_name`, `alias`, `section`, `subfamily`, `circles`, `family`, `door`, `genus`, `outline`, `species`, `sub_outline`, `distribution_area`, `description`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '1', '梅花', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-05-04 00:30:09', '2024-05-04 00:30:09');
INSERT INTO `plat`.`plat` (`id`, `plant_classification_id`, `name`, `cover`, `latin_name`, `alias`, `section`, `subfamily`, `circles`, `family`, `door`, `genus`, `outline`, `species`, `sub_outline`, `distribution_area`, `description`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '2', '甘蔗', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-05-04 00:30:25', '2024-05-04 00:30:25');


DROP TABLE IF EXISTS `plant_classification`;
CREATE TABLE `plant_classification` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物分类表';

INSERT INTO `plat`.`plant_classification` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '类别1', '管理员', '管理员', '2024-05-04 00:30:54', '2024-05-04 00:30:54');
INSERT INTO `plat`.`plant_classification` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '类别2', '管理员', '管理员', '2024-05-04 00:30:59', '2024-05-04 00:30:59');
INSERT INTO `plat`.`plant_classification` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '类别3', '管理员', '管理员', '2024-05-04 00:31:06', '2024-05-04 00:31:06');


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

INSERT INTO `plat`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '用户1', 'user1', 'password1', '管理员', '管理员', '2024-05-04 00:29:05', '2024-05-04 00:29:05');
INSERT INTO `plat`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '用户2', 'user2', 'password2', '管理员', '管理员', '2024-05-04 00:29:18', '2024-05-04 00:29:18');


DROP TABLE IF EXISTS `plat_orders`;
CREATE TABLE `plat_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sn` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `plat_id` int(10) NOT NULL DEFAULT '0' COMMENT '植物id',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '价格,单位:分',
  `num` int(10) NOT NULL DEFAULT '0' COMMENT '数量',
  `buy_at` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '采购时间',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sn` (`sn`),
  KEY `user_id` (`user_id`),
  KEY `plat_id` (`plat_id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='植物商品订单表';

INSERT INTO `plat`.`plat_orders` (`id`, `sn`, `user_id`, `plat_id`, `price`, `num`, `buy_at`,  `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '1715064164', 1, 1, 1000, 2, '2024-05-05 11:31:57', '管理员', '管理员', '2024-05-04 00:31:57', '2024-05-04 00:31:57');
INSERT INTO `plat`.`plat_orders` (`id`, `sn`, `user_id`, `plat_id`, `price`, `num`, `buy_at`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '1715064163', 2, 2, 2000, 4, '2024-05-05 11:31:57', '管理员', '管理员', '2024-05-04 00:32:03', '2024-05-04 00:32:03');

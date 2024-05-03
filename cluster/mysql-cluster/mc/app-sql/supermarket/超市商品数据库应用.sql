CREATE DATABASE IF NOT EXISTS `supermarket`;
USE `supermarket`;

DROP TABLE IF EXISTS `supermarket`;
CREATE TABLE `supermarket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='超市表';

INSERT INTO `supermarket`.`supermarket` (`id`, `name`, `address`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '超市1', '超市1地址', '管理员', '管理员', '2024-05-04 00:20:15', '2024-05-04 00:20:15');
INSERT INTO `supermarket`.`supermarket` (`id`, `name`, `address`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '超市2', '超市2地址', '管理员', '管理员', '2024-05-04 00:20:46', '2024-05-04 00:20:46');
INSERT INTO `supermarket`.`supermarket` (`id`, `name`, `address`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '超市3', '超市3地址', '管理员', '管理员', '2024-05-04 00:20:53', '2024-05-04 00:20:53');

DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='商品分类表';

INSERT INTO `supermarket`.`goods_category` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '鞋子', '管理员', '管理员', '2024-05-04 00:15:08', '2024-05-04 00:15:08');
INSERT INTO `supermarket`.`goods_category` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '袜子', '管理员', '管理员', '2024-05-04 00:15:19', '2024-05-04 00:15:19');
INSERT INTO `supermarket`.`goods_category` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '食品', '管理员', '管理员', '2024-05-04 00:15:38', '2024-05-04 00:15:38');
INSERT INTO `supermarket`.`goods_category` (`id`, `name`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (4, '洗漱用品', '管理员', '管理员', '2024-05-04 00:15:49', '2024-05-04 00:15:49');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '价格:单位（分）',
  `goods_category_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类ids,多个逗号分隔',
  `supermarket_id` int(10) NOT NULL DEFAULT '0' COMMENT '超市id',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_ids`, `supermarket_id`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '鸿星尔克鞋子', 10000, '1', 3, '管理员', '管理员', '2024-05-04 00:16:43', '2024-05-04 00:16:43');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_ids`, `supermarket_id`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '耐克鞋', 20000, '1', 1, '管理员', '管理员', '2024-05-04 00:16:52', '2024-05-04 00:16:52');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_ids`, `supermarket_id`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '乐事薯片', 1000, '2', 2, '管理员', '管理员', '2024-05-04 00:17:18', '2024-05-04 00:17:18');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_ids`, `supermarket_id`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (4, '海飞丝洗发水', 2000, '3', 1, '管理员', '管理员', '2024-05-04 00:17:37', '2024-05-04 00:17:37');

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

INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '用户1', 'user1', '123456', '管理员', '管理员', '2024-05-04 00:18:46', '2024-05-04 00:18:46');
INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '用户2', 'user2', '123456', '管理员', '管理员', '2024-05-04 00:18:55', '2024-05-04 00:18:55');
INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '用户3', 'user3', '123456', '管理员', '管理员', '2024-05-04 00:19:05', '2024-05-04 00:19:05');

DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品id',
  `supermarket` int(10) NOT NULL DEFAULT '0' COMMENT '超市id',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '价格,单位:分',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='商品订单表';

INSERT INTO `supermarket`.`goods_orders` (`id`, `user_id`, `goods_id`, `supermarket`, `price`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, 1, 1, 1, 10000, '管理员', '管理员', '2024-05-04 00:25:41', '2024-05-04 00:25:41');
INSERT INTO `supermarket`.`goods_orders` (`id`, `user_id`, `goods_id`, `supermarket`, `price`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, 2, 2, 2, 20000, '管理员', '管理员', '2024-05-04 00:25:49', '2024-05-04 00:25:49');

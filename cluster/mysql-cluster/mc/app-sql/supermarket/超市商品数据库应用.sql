CREATE DATABASE IF NOT EXISTS `supermarket`;
USE `supermarket`;

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '价格:单位（分）',
  `goods_category_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品分类表主键',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_id`,  `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '鸿星尔克鞋子', 10000, 1, '管理员', '管理员', '2024-05-04 00:16:43', '2024-05-04 00:16:43');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_id`,  `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '耐克鞋', 20000, 2, '管理员', '管理员', '2024-05-04 00:16:52', '2024-05-04 00:16:52');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_id`,  `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '乐事薯片', 1000, 3, '管理员', '管理员', '2024-05-04 00:17:18', '2024-05-04 00:17:18');
INSERT INTO `supermarket`.`goods` (`id`, `name`, `price`, `goods_category_id`,  `creator`, `updater`, `created_at`, `updated_at`) VALUES (4, '海飞丝洗发水', 2000, 4, '管理员', '管理员', '2024-05-04 00:17:37', '2024-05-04 00:17:37');


DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
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

INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '用户1', 'user1', '123456', '管理员', '管理员', '2024-05-04 00:18:46', '2024-05-04 00:18:46');
INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '用户2', 'user2', '123456', '管理员', '管理员', '2024-05-04 00:18:55', '2024-05-04 00:18:55');
INSERT INTO `supermarket`.`user` (`id`, `name`, `username`, `password`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (3, '用户3', 'user3', '123456', '管理员', '管理员', '2024-05-04 00:19:05', '2024-05-04 00:19:05');

DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sn` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户表主键',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品表主键',
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
  KEY `goods_id` (`goods_id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='商品订单表';

INSERT INTO `supermarket`.`goods_orders` (`id`, `sn`, `user_id`, `goods_id`, `price`, `num`, `buy_at`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (1, '1715062603', 1, 1, 10000, 5, '2024-05-06 12:25:49', '管理员', '管理员', '2024-05-04 00:25:41', '2024-05-04 00:25:41');
INSERT INTO `supermarket`.`goods_orders` (`id`, `sn`, `user_id`, `goods_id`, `price`, `num`, `buy_at`, `creator`, `updater`, `created_at`, `updated_at`) VALUES (2, '1715062604', 2, 2, 20000, 6, '2024-05-06 12:25:49', '管理员', '管理员', '2024-05-04 00:25:49', '2024-05-04 00:25:49');

CREATE DATABASE IF NOT EXISTS `library`;
USE `library`;

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '作者名称',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='作者表';

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '书籍名称',
  `content` text NOT NULL COMMENT '书籍内容',
  `published_year` varchar(255) NOT NULL DEFAULT '' COMMENT '书籍发布年份',
  `isbn` varchar(255) NOT NULL DEFAULT '' COMMENT '国际标准书号',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='书籍表';

DROP TABLE IF EXISTS `book_author`;
CREATE TABLE `book_author` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `book_id` int(10) NOT NULL DEFAULT '0' COMMENT '书籍表主键id',
  `author_id` int(10) NOT NULL DEFAULT '0' COMMENT '作者表主键id',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态:1-已绑定;0-未绑定',
  `creator` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `updater` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  UNIQUE KEY book_author (book_id, author_id)
) ENGINE=NDBCLUSTER DEFAULT CHARSET=utf8mb4 COMMENT='书籍作者关联表';
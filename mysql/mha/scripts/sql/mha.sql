create database bingo;
use bingo;

CREATE TABLE `student`
(
    `id`         int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(20) NOT NULL DEFAULT '',
    `age`        int(4) NOT NULL,
    `uid`        int(4) NOT NULL DEFAULT '0',
    `created_at` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `start_date` date        NOT NULL DEFAULT '0000-00-00',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4;


insert into student(name, age, uid) values('张三', 21, 2),
          ('李四', 22, 3),
          ('王五', 23, 4);
CREATE TABLE `student`
(
    `id`         int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(20) NOT NULL DEFAULT '',
    `age`        int(4) NOT NULL,
    `uid`        int(4) NOT NULL DEFAULT '0',
    `created_at` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `start_date` date        NOT NULL DEFAULT '0000-00-00',
    PRIMARY KEY (`id`, `uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/**http://mysql.taobao.org/monthly/2017/11/09/**/

/**创建分区**/
ALTER TABLE student PARTITION BY RANGE COLUMNS(uid)(
    PARTITION p2 VALUES LESS THAN (10),
    PARTITION p3 VALUES LESS THAN (20),
    PARTITION p4 VALUES LESS THAN (30),
    PARTITION p5 VALUES LESS THAN (40),
    PARTITION po VALUES LESS THAN (MAXVALUE)
);

/**新增分区**/
alter table student add partition(
    partition p6 VALUES LESS THAN (50)
);

/**删除分区**/
alter table student drop partition p6;

/**拆分分区**/
alter table student reorganize partition p5 into(
    partition s0 VALUES LESS THAN (45),
    partition s1 VALUES LESS THAN (47)
);

/**合并分区**/
alter table student reorganize partition s0,s1 into (
    partition p6 VALUES LESS THAN(60)
);
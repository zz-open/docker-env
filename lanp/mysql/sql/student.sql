CREATE TABLE `student` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `name` varchar(20) NOT NULL DEFAULT '',
   `age` int(11) NOT NULL DEFAULT '0',
   `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- mysql8 以上版本使用 caching_sha2_password
-- mysql5.7以下版本使用 mysql_native_password 
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED WITH 'caching_sha2_password' BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

CREATE USER IF NOT EXISTS 'mc'@'%' IDENTIFIED WITH 'caching_sha2_password' BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'mc'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
# mysql修改密码
```sql
use mysql;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

flush privileges;
```
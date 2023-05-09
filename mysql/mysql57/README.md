# mysql5.7
单实例,版本：5.7

# 修改密码
```text
use mysql;
update user set authentication_string = password('password') where user='username' and host='host';
flush privileges;
旧版本中密码字段是password，而不是authentication_string，必须刷新权限！！！！

参考：https://blog.csdn.net/qq_34777982/article/details/117445859
参考：https://i.vycc.cn/article/1139499.html
```

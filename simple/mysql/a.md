# mysql5.7修改密码
- [参考1](https://blog.csdn.net/qq_34777982/article/details/117445859)
- [参考2](https://i.vycc.cn/article/1139499.html)

```shell
use mysql;

update user set password = password('xxxx') where user='xxxx' and host='xxxx';

flush privileges;
```

# mysql8.0以上修改密码
```shell
use mysql;

update user set authentication_string = password('xxxx') where user='xxx' and host='xxx';

flush privileges;
```
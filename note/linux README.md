# linux

## set -xe


## IFS
```text
IFS定义了在分隔单词时用作分隔的字符或字符集。
维基百科：对于Unix操作系统的许多命令行解释器(“shell”)，内部字段分隔符(简称IFS)是指一个变量，该变量定义用于将模式拆分为某些操作的标记的字符。

默认情况下，IFS(字段分隔符)的值为<space><tab><newline>。因此，当shell看到第一行中的空格时，它将该行划分为四个标记(四个单词)。

修改IFS的值来满足我们的需求
IFS是一个环境变量。在更改环境变量之前，最好的做法是保存它们的内容。这样就可以轻松地将它们设置为默认值。
```
像cat命令默认使用IFS指定分隔符进行读取，碰见一行内容有空格的就无法完整读取一行了。此时可以通过修改IFS来解决问题


## 追加内容到文件末尾
```shell
# 读取文件
#   hosts=($(cat ./hosts))
#   echo ${hosts[*]}
#   for host in $hosts;do
#     {
#       # 遍历添加
#       echo -n "${host}" >> ${HOST_PATH}
#     }
#   done
```

#RUN apt install apt-transport-https ca-certificates
#RUN cat /etc/issue
#RUN cat /etc/os-release
#RUN cat /etc/apt/sources.list

#open -a "/Applications/Google Chrome.app" "http://localhost:9110"
#open -a "/Applications/Google Chrome.app" "http://localhost:9111"
#open -a "/Applications/Google Chrome.app" "http://localhost:8048"
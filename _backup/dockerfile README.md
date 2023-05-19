# dockerfile

## ARG


## RUN


## ADD
复制文件 / 文件夹
可以从网络 / 本地复制

## COPY
复制文件 / 文件夹
copy 仅从本地复制, 语义更明确, 推荐使用 copy


## WORKDIR
```text
1.Dockerfile中的WORKDIR指令用于指定容器的一个目录， 容器启动时执行的命令会在该目录下执行。
2.WORKDIR指令设置Dockerfile中的任何RUN，CMD，ENTRPOINT，COPY和ADD指令的工作目录。如果WORKDIR指 定的目录不存在，即使随后的指令没有用到这个目录，都会创建。
单个Dockerfile可以使用多次WORKFDIR。如果提供一个相对路径，当前的工作目录将于上个WORKDIR指令相关。
    
WORKDIR /a
WORKDIR b
WORKDIR c
RUN pwd
pwd命令的输出/a/b/c

WORKDIR可以解析之前由ENV设置的环境变量
ENV DIRPATH /path
WORKDIR $DIRPATH/$DIRNAME
RUN pwd
```

## VOLUME


## hosts修改丢失问题
RUN命令修改hosts文件，发现启动容器后不生效。因为容器创建会动态生成/etc/hosts，所以编译镜像期间修改无效。
- docker run --add-host
- docker-compose中使用extra-hosts进行添加
- 容器启动脚本中使用shell动态添加
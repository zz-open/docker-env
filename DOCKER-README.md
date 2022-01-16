#DOCKER语录
1.docker inspect -f='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq) | grep beanstalkd
2.links不建议使用，使用networks替代
3.移除没有使用的网络:docker network prune
4.查看network数量:docker network ls | wc -l
5.root用户进入容器：docker exec -it --user root kafka1 bash
6.entrypoint和CMD区别
cmd是容器默认的执行，entrypoint是容器正真的执行命令，会覆盖CMD
cmd可以作为entrypoint的默认参数

The CMD instruction has three forms:
CMD ["executable","param1","param2"] (exec form, this is the preferred form)
CMD ["param1","param2"] (as default parameters to ENTRYPOINT)
CMD command param1 param2 (shell form)

ENTRYPOINT has two forms:
ENTRYPOINT ["executable", "param1", "param2"] (exec form, preferred)
ENTRYPOINT command param1 param2 (shell form)

7.ADD copy区别
add 和 copy 都是复制文件 / 文件夹
add 可以从网络 / 本地复制; copy 仅从本地复制, 语义更明确, 推荐使用 copy

8.WORKDIR
1.Dockerfile中的WORKDIR指令用于指定容器的一个目录， 容器启动时执行的命令会在该目录下执行。
2.WORKDIR指令设置Dockerfile中的任何RUN，CMD，ENTRPOINT，COPY和ADD指令的工作目录。如果WORKDIR指 定的目录不存在，即使随后的指令没有用到这个目录，都会创建。
单个Dockerfile可以使用多次WORKFDIR。如果提供一个相对路径，当前的工作目录将于上个WORKDIR指令相关。
    
WORKDIR /a
WORKDIR b
WORKDIR c
RUN pwd
pwd命令的输出/a/b/c

3.WORKDIR可以解析之前由ENV设置的环境变量
ENV DIRPATH /path
WORKDIR $DIRPATH/$DIRNAME
RUN pwd

9.
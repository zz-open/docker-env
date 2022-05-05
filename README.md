# container-env
基于docker-compose构建的工作环境

目的:使用docker-compose方式组织，方便构建各种工作环境，节省时间提高效率

1.单节点容器通常使用standalone命名，配置比较简单，根据个人使用情况增加
2.容器结点通常使用cluster命名，配置比较繁琐
3.service,hostname,container推荐设置为一致名字，当有多个容器service名字一样的时候，docker-compose down的时候
会一并销毁。

参考了很多其他人写的配置，然后改成适合自己的。

#####清华源：https://mirrors.tuna.tsinghua.edu.cn/help/debian/
#####dockerhub: https://hub.docker.com
# php-fpm dockerfile修改点
1. 替换了sources.list, 使用国内源
   参考:(https://developer.aliyun.com/mirror/debian?spm=a2c6h.13651102.0.0.5d261b11UMNLX1)
   参考:(https://developer.volcengine.com/articles/7104185437987536926)
2. 增加了安装composer工具
3. 安装了vim,ip,ifconfig等常用命令
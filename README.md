# NginxImage
Nginx Docker 镜像

一、基于 nginx 1.16.0 版本制作的，支持 stream 反向代理的镜像；

二、run.sh 为容器启动脚本，请注意将里面的相关参数和路径，按照自己环境的实际情况进行调整；

三、在容器中，/opt/nginx/conf/http.conf.d 目录存放 HTTP 反向代理配置文件；

四、在容器中，/opt/nginx/conf/stream.conf.d 目录存放 stream（ssh、tcp） 反向代理配置文件；
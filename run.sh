docker run --name nginx --privileged=true --restart=always --net=host \
-v /home/root/server/nginx/html:/opt/nginx/html \ 
-v /home/root/server/nginx/logs:/opt/nginx/logs \
-v /home/root/server/nginx/conf/nginx.conf:/opt/nginx/conf/nginx.conf \
-v /home/root/server/nginx/conf/http.conf.d:/opt/nginx/conf/http.conf.d \
-v /home/root/server/nginx/conf/stream.conf.d:/opt/nginx/conf/stream.conf.d \
-d tqwboy/nginx-stream:1.16.0
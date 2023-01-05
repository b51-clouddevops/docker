FROM    centos:7  
RUN     yum install epel-release -y  
RUN     yum install nginx -y 
EXPOSE  80
ENV     PROJECT=roboshop 
ENV     MONGO=mongo.robot.internal
ADD     sample.txt /opt 
COPY    index.html /usr/share/nginx/html/index.html
LABEL   COMPONENT=frontend
CMD     ["nginx", "-g", "daemon off;"]
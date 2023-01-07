# FROM    centos:7  
# RUN     yum install epel-release -y  
# RUN     yum install nginx -y 
# EXPOSE  80
# ENV     PROJECT=roboshop 
# ENV     MONGO=mongo.robot.internal
# ADD     sample.txt /opt 
# COPY    index.html /usr/share/nginx/html/index.html
# LABEL   COMPONENT=frontend
# # CMD     ["nginx", "-g", "daemon off;"]
# CMD     nginx -g "daemon off;"

# When you declare something in ENTRYOINT that can never be overrided and can be overriden if you delcare in CMD  

FROM        centos:7  
RUN         useradd roboshop  
USER        roboshop  
CMD         ["google.com"] 
ENTRYPOINT  ["ping", "-c","10"]
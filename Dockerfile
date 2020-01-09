FROM python:2.7.17-alpine3.10
WORKDIR /usr/src/app
ADD . /usr/src/app


ENV TZ Asia/Shanghai


## install python requirements 


## install ntpdate, not accept but saving code
#RUN echo 'deb http://mirrors.163.com/debian/ jessie main non-free contrib \
#	deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib \
#	deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib' > /etc/apt/sources.list \
#	&& apt-get update\
#	&& apt-get install ntpdate -y \


#EXPOSE 5010

CMD [ "python", "run.py" ]
#ENTRYPOINT [ "python", "run.py" ]

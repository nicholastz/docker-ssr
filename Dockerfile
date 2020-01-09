FROM python:2.7.17-alpine3.10
WORKDIR /usr/src/app
ADD . /usr/src/app


ENV TZ Asia/Shanghai


RUN wget https://github.com/nicholastz/shadowsocksr/archive/master.zip && unzip master && mv shadowsocksr-master/* /usr/src/app/ \
    && rm -rf master.zip shadowsocksr-master/ \
    && sh setup_cymysql2.sh \
    && pip install peewee \
    && pip install pymysql \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD [ "python", "server.py" ]

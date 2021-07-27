FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y python3-dev default-libmysqlclient-dev build-essential

RUN pip3 install -r requirements.txt

#ENV MYSQL_USERNAME = "root"
#ENV MYSQL_PASSWORD = "1903"
#ENV MYSQL_PORT_3306_TCP_ADDR = "0.0.0.0"
#ENV MYSQL_INSTANCE_NAME = "demo"   
#ENV MYSQL_PORT_3306_TCP_PORT = 3306

EXPOSE 3000

CMD [ "python3", "./app.py" ]

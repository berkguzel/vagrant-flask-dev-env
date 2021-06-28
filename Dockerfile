FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt \
	 pytest 

RUN py.test

CMD [ "python3", "./app.py" ]

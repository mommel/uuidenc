FROM node:8.11-alpine
WORKDIR /app
ADD /application_webserver /app

RUN apk --update no-cache add bash python py-pip openssl
RUN pip install --upgrade pip && \
	npm install --upgrade pip && \
	npm install uuid
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80
ENV NAME World

CMD ["python", "app.py"]
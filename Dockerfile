 FROM python:3.9-slim

 WORKDIR /app

 RUN apt-get update && apt-get install -y gcc default-libmysqlclient-dev pkg-config &&\
     rm -rf /var/lib/apt/list/*
RUN pip install --no-cache-dir -r requirement.txt

EXPOSE 5000

CMD ["pyhton","app.py"]
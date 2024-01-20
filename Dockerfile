FROM python:3.9-slim

WORKDIR /app  

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt 

COPY . . 

EXPOSE 7755  

RUN chmod +x run.sh

CMD ["./run.sh"] 


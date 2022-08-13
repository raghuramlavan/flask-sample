FROM python:3
ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y git
#RUN git clone https://github.com/raghuramlavan/flask-sample.git
COPY . ~/flask-sample
WORKDIR ~/flask-sample/
RUN python -m pip install -r requirements.txt
CMD [ "python3", "hello.py"]

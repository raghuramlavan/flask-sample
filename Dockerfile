FROM python:3
ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y git
WORKDIR /capstone/
#RUN git clone https://github.com/raghuramlavan/flask-sample.git
WORKDIR /capstone/flask-sample/
RUN python -m pip install -r requirements.txt
COPY . /capstone/
CMD [ "python3", "hello.py"]

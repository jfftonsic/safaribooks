FROM python:latest

ENV safariemail test
ENV safaripass test
ENV bookid test

ADD . /work

WORKDIR /work

RUN pip3 install -r requirements.txt

ENTRYPOINT python3 safaribooks.py --cred "${safariemail}:${safaripass}" $bookid
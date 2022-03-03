FROM python:3.7-alpine

COPY bots/func/config.py /bots/func
COPY bots/func/retweet.py /bots/func
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /bots/func
CMD ["python3", "favretweet.py"]
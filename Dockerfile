FROM python:3.7-alpine

COPY bot/func/config.py /bots/func
COPY bot/func/retweet.py /bots/func
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /bots/func
CMD ["python3", "favretweet.py"]

FROM python:3.7.2-alpine
RUN apk add python3-dev gcc libc-dev linux-headers
ADD ./requirements.txt requirements.txt
ADD ./uwsgi.ini uwsgi.ini
RUN pip install -r requirements.txt
CMD ["uwsgi", "--ini", "uwsgi.ini"]

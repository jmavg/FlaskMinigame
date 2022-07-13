FROM python:3.10.4-alpine3.16

RUN apk update
RUN mkdir /opt/flask_minigame && apk add git

WORKDIR /opt/flask_minigame

RUN git clone https://github.com/jmavg/FlaskMinigame.git
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["./higher_lower.py"]
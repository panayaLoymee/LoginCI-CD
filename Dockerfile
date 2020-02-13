FROM alpine:3.11

RUN apk-install bash py-pip firefox xvfb dbus chromium chromium-chromedriver
RUN pip install --upgrade pip
RUN pip install robotframework
RUN pip install robotframework-selenium2library

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
RUN robot LoginModdy.robot

CMD ["run.sh"]

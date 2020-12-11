FROM alpine/git:1.0.7

COPY LICENSE README.md entrypoint.sh /

RUN apk add python3
RUN pip3 install pipreqs

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

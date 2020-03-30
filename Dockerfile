FROM alpine:3.10

COPY LICENSE README.md entrypoint.sh /

COPY src/create-requirement.py /create-requirement.py

RUN apk add python3
RUN pip3 install pipreqs

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
FROM python:3

ADD . /src

WORKDIR /src

RUN set -x && \
    pip install -r requirements.txt && \
    python setup.py install

VOLUME ["/conf"]

CMD ["bitcoinexchangefh", "--configuration", "/conf/configuration.yaml"]

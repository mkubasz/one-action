from alpine

RUN apk add --no-cache jq

COPY run.sh /run.sh

ENTRYPOINT ['/run.sh']

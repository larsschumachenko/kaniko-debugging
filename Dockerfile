FROM alpine as base

COPY Makefile .

RUN apk add --no-cache --virtual .build_deps make && apk del .build_deps
RUN apk --no-cache add make

FROM base as qa

RUN apk add --no-cache --virtual .build_deps make && apk del .build_deps make
RUN apk --no-cache add make

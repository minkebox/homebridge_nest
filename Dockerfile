FROM registry.gitlab.com/minkebox/homebridge_base

COPY root/ /

RUN cd /app ; npm --save install homebridge-nest

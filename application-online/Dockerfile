FROM openjdk:17-alpine


RUN mkdir -p /deployment

COPY run.sh /deployment/run.sh
COPY persona.jar /deployment/app.jar

RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--", "/deployment/run.sh"]

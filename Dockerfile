FROM       openjdk:8u111-jre
MAINTAINER Trent Hornibrook (trent.hornibrook@gmail.com)

ADD  https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.13.4.jar /elasticmq/elasticmq.jar
ADD  run /elasticmq/run
RUN  chmod +x /elasticmq/run

EXPOSE 9324

ENTRYPOINT ["/elasticmq/run"]

FROM docker.elastic.co/logstash/logstash:5.5.1
ENV XPACK_MONITORING_ENABLED=false
RUN logstash-plugin install logstash-output-mongodb
ADD ./pipeline/history.mongodb.conf /usr/share/logstash/pipeline/history.mongodb.conf

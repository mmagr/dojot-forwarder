FROM docker.elastic.co/logstash/logstash:5.5.1
RUN logstash-plugin install logstash-output-mongodb

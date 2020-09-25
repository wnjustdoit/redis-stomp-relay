#!/bin/bash

mvn \
	-Dspring.redis.host=127.0.0.1:7000,127.0.0.1:7001,127.0.0.1:7002,127.0.0.1:7003,127.0.0.1:7004,127.0.0.1:7005 \
  -Dspring.redis.password=123456 \
	-Dstomp-redis-relay.channel-prefix=/ \
	spring-boot:run

#cd target/
#java -Dspring.redis.cluster.nodes=127.0.0.1:7000,127.0.0.1:7001,127.0.0.1:7002,127.0.0.1:7003,127.0.0.1:7004,127.0.0.1:7005 \
#-Dspring.redis.password=123456 \
#-Dstomp-redis-relay.channel-prefix=/ \
#-jar redis-stomp-relay-0.0.4-SNAPSHOT.jar
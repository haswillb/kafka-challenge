#!/bin/bash

CONTAINER_ID=`docker ps | grep kafkachallenge_kafka | awk '{print $1}'`

echo "id is"
echo $CONTAINER_ID

docker exec -ti $CONTAINER_ID bash -c "/opt/kafka_*/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 4 --topic main-messages"

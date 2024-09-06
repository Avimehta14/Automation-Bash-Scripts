#!/bin/bash

# Start Kafka consumer for the my-topic in a new Terminal tab
osascript -e 'tell application "Terminal" to do script "cd ~/desktop/codes/kafka/kafka_2.13-3.8.0; bin/kafka-console-consumer.sh --topic final-topic --from-beginning --bootstrap-server localhost:9092"'

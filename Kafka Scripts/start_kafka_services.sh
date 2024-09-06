#!/bin/bash


# Function to run a command in a new Terminal tab
function open_new_terminal_tab() {
    osascript -e "tell application \"Terminal\" to do script \"$1\""
}

# Start ZooKeeper in a new Terminal tab
open_new_terminal_tab "cd ~/desktop/codes/kafka/kafka_2.13-3.8.0; bin/zookeeper-server-start.sh config/zookeeper.properties"

# Wait for ZooKeeper to start
sleep 15

# Start Kafka Broker in a new Terminal tab
open_new_terminal_tab "cd ~/desktop/codes/kafka/kafka_2.13-3.8.0; bin/kafka-server-start.sh config/server.properties"



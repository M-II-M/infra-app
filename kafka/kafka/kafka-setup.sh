#!/bin/bash

# Ожидаем запуск Kafka
echo "Waiting for Kafka to be ready..."
cub kafka-ready -b kafka:9092 1 20

# Создаем топики
echo "Creating Kafka topics..."

# Топик для push уведомлений
kafka-topics --create --if-not-exists \
  --bootstrap-server kafka:9092 \
  --topic push-notifications \
  --partitions 3 \
  --replication-factor 1 \
  --config retention.ms=604800000 \
  --config cleanup.policy=delete

# Топик для ошибок
kafka-topics --create --if-not-exists \
  --bootstrap-server kafka:9092 \
  --topic notification-errors \
  --partitions 1 \
  --replication-factor 1 \
  --config retention.ms=2592000000

echo "Kafka topics created successfully!"
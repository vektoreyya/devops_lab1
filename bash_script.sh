#!/bin/bash

# URL-адреса сервера та код відповіді
SERVER_URL="https://www.example.com"
EXPECTED_RESPONSE_CODE="2xx 3xx"

# шлях до лоґ-файлу
LOG_FILE="/var/log/mylog.log"

# виконуємо запит до сервера та отримуємо код відповіді
RESPONSE_CODE=$(curl -s -o /dev/null -w "%{http_code}" $SERVER_URL)

# перевіряємо, чи є код відповіді очікуваним; якщо ні, то записуємо помилку до лоґ-файлу
if ! [[ "$EXPECTED_RESPONSE_CODE" =~ "$RESPONSE_CODE" ]]; then
    echo "Error: unexpected response code $RESPONSE_CODE from $SERVER_URL" >> $LOG_FILE
fi
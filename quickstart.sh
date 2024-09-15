#!/bin/sh
echo "Hello, world! The time is $(date)."

# 啟動一個簡單的 HTTP 服務，監聽 8080 端口
echo "Starting a simple HTTP server on port $PORT..."
python3 -m http.server $PORT

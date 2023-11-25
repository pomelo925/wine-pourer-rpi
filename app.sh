#!/bin/bash

## 開啟 port 權限
sudo chmod 777 /dev/ttyUSB0

## 開啟程式權限
chmod +x arduino/write_fromArduino.py
chmod +x arduino/write_toArduino.py
chmod +x monitor/app.py

## 執行程式
python3 arduino/write_fromArduino.py & 
sleep 1
python3 arduino/write_toArduino.py & 
sleep 1

## 跑主程式
python3 monitor/app.py  
pkill -f write.py # 結束背景運行的 write.py
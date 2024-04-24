#!/bin/bash

echo "-------------------------"
echo "       XENBLOCKS         "
echo "    STARTING INSTALL     "
echo "-------------------------"


cd XENGPUMiner
sudo chmod +x build.sh > /dev/null 2>&1
sudo ./build.sh > /dev/null 2>&1
echo "STEP 7 of 10: Permissions set!"

sudo sed -i "s/account = $1/account = $2/g" config.conf > /dev/null 2>&1
echo "-----auto8.sh start------：$2"

# 杀掉之前的xengpuminer进程
sudo pkill xengpuminer
echo "-----kill xengpuminer-----------"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &


echo "-------------------------"
echo "    MINING  XENBLOCKS    "
echo "     auto8.sh     "
echo "-------------------------"


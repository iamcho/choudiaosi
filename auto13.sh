#!/bin/bash



cd XENGPUMiner
sudo chmod +x build.sh > /dev/null 2>&1
sudo ./build.sh > /dev/null 2>&1
echo "STEP 7 of 10: Permissions set!"

# 检查是否传递了参数
if [ -z "$1" ]; then
    echo "input account eth"
    exit 1
fi

sudo sed -i "s/^account = .*/account = $1/" config.conf > /dev/null 2>&1
echo "Replaced ETH address $1"



echo "STEP 10 of 10: Starting Miner & GPU"
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
sleep 1
sudo nohup ./xengpuminer -d4 > xengpuminer-8.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d5 > xengpuminer-9.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d6 > xengpuminer-10.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d7 > xengpuminer-11.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d7 > xengpuminer-12.log 2>&1 &


echo "mint $2"
tail -f /root/XENGPUMiner/miner.log

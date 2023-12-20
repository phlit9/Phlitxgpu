#!/bin/bash

echo "STEP 10 of 10: Starting Miner & 10 GPUs"
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
sudo nohup ./xengpuminer -d8 > xengpuminer-8.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d9 > xengpuminer-9.log 2>&1 &
sleep 1

echo "-------------------------"
echo "    MINING  XENBLOCKS    "
echo "-------------------------"
echo " "
tail -f /root/XENGPUMiner/miner.log

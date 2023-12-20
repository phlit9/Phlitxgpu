#!/bin/bash

echo "-------------------------"
echo "       XENBLOCKS         "
echo "    STARTING INSTALL     "
echo "-------------------------"

sudo apt -y upgrade > /dev/null 2>&1
echo "STEP 1 of 10: Completed Packages Update"

sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "STEP 2 of 10: Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "STEP 3 of 10: Installed Nano"

sudo apt -y install cmake  > /dev/null 2>&1
echo "STEP 4 of 10: Installed cMake"

sudo apt -y install python3-pip > /dev/null 2>&1
echo "STEP 5 of 10: Installed Python"

sudo apt -y install build-essential > /dev/null 2>&1
echo "STEP 5.5 of 10: Installed Build Essentials"

git clone https://github.com/shanhaicoder/XENGPUMiner.git > /dev/null 2>&1
echo "STEP 6 of 10: Cloned https://github.com/shanhaicoder/XENGPUMiner.git"

cd XENGPUMiner
sudo chmod +x build.sh > /dev/null 2>&1
sudo ./build.sh -cuda_arch sm_89 > /dev/null 2>&1
echo "STEP 7 of 10: Permissions set and build.sh ran"

sudo sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x18C1c90101aA2D04B62a8Fa80fb8D9a574362079/g' config.conf > /dev/null 2>&1
echo "STEP 8 of 10: Replaced ETH address in config with 0x18C1c90101aA2D04B62a8Fa80fb8D9a574362079"

sudo pip install -U -r requirements.txt > /dev/null 2>&1
echo "STEP 9 of 10: Installed Python Requirements"

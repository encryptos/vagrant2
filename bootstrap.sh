#!/usr/bin/env bash

sudo apt-get -y install git
git clone http://git-wip-us.apache.org/repos/asf/mesos.git
sudo apt-get -y update
sudo apt-get -y install build-essential
sudo apt-get -y install openjdk-6-jdk
sudo apt-get -y install python-dev python-boto
sudo apt-get -y install libcurl4-nss-dev
sudo apt-get -y install libsasl2-dev
sudo apt-get -y install maven
sudo apt-get -y install autoconf
sudo apt-get -y install libtool
cd mesos
./bootstrap
mkdir build
cd build
../configure
make
make check
make install
cd build
./bin/mesos-master.sh --ip=127.0.0.1 --work_dir=/var/lib/mesos


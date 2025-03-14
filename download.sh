#!/bin/bash

set -ex

# Unarchived size: 5.1M Apache.log
if [ ! -f Apache.tar.gz ]; then
  wget https://zenodo.org/record/3227177/files/Apache.tar.gz
fi

# Unarchived size: 13G hadoop-*.log
if [ ! -f HDFS_2.tar.gz ]; then
  wget https://zenodo.org/record/3227177/files/HDFS_2.tar.gz
fi

# Unarchived size: 2.3M Linux.log
if [ ! -f Linux.tar.gz ]; then
  wget https://zenodo.org/record/3227177/files/Linux.tar.gz
fi

# Unarchived size: 32G Thunderbird.log
if [ ! -f Thunderbird.tar.gz ]; then
  wget https://zenodo.org/record/3227177/files/Thunderbird.tar.gz
fi

# Unarchived size: 73M SSH.log
if [ ! -f SSH.tar.gz ]; then
  wget https://zenodo.org/record/3227177/files/SSH.tar.gz
fi


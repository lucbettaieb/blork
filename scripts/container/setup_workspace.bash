#!/bin/bash
source /opt/ros/melodic/setup.bash
echo "source /opt/ros/melodic/setup.bash" >> /root/.bashrc

mkdir -p /root/catkin_ws/src
(cd /root/catkin_ws/src && catkin_init_workspace)

echo "source /root/catkin_ws/devel/setup.bash" >> /root/.bashrc

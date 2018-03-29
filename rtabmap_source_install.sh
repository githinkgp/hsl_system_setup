source /opt/ros/indigo/setup.bash

sudo apt-get install ros-kinetic-rtabmap ros-kinetic-rtabmap-ros
sudo apt-get remove ros-kinetic-rtabmap ros-kinetic-rtabmap-ros

cd ~
git clone https://github.com/introlab/rtabmap.git rtabmap
cd rtabmap/build
cmake -DCMAKE_INSTALL_PREFIX=~/ros_catkin_ws/devel_isolated ..
make -j4
#if you get an error on the make -j4, then run make to see what the errors are. 
#If the error is related to a 'stoi' then make changes in the code mentioned to fix this.
make install

source ~/ros_catkin_ws/devel_isolated/setup.bash

cd ~/ros_catkin_ws
git clone https://github.com/introlab/rtabmap_ros.git src/rtabmap_ros
catkin_make_isolated

#Setup your computer to accept software from packages.ros.org. 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

#make sure your Debian package index is up-to-date
sudo apt update

#Install bootstrap dependencies (Ubuntu)
sudo apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential

#Initializing rosdep
sudo rosdep init
rosdep update

#Create a catkin Workspace
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

rosinstall_generator desktop --rosdistro kinetic --deps --wet-only --tar > kinetic-desktop-wet.rosinstall
wstool init -j8 src kinetic-desktop-wet.rosinstall

#Resolving Dependencies
rosdep install --from-paths src --ignore-src --rosdistro kinetic -y

#To utilize the things installed there simply source
source ~/ros_catkin_ws/install_isolated/setup.bash

sudo apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential
sudo rosdep init
rosdep update
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

rosinstall_generator desktop --rosdistro kinetic --deps --wet-only --tar > kinetic-desktop-wet.rosinstall
wstool init -j8 src kinetic-desktop-wet.rosinstall

# mavros install

rm -rf install_geographiclib_datasets*

sudo apt-get install ros-kinetic-mavros ros-kinetic-mavros-extras

wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh

sudo chmod +x ./install_geographiclib_datasets.sh



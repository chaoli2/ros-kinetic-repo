# Please refer http://wiki.ros.org/RecommendedRepositoryUsage/CommonGitHubOrganizations for common github organization for ROS packages

# Use rosdep to install dependencies
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y

# General required libraries
sudo apt-get install libbullet-dev libopenblas-dev

# Cartography dependency
sudo apt-get install libgoogle-glog-dev python-sphinx liblua5.2-dev google-mock libgflags-dev libsuitesparse-dev ninja-build protobuf-compiler libcairo2-dev libeigen3-dev

# Opencv
sudo apt-get install libavcodec-dev libavresample-dev libgphoto2-dev liblapacke-dev checkinstall

# Download ippicv_linux_20151201.tgz from https://raw.githubusercontent.com/Itseez/opencv_3rdparty/81a676001ca8075ada498583e4166079e5744668/ippicv/ippicv_linux_20151201.tgz


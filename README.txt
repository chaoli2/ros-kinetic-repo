# Please refer http://wiki.ros.org/RecommendedRepositoryUsage/CommonGitHubOrganizations for common github organization for ROS packages

1, prerequisite

# General required libraries
sudo apt-get install libbullet-dev libopenblas-dev

# ROS related tools
sudo apt-get install python-wstool python-rosinstall python-rosinstall-generator

# Cartography dependency
sudo apt-get install libgoogle-glog-dev python-sphinx liblua5.2-dev google-mock libgflags-dev libsuitesparse-dev ninja-build protobuf-compiler libcairo2-dev libeigen3-dev

# Opencv
sudo apt-get install libavcodec-dev libavresample-dev libgphoto2-dev liblapacke-dev checkinstall

# Download ippicv_linux_20151201.tgz from https://raw.githubusercontent.com/Itseez/opencv_3rdparty/81a676001ca8075ada498583e4166079e5744668/ippicv/ippicv_linux_20151201.tgz

2, download source
run ./init-repo.sh
if the rosinstall files under repos folder is changed, you can run init-repo again. please ignore the error about the kinetic-desktop.rosinstall has been initialized.

3, build 
run ./build.sh

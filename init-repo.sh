#!/bin/bash

WS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${WS_DIR}/src/
wstool init -j8 src repos/kinetic-desktop-wet.rosinstall
wstool merge -t src repos/yujinrobot.rosinstall
wstool merge -t src repos/rocon.rosinstall
wstool merge -t src repos/turtlebot.rosinstall
wstool merge -t src repos/misc.rosinstall
wstool update -j8 -t src

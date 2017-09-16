#!/bin/bash

WS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${WS_DIR}/src/kinectic-desktop
wstool init -j8 src repos/kinetic-desktop-wet.rosinstall
mkdir -p ${WS_DIR}/src/kobuki
wstool merge -t src repos/kobuki.rosinstall
mkdir -p ${WS_DIR}/src/rocon
wstool merge -t src repos/rocon.rosinstall
mkdir -p ${WS_DIR}/src/turtlebot
wstool merge -t src repos/turtlebot.rosinstall
wstool update -j8 -t src
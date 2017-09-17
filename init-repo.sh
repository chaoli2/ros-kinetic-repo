#!/bin/bash

WS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check whether wstool installed
if ! [ -x "$(command -v wstool)" ]; then
  echo 'Error: wstool is not installed. please install via apt-get install python-wstool' >&2
  exit 1
fi

mkdir -p ${WS_DIR}/src/

wstool init -j8 src repos/kinetic-desktop.rosinstall
wstool merge -t src repos/yujinrobot.rosinstall
wstool merge -t src repos/rocon.rosinstall
wstool merge -t src repos/turtlebot.rosinstall
wstool merge -t src repos/misc.rosinstall
wstool update -j8 -t src

echo 'Done.'

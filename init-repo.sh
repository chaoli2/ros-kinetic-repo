#!/bin/bash

WS_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check whether wstool installed
if ! [ -x "$(command -v wstool)" ]; then
  echo 'Error: wstool is not installed. please install via apt-get install python-wstool' >&2
  exit 1
fi

set -e

mkdir -p ${WS_DIR}/src/

wstool init -j8 ${WS_DIR}/src ${WS_DIR}/repos/kinetic-desktop.rosinstall || true
wstool merge -t ${WS_DIR}/src ${WS_DIR}/repos/yujinrobot.rosinstall
wstool merge -t ${WS_DIR}/src ${WS_DIR}/repos/rocon.rosinstall
wstool merge -t ${WS_DIR}/src ${WS_DIR}/repos/turtlebot.rosinstall
wstool merge -t ${WS_DIR}/src ${WS_DIR}/repos/misc.rosinstall
wstool update -j8 -t ${WS_DIR}/src

echo 'Done.'

#!/bin/bash

#./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release
./src/ros/catkin/bin/catkin_make_isolated -j8 --install -DCMAKE_BUILD_TYPE=Release -DEIGENSPARSE=ON 

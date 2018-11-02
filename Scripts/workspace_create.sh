#!/bin/bash

# creates a workspace with the input name
function workspace_create() {
  source /opt/ros/kinetic/setup.bash
  mkdir -p ~/$1/src
  cd ~/$1/
  catkin_make
  source devel/setup.bash
  echo $1 ' successfully created:'
  echo $ROS_PACKAGE_PATH
}

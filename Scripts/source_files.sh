#!/bin/bash

# Source workspace
function source_me () {
  cd ~/$1/
  source ./devel/setup.bash
  echo -e "\e[36m-->Workspace Sourced<--"
}

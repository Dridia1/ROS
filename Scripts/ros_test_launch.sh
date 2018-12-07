#!/bin/bash

# prints the input
function ros_test_launch() {
    xterm -e bash -c 'roslaunch px4 posix_sitl.launch; exec bash' &
    echo 'Launching px4 - posix_sitl.launch.. sleeping for 10sec...'
    sleep 10
    echo 'Launching macros - at: udp://:14550@127.0.0.1:14557' 
    xterm -e bash -c 'roslaunch mavros px4.launch fcu_url:="udp://:14550@127.0.0.1:14557"; exec bash' &
    sleep 5
    echo 'Launching script: ros_test : hej_test.launch'
    xterm -e bash -c 'roslaunch ros_test hej_test.launch; exec bash'
    
}

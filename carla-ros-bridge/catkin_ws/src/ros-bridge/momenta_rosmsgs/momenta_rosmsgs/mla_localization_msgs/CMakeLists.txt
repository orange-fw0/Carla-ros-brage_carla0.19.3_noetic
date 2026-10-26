cmake_minimum_required(VERSION 2.8.3)
project(mla_localization_msgs)
find_package(catkin REQUIRED COMPONENTS roscpp rospy message_generation landmark_msgs perception_interface_msgs std_msgs)

file(GLOB_RECURSE ROS_MSGS ${CMAKE_CURRENT_LIST_DIR}/msg/*.msg)
list(LENGTH ROS_MSGS SIZE_ROS_MSGS)
if(SIZE_ROS_MSGS GREATER 0)
    add_message_files(DIRECTORY msg)
endif()

file(GLOB_RECURSE ROS_SRVS ${CMAKE_CURRENT_LIST_DIR}/srv/*.srv)
list(LENGTH ROS_SRVS SIZE_ROS_SRVS)
if(SIZE_ROS_SRVS GREATER 0)
    add_service_files(DIRECTORY srv)
endif()

if( SIZE_ROS_MSGS GREATER 0 OR SIZE_ROS_SRVS GREATER 0)
    generate_messages(DEPENDENCIES landmark_msgs perception_interface_msgs std_msgs)
endif()

include_directories(${catkin_INCLUDE_DIRS})
catkin_package()
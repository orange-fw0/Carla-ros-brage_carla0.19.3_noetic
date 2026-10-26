# Install script for directory: /home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/carla/carla_project/carla-ros-bridge/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/v2x_msgs/msg" TYPE FILE FILES
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/v2x_msgs/cmake" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/catkin_generated/installspace/v2x_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/include/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/roseus/ros/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/common-lisp/ros/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/gennodejs/ros/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/lib/python3/dist-packages/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/lib/python3/dist-packages/v2x_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/catkin_generated/installspace/v2x_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/v2x_msgs/cmake" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/catkin_generated/installspace/v2x_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/v2x_msgs/cmake" TYPE FILE FILES
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/catkin_generated/installspace/v2x_msgsConfig.cmake"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/catkin_generated/installspace/v2x_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/v2x_msgs" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/package.xml")
endif()


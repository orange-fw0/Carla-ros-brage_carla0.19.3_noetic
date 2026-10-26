# Install script for directory: /home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/recorder_srvs/srv" TYPE FILE FILES
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/recorder_srvs/cmake" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/catkin_generated/installspace/recorder_srvs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/include/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/roseus/ros/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/common-lisp/ros/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/share/gennodejs/ros/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/lib/python3/dist-packages/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/devel/lib/python3/dist-packages/recorder_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/catkin_generated/installspace/recorder_srvs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/recorder_srvs/cmake" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/catkin_generated/installspace/recorder_srvs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/recorder_srvs/cmake" TYPE FILE FILES
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/catkin_generated/installspace/recorder_srvsConfig.cmake"
    "/home/carla/carla_project/carla-ros-bridge/catkin_ws/build/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/catkin_generated/installspace/recorder_srvsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/recorder_srvs" TYPE FILE FILES "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/package.xml")
endif()


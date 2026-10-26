# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "v2x_msgs: 19 messages, 0 services")

set(MSG_I_FLAGS "-Iv2x_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg;-Iperception_interface_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(v2x_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" "v2x_msgs/V2xCollisionWarningInfo:v2x_msgs/V2xCollisionWarningData:std_msgs/Header:v2x_msgs/V2xMeta"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" "v2x_msgs/V2xCollisionWarningData"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" "v2x_msgs/V2xIntersectionData:std_msgs/Header:v2x_msgs/V2xMeta:v2x_msgs/V2xIntersectionInfo"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" "v2x_msgs/V2xIntersectionData"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" "v2x_msgs/V2xPhase:perception_interface_msgs/TrafficLightStatusEnum:v2x_msgs/V2xPhaseState"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" "v2x_msgs/V2xOverHorizonInfo:std_msgs/Header:v2x_msgs/V2xMeta:v2x_msgs/V2xOverHorizonData"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" "v2x_msgs/V2xOverHorizonData"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" "v2x_msgs/V2xPerceptionObjectType:std_msgs/Header:v2x_msgs/V2xPerceptionObject:v2x_msgs/V2xPerceptionInfo:v2x_msgs/V2xMeta"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" "v2x_msgs/V2xPerceptionObjectType:v2x_msgs/V2xPerceptionObject"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" "v2x_msgs/V2xPerceptionObjectType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" "perception_interface_msgs/TrafficLightStatusEnum:v2x_msgs/V2xPhaseState"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" "perception_interface_msgs/TrafficLightStatusEnum"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" "std_msgs/Header:v2x_msgs/V2xTrafficLightInfo:v2x_msgs/V2xPhaseState:v2x_msgs/V2xPhase:v2x_msgs/V2xMeta:perception_interface_msgs/TrafficLightStatusEnum:v2x_msgs/V2xIntersectionState"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_custom_target(_v2x_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "v2x_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" "v2x_msgs/V2xPhaseState:v2x_msgs/V2xPhase:perception_interface_msgs/TrafficLightStatusEnum:v2x_msgs/V2xIntersectionState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_cpp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(v2x_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(v2x_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(v2x_msgs_generate_messages v2x_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_cpp _v2x_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(v2x_msgs_gencpp)
add_dependencies(v2x_msgs_gencpp v2x_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS v2x_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)
_generate_msg_eus(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(v2x_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(v2x_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(v2x_msgs_generate_messages v2x_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_eus _v2x_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(v2x_msgs_geneus)
add_dependencies(v2x_msgs_geneus v2x_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS v2x_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)
_generate_msg_lisp(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(v2x_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(v2x_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(v2x_msgs_generate_messages v2x_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_lisp _v2x_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(v2x_msgs_genlisp)
add_dependencies(v2x_msgs_genlisp v2x_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS v2x_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)
_generate_msg_nodejs(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(v2x_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(v2x_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(v2x_msgs_generate_messages v2x_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_nodejs _v2x_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(v2x_msgs_gennodejs)
add_dependencies(v2x_msgs_gennodejs v2x_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS v2x_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)
_generate_msg_py(v2x_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightStatusEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(v2x_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(v2x_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(v2x_msgs_generate_messages v2x_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarning.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xCollisionWarningInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersection.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xIntersectionState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xMeta.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizon.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonData.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xOverHorizonInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerception.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObject.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPerceptionObjectType.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhase.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xPhaseState.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLight.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/v2x_msgs/msg/V2xTrafficLightInfo.msg" NAME_WE)
add_dependencies(v2x_msgs_generate_messages_py _v2x_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(v2x_msgs_genpy)
add_dependencies(v2x_msgs_genpy v2x_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS v2x_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/v2x_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_cpp)
  add_dependencies(v2x_msgs_generate_messages_cpp perception_interface_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(v2x_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/v2x_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_eus)
  add_dependencies(v2x_msgs_generate_messages_eus perception_interface_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(v2x_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/v2x_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_lisp)
  add_dependencies(v2x_msgs_generate_messages_lisp perception_interface_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(v2x_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/v2x_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_nodejs)
  add_dependencies(v2x_msgs_generate_messages_nodejs perception_interface_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(v2x_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/v2x_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_py)
  add_dependencies(v2x_msgs_generate_messages_py perception_interface_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(v2x_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

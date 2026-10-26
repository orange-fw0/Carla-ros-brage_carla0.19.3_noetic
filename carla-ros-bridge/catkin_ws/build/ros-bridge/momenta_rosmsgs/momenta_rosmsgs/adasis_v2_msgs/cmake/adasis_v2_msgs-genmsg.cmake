# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "adasis_v2_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iadasis_v2_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(adasis_v2_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" "std_msgs/Header:adasis_v2_msgs/ProfileShort:adasis_v2_msgs/Segment:adasis_v2_msgs/Position:adasis_v2_msgs/MetaData:adasis_v2_msgs/ProfileLong:adasis_v2_msgs/Stub"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_custom_target(_adasis_v2_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adasis_v2_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_cpp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(adasis_v2_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(adasis_v2_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(adasis_v2_msgs_generate_messages adasis_v2_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_cpp _adasis_v2_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adasis_v2_msgs_gencpp)
add_dependencies(adasis_v2_msgs_gencpp adasis_v2_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adasis_v2_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_eus(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(adasis_v2_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(adasis_v2_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(adasis_v2_msgs_generate_messages adasis_v2_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_eus _adasis_v2_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adasis_v2_msgs_geneus)
add_dependencies(adasis_v2_msgs_geneus adasis_v2_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adasis_v2_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_lisp(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(adasis_v2_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(adasis_v2_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(adasis_v2_msgs_generate_messages adasis_v2_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_lisp _adasis_v2_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adasis_v2_msgs_genlisp)
add_dependencies(adasis_v2_msgs_genlisp adasis_v2_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adasis_v2_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_nodejs(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(adasis_v2_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(adasis_v2_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(adasis_v2_msgs_generate_messages adasis_v2_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_nodejs _adasis_v2_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adasis_v2_msgs_gennodejs)
add_dependencies(adasis_v2_msgs_gennodejs adasis_v2_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adasis_v2_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)
_generate_msg_py(adasis_v2_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(adasis_v2_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(adasis_v2_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(adasis_v2_msgs_generate_messages adasis_v2_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/AdasisV2.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/FunctionalRoadClassType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/MetaData.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Position.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLong.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileLongType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShort.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/ProfileShortType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/Stub.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/adasis_v2_msgs/msg/TrafficSignType.msg" NAME_WE)
add_dependencies(adasis_v2_msgs_generate_messages_py _adasis_v2_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adasis_v2_msgs_genpy)
add_dependencies(adasis_v2_msgs_genpy adasis_v2_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adasis_v2_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adasis_v2_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(adasis_v2_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adasis_v2_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(adasis_v2_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adasis_v2_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(adasis_v2_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adasis_v2_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(adasis_v2_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adasis_v2_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(adasis_v2_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

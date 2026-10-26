# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hdmap_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihdmap_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hdmap_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" "hdmap_msgs/LocalMapLayer:hdmap_msgs/LocalMapData:std_msgs/Header"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" "hdmap_msgs/LocalMapLayer"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" "hdmap_msgs/ODDPriorityType:hdmap_msgs/ODDType:hdmap_msgs/ODDEvent:std_msgs/Header"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" "hdmap_msgs/ODDPriorityType:hdmap_msgs/ODDType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_custom_target(_hdmap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hdmap_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_cpp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hdmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hdmap_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hdmap_msgs_generate_messages hdmap_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_cpp _hdmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdmap_msgs_gencpp)
add_dependencies(hdmap_msgs_gencpp hdmap_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdmap_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_eus(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hdmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hdmap_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hdmap_msgs_generate_messages hdmap_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_eus _hdmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdmap_msgs_geneus)
add_dependencies(hdmap_msgs_geneus hdmap_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdmap_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_lisp(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hdmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hdmap_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hdmap_msgs_generate_messages hdmap_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_lisp _hdmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdmap_msgs_genlisp)
add_dependencies(hdmap_msgs_genlisp hdmap_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdmap_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_nodejs(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hdmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hdmap_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hdmap_msgs_generate_messages hdmap_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_nodejs _hdmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdmap_msgs_gennodejs)
add_dependencies(hdmap_msgs_gennodejs hdmap_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdmap_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)
_generate_msg_py(hdmap_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hdmap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hdmap_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hdmap_msgs_generate_messages hdmap_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMap.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/LocalMapLayer.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDData.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDEvent.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDPriorityType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/hdmap_msgs/msg/ODDType.msg" NAME_WE)
add_dependencies(hdmap_msgs_generate_messages_py _hdmap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hdmap_msgs_genpy)
add_dependencies(hdmap_msgs_genpy hdmap_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hdmap_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hdmap_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hdmap_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hdmap_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hdmap_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hdmap_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hdmap_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hdmap_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hdmap_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hdmap_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hdmap_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

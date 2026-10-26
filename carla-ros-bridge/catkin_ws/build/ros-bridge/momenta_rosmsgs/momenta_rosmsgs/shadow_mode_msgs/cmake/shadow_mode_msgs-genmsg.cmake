# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "shadow_mode_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ishadow_mode_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(shadow_mode_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" "shadow_mode_msgs/ShadowModeTriggerEvent:shadow_mode_msgs/ActionType:shadow_mode_msgs/TrustParam:shadow_mode_msgs/TriggerParam:std_msgs/Header:shadow_mode_msgs/DetailConfig:shadow_mode_msgs/ShadowTriggerMessage"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" "shadow_mode_msgs/DetailConfig:shadow_mode_msgs/TrustParam:shadow_mode_msgs/TriggerParam:shadow_mode_msgs/ActionType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_custom_target(_shadow_mode_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shadow_mode_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_cpp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(shadow_mode_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(shadow_mode_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(shadow_mode_msgs_generate_messages shadow_mode_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_cpp _shadow_mode_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shadow_mode_msgs_gencpp)
add_dependencies(shadow_mode_msgs_gencpp shadow_mode_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shadow_mode_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_eus(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(shadow_mode_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(shadow_mode_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(shadow_mode_msgs_generate_messages shadow_mode_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_eus _shadow_mode_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shadow_mode_msgs_geneus)
add_dependencies(shadow_mode_msgs_geneus shadow_mode_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shadow_mode_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_lisp(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(shadow_mode_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(shadow_mode_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(shadow_mode_msgs_generate_messages shadow_mode_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_lisp _shadow_mode_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shadow_mode_msgs_genlisp)
add_dependencies(shadow_mode_msgs_genlisp shadow_mode_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shadow_mode_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_nodejs(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(shadow_mode_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(shadow_mode_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(shadow_mode_msgs_generate_messages shadow_mode_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_nodejs _shadow_mode_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shadow_mode_msgs_gennodejs)
add_dependencies(shadow_mode_msgs_gennodejs shadow_mode_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shadow_mode_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)
_generate_msg_py(shadow_mode_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(shadow_mode_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(shadow_mode_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(shadow_mode_msgs_generate_messages shadow_mode_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ActionType.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/DetailConfig.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTrigger.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowModeTriggerEvent.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/ShadowTriggerMessage.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TriggerParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/shadow_mode_msgs/msg/TrustParam.msg" NAME_WE)
add_dependencies(shadow_mode_msgs_generate_messages_py _shadow_mode_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shadow_mode_msgs_genpy)
add_dependencies(shadow_mode_msgs_genpy shadow_mode_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shadow_mode_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shadow_mode_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(shadow_mode_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shadow_mode_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(shadow_mode_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shadow_mode_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(shadow_mode_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shadow_mode_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(shadow_mode_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shadow_mode_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(shadow_mode_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

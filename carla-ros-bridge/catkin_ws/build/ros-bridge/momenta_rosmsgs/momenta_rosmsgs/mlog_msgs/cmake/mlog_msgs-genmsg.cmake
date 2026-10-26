# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mlog_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imlog_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mlog_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_custom_target(_mlog_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mlog_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_custom_target(_mlog_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mlog_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" "std_msgs/Header:mlog_msgs/Entry"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mlog_msgs
)
_generate_msg_cpp(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mlog_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mlog_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mlog_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mlog_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mlog_msgs_generate_messages mlog_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_cpp _mlog_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_cpp _mlog_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mlog_msgs_gencpp)
add_dependencies(mlog_msgs_gencpp mlog_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mlog_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mlog_msgs
)
_generate_msg_eus(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mlog_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mlog_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mlog_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mlog_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mlog_msgs_generate_messages mlog_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_eus _mlog_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_eus _mlog_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mlog_msgs_geneus)
add_dependencies(mlog_msgs_geneus mlog_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mlog_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mlog_msgs
)
_generate_msg_lisp(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mlog_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mlog_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mlog_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mlog_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mlog_msgs_generate_messages mlog_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_lisp _mlog_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_lisp _mlog_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mlog_msgs_genlisp)
add_dependencies(mlog_msgs_genlisp mlog_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mlog_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mlog_msgs
)
_generate_msg_nodejs(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mlog_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mlog_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mlog_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mlog_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mlog_msgs_generate_messages mlog_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_nodejs _mlog_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_nodejs _mlog_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mlog_msgs_gennodejs)
add_dependencies(mlog_msgs_gennodejs mlog_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mlog_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs
)
_generate_msg_py(mlog_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mlog_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mlog_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mlog_msgs_generate_messages mlog_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Entry.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_py _mlog_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/mlog_msgs/msg/Logs.msg" NAME_WE)
add_dependencies(mlog_msgs_generate_messages_py _mlog_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mlog_msgs_genpy)
add_dependencies(mlog_msgs_genpy mlog_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mlog_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mlog_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mlog_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mlog_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mlog_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mlog_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mlog_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mlog_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mlog_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mlog_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mlog_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mlog_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mlog_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mlog_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mlog_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

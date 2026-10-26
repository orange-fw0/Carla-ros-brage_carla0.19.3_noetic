# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "recorder_srvs: 0 messages, 19 services")

set(MSG_I_FLAGS "-Irecorder_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(recorder_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" "recorder_msgs/TopicInfo:recorder_msgs/BagInfo"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" "recorder_msgs/ImageTopicConfig"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" "recorder_msgs/ExportJobInfo:recorder_msgs/BagInfo"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" "recorder_msgs/FilterParamV2:recorder_msgs/ExportJobInfoV2:recorder_msgs/RecordingParamV2:recorder_msgs/EventParamV2"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" "recorder_msgs/FilterParamV2:recorder_msgs/ExportJobInfoV2:recorder_msgs/RecordingParamV2:recorder_msgs/EventParamV2"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" "recorder_msgs/ReceivingSample"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_custom_target(_recorder_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "recorder_srvs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/TopicInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ImageTopicConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ReceivingSample.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_cpp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
)

### Generating Module File
_generate_module_cpp(recorder_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(recorder_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(recorder_srvs_generate_messages recorder_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_cpp _recorder_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(recorder_srvs_gencpp)
add_dependencies(recorder_srvs_gencpp recorder_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS recorder_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/TopicInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ImageTopicConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ReceivingSample.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)
_generate_srv_eus(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
)

### Generating Module File
_generate_module_eus(recorder_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(recorder_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(recorder_srvs_generate_messages recorder_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_eus _recorder_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(recorder_srvs_geneus)
add_dependencies(recorder_srvs_geneus recorder_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS recorder_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/TopicInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ImageTopicConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ReceivingSample.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)
_generate_srv_lisp(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
)

### Generating Module File
_generate_module_lisp(recorder_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(recorder_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(recorder_srvs_generate_messages recorder_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_lisp _recorder_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(recorder_srvs_genlisp)
add_dependencies(recorder_srvs_genlisp recorder_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS recorder_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/TopicInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ImageTopicConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ReceivingSample.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)
_generate_srv_nodejs(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
)

### Generating Module File
_generate_module_nodejs(recorder_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(recorder_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(recorder_srvs_generate_messages recorder_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_nodejs _recorder_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(recorder_srvs_gennodejs)
add_dependencies(recorder_srvs_gennodejs recorder_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS recorder_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/TopicInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ImageTopicConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/BagInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/FilterParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ExportJobInfoV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/RecordingParamV2.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/EventParamV2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_msgs/msg/ReceivingSample.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)
_generate_srv_py(recorder_srvs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
)

### Generating Module File
_generate_module_py(recorder_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(recorder_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(recorder_srvs_generate_messages recorder_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CacheBagDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/TopicsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskList.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskListV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskType.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEject.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/DiskEjectV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/CheckRecording.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetails.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV2.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExportDetailsV3.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ExporterStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/GlobalMeta.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/VersionInfo.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/ReceivingStats.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/UpdateExportItem.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/StopRecordings.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/recorder_msgs/recorder_srvs/srv/Restart.srv" NAME_WE)
add_dependencies(recorder_srvs_generate_messages_py _recorder_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(recorder_srvs_genpy)
add_dependencies(recorder_srvs_genpy recorder_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS recorder_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/recorder_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET recorder_msgs_generate_messages_cpp)
  add_dependencies(recorder_srvs_generate_messages_cpp recorder_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/recorder_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET recorder_msgs_generate_messages_eus)
  add_dependencies(recorder_srvs_generate_messages_eus recorder_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/recorder_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET recorder_msgs_generate_messages_lisp)
  add_dependencies(recorder_srvs_generate_messages_lisp recorder_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/recorder_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET recorder_msgs_generate_messages_nodejs)
  add_dependencies(recorder_srvs_generate_messages_nodejs recorder_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/recorder_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET recorder_msgs_generate_messages_py)
  add_dependencies(recorder_srvs_generate_messages_py recorder_msgs_generate_messages_py)
endif()

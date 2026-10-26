cmake_minimum_required(VERSION 2.8.3)
project(recorder_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

add_message_files(FILES
  Tag.msg
  BagInfo.msg
  ExportJobInfo.msg
  ExportJobInfoV2.msg
  ImageTopicConfig.msg
  EventV2.msg
  EventParamV2.msg
  FilterV2.msg
  FilterParamV2.msg
  RecordingV2.msg
  RecordingParamV2.msg
  ReceivingSample.msg
  VersionInfo.msg
  TopicInfo.msg
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs
)

cmake_minimum_required(VERSION 2.8.3)
project(recorder_srvs)

find_package(catkin REQUIRED COMPONENTS
    message_generation
    recorder_msgs
)

add_service_files(FILES
    CacheBagDetails.srv
    TopicsV2.srv
    DiskList.srv
    DiskListV2.srv
    DiskListV3.srv
    DiskType.srv
    DiskEject.srv
    DiskEjectV2.srv
    CheckRecording.srv
    ExportDetails.srv
    ExportDetailsV2.srv
    ExportDetailsV3.srv
    ExporterStats.srv
    GlobalMeta.srv
    VersionInfo.srv
    ReceivingStats.srv
    UpdateExportItem.srv
    StopRecordings.srv
    Restart.srv
)

generate_messages(DEPENDENCIES recorder_msgs)

catkin_package(
    CATKIN_DEPENDS message_runtime recorder_msgs
)

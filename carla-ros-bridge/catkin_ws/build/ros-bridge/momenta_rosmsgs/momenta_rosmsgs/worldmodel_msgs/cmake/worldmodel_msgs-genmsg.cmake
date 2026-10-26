# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "worldmodel_msgs: 68 messages, 0 services")

set(MSG_I_FLAGS "-Iworldmodel_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg;-Iperception_interface_msgs:/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(worldmodel_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" "worldmodel_msgs/RampManeuver"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" "perception_interface_msgs/ParkingSlotPointTypeEnum:perception_interface_msgs/FusionSpecialParkingSlotType:perception_interface_msgs/FusionParkingSlotType:perception_interface_msgs/Point2f:worldmodel_msgs/ParkingSlotFusionAPAData:perception_interface_msgs/FusionParkingSlotData:std_msgs/Header:worldmodel_msgs/APAInfo:worldmodel_msgs/FusionAPAMeta:perception_interface_msgs/Point3f:perception_interface_msgs/ParkingSlotVirtualPoint"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" "worldmodel_msgs/StopLine:worldmodel_msgs/LaneConnectDirection:worldmodel_msgs/MergePoint:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/MergeType:perception_interface_msgs/Point3f:worldmodel_msgs/LaneBoundaryColor:worldmodel_msgs/ReferenceLineSegment:worldmodel_msgs/RoadPriorityType:worldmodel_msgs/LaneType:worldmodel_msgs/MapTrafficLight:perception_interface_msgs/TrafficLightPatternEnum:worldmodel_msgs/LaneData:worldmodel_msgs/ReferenceLinePoint:worldmodel_msgs/MapTrafficLightGroup:worldmodel_msgs/RoadEdge:worldmodel_msgs/Direction:perception_interface_msgs/Point3d:worldmodel_msgs/LeftWaitingArea:worldmodel_msgs/LaneBoundary:worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundarySegment:worldmodel_msgs/RoadPriority:worldmodel_msgs/Interval:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/ReferenceLine:worldmodel_msgs/LaneBoundaryPolyline"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" "worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundarySegment:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/LaneBoundaryPolyline:perception_interface_msgs/Point3f:worldmodel_msgs/Interval:worldmodel_msgs/LaneBoundaryColor"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" "worldmodel_msgs/Interval"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" "worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundaryColor:worldmodel_msgs/LaneBoundaryType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" "worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/LaneBoundaryColor:worldmodel_msgs/LaneBoundaryWidth"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" "worldmodel_msgs/LaneConnectDirection:worldmodel_msgs/MergePoint:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/MergeType:worldmodel_msgs/RoadPriorityType:perception_interface_msgs/Point3f:worldmodel_msgs/LaneBoundaryColor:worldmodel_msgs/LaneType:worldmodel_msgs/ReferenceLinePoint:worldmodel_msgs/LaneBoundaryPolyline:worldmodel_msgs/RoadEdge:worldmodel_msgs/Direction:perception_interface_msgs/Point3d:worldmodel_msgs/LaneBoundary:worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundarySegment:worldmodel_msgs/RoadPriority:worldmodel_msgs/Interval:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/ReferenceLine:worldmodel_msgs/ReferenceLineSegment"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" "worldmodel_msgs/Orientation"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" "worldmodel_msgs/LaneChangeState:worldmodel_msgs/Interval:worldmodel_msgs/LaneStrategyData"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" "worldmodel_msgs/LaneChangeState:worldmodel_msgs/Interval"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" "worldmodel_msgs/MapPOIType:perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" "perception_interface_msgs/TrafficLightPatternEnum:perception_interface_msgs/Point3d"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" "perception_interface_msgs/TrafficLightPatternEnum:perception_interface_msgs/Point3d:worldmodel_msgs/MapTrafficLight"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" "worldmodel_msgs/MergeType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" "perception_interface_msgs/VehicleSubTypeEnum:perception_interface_msgs/VehicleTypeEnum:perception_interface_msgs/VehicleBeamLightEnum:perception_interface_msgs/PerceptionObjectTypeEnum:perception_interface_msgs/VehicleBeamLightInfo:perception_interface_msgs/VRUAniSubTypeEnum:perception_interface_msgs/VehicleTailLightEnum:worldmodel_msgs/ObjectWorldModelData:perception_interface_msgs/ObjectTypeEnum:perception_interface_msgs/VehicleBrakeLightInfo:perception_interface_msgs/VehicleCutinStateEnum:perception_interface_msgs/Point3f:perception_interface_msgs/VehicleEgoLaneRelationInfo:perception_interface_msgs/VehicleBlinkLightEnum:perception_interface_msgs/TrafficBarrierTypeEnum:perception_interface_msgs/PerceptionFusionObjectData:perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum:perception_interface_msgs/Polygon3f:perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo:perception_interface_msgs/VehicleCutinStateInfo:perception_interface_msgs/VehicleDoorStateEnum:perception_interface_msgs/Shape3d:perception_interface_msgs/Point3d:perception_interface_msgs/GeneralObjectTypeEnum:perception_interface_msgs/ObjectTypeInfo:perception_interface_msgs/VehicleStateInfo:perception_interface_msgs/VRUPedSubTypeEnum:perception_interface_msgs/AvoidObjectTypeEnum:perception_interface_msgs/PerceptionSceneTypeEnum:perception_interface_msgs/VehicleEgoLaneRelationEnum:perception_interface_msgs/TrafficBarrierUsefulEnum:perception_interface_msgs/VRUSubTypeEnum:perception_interface_msgs/TrafficLightTypeEnum:perception_interface_msgs/VRUTypeEnum:perception_interface_msgs/BarrierStateInfo:perception_interface_msgs/VehicleBrakeLightEnum:perception_interface_msgs/VehicleBlinkLightInfo:perception_interface_msgs/VehicleTailLightInfo:perception_interface_msgs/VehicleDoorStateInfo:perception_interface_msgs/Vector3d:perception_interface_msgs/ObjectTypePropertyEnum"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" "worldmodel_msgs/IntentionType:worldmodel_msgs/Matrix2f:perception_interface_msgs/PerceptionObjectTypeEnum:worldmodel_msgs/PredictionTrajectoryPoint:worldmodel_msgs/LateralIntention:worldmodel_msgs/PredictionTrajectory:perception_interface_msgs/Point2f:worldmodel_msgs/LongitudinalIntention"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" "perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" "perception_interface_msgs/VehicleSubTypeEnum:perception_interface_msgs/VehicleTypeEnum:perception_interface_msgs/VehicleBeamLightEnum:perception_interface_msgs/PerceptionObjectTypeEnum:perception_interface_msgs/VehicleBeamLightInfo:perception_interface_msgs/VRUAniSubTypeEnum:worldmodel_msgs/ObjectInterface:perception_interface_msgs/VehicleTailLightEnum:worldmodel_msgs/ObjectWorldModelData:perception_interface_msgs/ObjectTypeEnum:perception_interface_msgs/VehicleBrakeLightInfo:perception_interface_msgs/VehicleCutinStateEnum:perception_interface_msgs/Point3f:perception_interface_msgs/VehicleEgoLaneRelationInfo:perception_interface_msgs/VehicleBlinkLightEnum:perception_interface_msgs/TrafficBarrierTypeEnum:perception_interface_msgs/PerceptionFusionObjectData:perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum:perception_interface_msgs/Polygon3f:perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo:perception_interface_msgs/VehicleCutinStateInfo:perception_interface_msgs/VehicleDoorStateEnum:perception_interface_msgs/Shape3d:perception_interface_msgs/Point3d:perception_interface_msgs/GeneralObjectTypeEnum:perception_interface_msgs/ObjectTypeInfo:perception_interface_msgs/VehicleStateInfo:perception_interface_msgs/VRUPedSubTypeEnum:std_msgs/Header:worldmodel_msgs/ObjectsInterfaceMeta:perception_interface_msgs/AvoidObjectTypeEnum:perception_interface_msgs/PerceptionSceneTypeEnum:perception_interface_msgs/VehicleEgoLaneRelationEnum:perception_interface_msgs/TrafficBarrierUsefulEnum:perception_interface_msgs/VRUSubTypeEnum:perception_interface_msgs/TrafficLightTypeEnum:perception_interface_msgs/VRUTypeEnum:perception_interface_msgs/BarrierStateInfo:perception_interface_msgs/VehicleBrakeLightEnum:perception_interface_msgs/VehicleBlinkLightInfo:perception_interface_msgs/VehicleTailLightInfo:perception_interface_msgs/VehicleDoorStateInfo:perception_interface_msgs/Vector3d:perception_interface_msgs/ObjectTypePropertyEnum"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" "perception_interface_msgs/Point3f:perception_interface_msgs/Polygon3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" "perception_interface_msgs/ParkingSlotPointTypeEnum:perception_interface_msgs/FusionSpecialParkingSlotType:perception_interface_msgs/FusionParkingSlotType:perception_interface_msgs/FusionParkingSlotData:worldmodel_msgs/APAInfo:perception_interface_msgs/Point3f:perception_interface_msgs/Point2f:perception_interface_msgs/ParkingSlotVirtualPoint"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" "worldmodel_msgs/ParkingOutPosition:worldmodel_msgs/TraversedParkingLot:perception_interface_msgs/Polygon3f:worldmodel_msgs/TargetMapPOI:worldmodel_msgs/MapPOIType:perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" "perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" "worldmodel_msgs/IntentionType:worldmodel_msgs/Matrix2f:perception_interface_msgs/PerceptionObjectTypeEnum:worldmodel_msgs/PredictionResultMeta:std_msgs/Header:worldmodel_msgs/PredictionTrajectoryPoint:worldmodel_msgs/LateralIntention:worldmodel_msgs/ObjectPredictionData:worldmodel_msgs/PredictionTrajectory:perception_interface_msgs/Point2f:worldmodel_msgs/LongitudinalIntention"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" "worldmodel_msgs/IntentionType:worldmodel_msgs/Matrix2f:worldmodel_msgs/PredictionTrajectoryPoint:worldmodel_msgs/LateralIntention:perception_interface_msgs/Point2f:worldmodel_msgs/LongitudinalIntention"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" "perception_interface_msgs/Point2f:worldmodel_msgs/Matrix2f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" "worldmodel_msgs/StopLine:worldmodel_msgs/ProcessedMapMeta:worldmodel_msgs/TraversedParkingLot:worldmodel_msgs/LaneConnectDirection:worldmodel_msgs/MergePoint:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/MergeType:perception_interface_msgs/Point3f:worldmodel_msgs/LaneBoundaryColor:worldmodel_msgs/ReferenceLineSegment:worldmodel_msgs/RoadPriorityType:worldmodel_msgs/LaneChangeState:worldmodel_msgs/LaneType:worldmodel_msgs/MapTrafficLight:perception_interface_msgs/TrafficLightPatternEnum:worldmodel_msgs/SelfPositionData:worldmodel_msgs/LaneData:worldmodel_msgs/ReferenceLinePoint:perception_interface_msgs/Polygon3f:worldmodel_msgs/MapTrafficLightGroup:worldmodel_msgs/MapPOIInfoData:worldmodel_msgs/WayPointData:worldmodel_msgs/RoadEdge:worldmodel_msgs/Direction:worldmodel_msgs/ParkingOutPosition:worldmodel_msgs/ProcessedMapData:worldmodel_msgs/Orientation:perception_interface_msgs/Point3d:worldmodel_msgs/IntersectionData:worldmodel_msgs/ExtraInfo:worldmodel_msgs/LaneBoundary:worldmodel_msgs/LeftWaitingArea:worldmodel_msgs/LaneBoundaryWidth:std_msgs/Header:worldmodel_msgs/LaneBoundarySegment:worldmodel_msgs/RoadPriority:worldmodel_msgs/TargetMapPOI:worldmodel_msgs/Interval:worldmodel_msgs/WayPointType:worldmodel_msgs/MapPOIType:worldmodel_msgs/RampManeuver:worldmodel_msgs/LaneStrategyData:worldmodel_msgs/LaneMergingSplittingPointData:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/TargetPosition:worldmodel_msgs/ReferenceLine:worldmodel_msgs/ParkingTargetPosition:worldmodel_msgs/LaneBoundaryPolyline"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" "worldmodel_msgs/StopLine:worldmodel_msgs/TraversedParkingLot:worldmodel_msgs/LaneConnectDirection:worldmodel_msgs/MergePoint:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/MergeType:worldmodel_msgs/LaneBoundaryColor:perception_interface_msgs/Point3f:worldmodel_msgs/ReferenceLineSegment:worldmodel_msgs/RoadPriorityType:worldmodel_msgs/LaneChangeState:worldmodel_msgs/LaneType:worldmodel_msgs/MapTrafficLight:perception_interface_msgs/TrafficLightPatternEnum:worldmodel_msgs/SelfPositionData:worldmodel_msgs/LaneData:worldmodel_msgs/ReferenceLinePoint:perception_interface_msgs/Polygon3f:worldmodel_msgs/MapTrafficLightGroup:worldmodel_msgs/MapPOIInfoData:worldmodel_msgs/WayPointData:worldmodel_msgs/RoadEdge:worldmodel_msgs/Direction:worldmodel_msgs/ParkingOutPosition:worldmodel_msgs/Orientation:perception_interface_msgs/Point3d:worldmodel_msgs/IntersectionData:worldmodel_msgs/ExtraInfo:worldmodel_msgs/LaneBoundary:worldmodel_msgs/LeftWaitingArea:worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundarySegment:worldmodel_msgs/RoadPriority:worldmodel_msgs/TargetMapPOI:worldmodel_msgs/Interval:worldmodel_msgs/WayPointType:worldmodel_msgs/MapPOIType:worldmodel_msgs/RampManeuver:worldmodel_msgs/LaneStrategyData:worldmodel_msgs/LaneMergingSplittingPointData:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/TargetPosition:worldmodel_msgs/ReferenceLine:worldmodel_msgs/ParkingTargetPosition:worldmodel_msgs/LaneBoundaryPolyline"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" "worldmodel_msgs/LaneType:worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/ReferenceLineSegment:worldmodel_msgs/LaneConnectDirection:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/ReferenceLinePoint:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/LaneBoundaryColor:perception_interface_msgs/Point3d"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" "worldmodel_msgs/LaneBoundaryWidth:worldmodel_msgs/LaneBoundaryForm:worldmodel_msgs/LaneBoundaryType:worldmodel_msgs/LaneBoundaryColor:perception_interface_msgs/Point3d"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" "worldmodel_msgs/LaneType:worldmodel_msgs/LaneConnectDirection"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" "perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" "worldmodel_msgs/RoadPriorityType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" "perception_interface_msgs/Point2d:worldmodel_msgs/SceneObjectType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" "worldmodel_msgs/SceneObjectsMeta:std_msgs/Header:perception_interface_msgs/Point2d:perception_interface_msgs/Polygon3f:worldmodel_msgs/SceneObjectType:worldmodel_msgs/ScenePolygonObject:worldmodel_msgs/SceneCircleObject:perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" "perception_interface_msgs/Point3f:perception_interface_msgs/Polygon3f:worldmodel_msgs/SceneObjectType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" ""
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" "worldmodel_msgs/MapPOIType:perception_interface_msgs/Point3f:perception_interface_msgs/Polygon3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" "worldmodel_msgs/ParkingOutPosition:worldmodel_msgs/TraversedParkingLot:perception_interface_msgs/Polygon3f:worldmodel_msgs/TargetMapPOI:worldmodel_msgs/ParkingTargetPosition:worldmodel_msgs/MapPOIType:perception_interface_msgs/Point3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" "perception_interface_msgs/Point3f:perception_interface_msgs/Polygon3f"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" "worldmodel_msgs/WayPointType"
)

get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_custom_target(_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "worldmodel_msgs" "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_cpp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(worldmodel_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(worldmodel_msgs_generate_messages worldmodel_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_cpp _worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(worldmodel_msgs_gencpp)
add_dependencies(worldmodel_msgs_gencpp worldmodel_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS worldmodel_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_eus(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(worldmodel_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(worldmodel_msgs_generate_messages worldmodel_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_eus _worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(worldmodel_msgs_geneus)
add_dependencies(worldmodel_msgs_geneus worldmodel_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS worldmodel_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_lisp(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(worldmodel_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(worldmodel_msgs_generate_messages worldmodel_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_lisp _worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(worldmodel_msgs_genlisp)
add_dependencies(worldmodel_msgs_genlisp worldmodel_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS worldmodel_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_nodejs(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(worldmodel_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(worldmodel_msgs_generate_messages worldmodel_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_nodejs _worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(worldmodel_msgs_gennodejs)
add_dependencies(worldmodel_msgs_gennodejs worldmodel_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS worldmodel_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBeamLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUAniSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionFusionObjectData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierEgoLaneRelationInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleCutinStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Shape3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/GeneralObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypeInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUPedSubTypeEnum.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/AvoidObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionSceneTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleEgoLaneRelationEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficBarrierUsefulEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUSubTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VRUTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/BarrierStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBrakeLightEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleBlinkLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleTailLightInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/VehicleDoorStateInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Vector3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ObjectTypePropertyEnum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotPointTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionSpecialParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/FusionParkingSlotData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/ParkingSlotVirtualPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/PerceptionObjectTypeEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/TrafficLightPatternEnum.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point2d.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Point3f.msg;/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/perception_interface_msgs/msg/Polygon3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg"
  "${MSG_I_FLAGS}"
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)
_generate_msg_py(worldmodel_msgs
  "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(worldmodel_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(worldmodel_msgs_generate_messages worldmodel_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/APAInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Direction.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ExtraInfo.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPA.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/FusionAPAMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntentionType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/IntersectionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Interval.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundary.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryColor.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryForm.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryPolyline.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundarySegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneBoundaryWidth.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneChangeState.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneConnectDirection.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneMergingSplittingPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategy.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneStrategyData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LaneType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LateralIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LeftWaitingArea.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/LongitudinalIntention.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIInfoData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapPOIType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLight.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MapTrafficLightGroup.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Matrix2f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/MergeType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectPredictionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectWorldModelData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterface.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ObjectsInterfaceMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingOutPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingSlotFusionAPAData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ParkingTargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/Polyline3f.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResult.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionResultMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectory.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMap.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ProcessedMapMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RampManeuver.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLinePoint.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ReferenceLineSegment.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadEdge.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriority.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/RoadPriorityType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneCircleObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjects.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SceneObjectsMeta.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/ScenePolygonObject.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/SelfPositionData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetMapPOI.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TargetPosition.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/TraversedParkingLot.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointData.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/carla/carla_project/carla-ros-bridge/catkin_ws/src/ros-bridge/momenta_rosmsgs/momenta_rosmsgs/worldmodel_msgs/msg/WayPointType.msg" NAME_WE)
add_dependencies(worldmodel_msgs_generate_messages_py _worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(worldmodel_msgs_genpy)
add_dependencies(worldmodel_msgs_genpy worldmodel_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS worldmodel_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/worldmodel_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_cpp)
  add_dependencies(worldmodel_msgs_generate_messages_cpp perception_interface_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(worldmodel_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/worldmodel_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_eus)
  add_dependencies(worldmodel_msgs_generate_messages_eus perception_interface_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(worldmodel_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/worldmodel_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_lisp)
  add_dependencies(worldmodel_msgs_generate_messages_lisp perception_interface_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(worldmodel_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/worldmodel_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_nodejs)
  add_dependencies(worldmodel_msgs_generate_messages_nodejs perception_interface_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(worldmodel_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/worldmodel_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET perception_interface_msgs_generate_messages_py)
  add_dependencies(worldmodel_msgs_generate_messages_py perception_interface_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(worldmodel_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()

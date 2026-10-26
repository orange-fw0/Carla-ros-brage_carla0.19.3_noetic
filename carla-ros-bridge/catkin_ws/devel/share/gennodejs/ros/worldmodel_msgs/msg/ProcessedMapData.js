// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TargetPosition = require('./TargetPosition.js');
let SelfPositionData = require('./SelfPositionData.js');
let WayPointData = require('./WayPointData.js');
let LaneData = require('./LaneData.js');
let MapPOIInfoData = require('./MapPOIInfoData.js');
let IntersectionData = require('./IntersectionData.js');
let LaneMergingSplittingPointData = require('./LaneMergingSplittingPointData.js');
let LaneStrategyData = require('./LaneStrategyData.js');
let ExtraInfo = require('./ExtraInfo.js');

//-----------------------------------------------------------

class ProcessedMapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.target_position = null;
      this.self_position = null;
      this.way_point_position = null;
      this.lanes = null;
      this.map_poi_info = null;
      this.intersections = null;
      this.lane_merging_splitting_points = null;
      this.lane_strategy = null;
      this.extra_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = new TargetPosition();
      }
      if (initObj.hasOwnProperty('self_position')) {
        this.self_position = initObj.self_position
      }
      else {
        this.self_position = new SelfPositionData();
      }
      if (initObj.hasOwnProperty('way_point_position')) {
        this.way_point_position = initObj.way_point_position
      }
      else {
        this.way_point_position = new WayPointData();
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
      if (initObj.hasOwnProperty('map_poi_info')) {
        this.map_poi_info = initObj.map_poi_info
      }
      else {
        this.map_poi_info = [];
      }
      if (initObj.hasOwnProperty('intersections')) {
        this.intersections = initObj.intersections
      }
      else {
        this.intersections = [];
      }
      if (initObj.hasOwnProperty('lane_merging_splitting_points')) {
        this.lane_merging_splitting_points = initObj.lane_merging_splitting_points
      }
      else {
        this.lane_merging_splitting_points = [];
      }
      if (initObj.hasOwnProperty('lane_strategy')) {
        this.lane_strategy = initObj.lane_strategy
      }
      else {
        this.lane_strategy = new LaneStrategyData();
      }
      if (initObj.hasOwnProperty('extra_info')) {
        this.extra_info = initObj.extra_info
      }
      else {
        this.extra_info = new ExtraInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessedMapData
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = TargetPosition.serialize(obj.target_position, buffer, bufferOffset);
    // Serialize message field [self_position]
    bufferOffset = SelfPositionData.serialize(obj.self_position, buffer, bufferOffset);
    // Serialize message field [way_point_position]
    bufferOffset = WayPointData.serialize(obj.way_point_position, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = LaneData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [map_poi_info]
    // Serialize the length for message field [map_poi_info]
    bufferOffset = _serializer.uint32(obj.map_poi_info.length, buffer, bufferOffset);
    obj.map_poi_info.forEach((val) => {
      bufferOffset = MapPOIInfoData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [intersections]
    // Serialize the length for message field [intersections]
    bufferOffset = _serializer.uint32(obj.intersections.length, buffer, bufferOffset);
    obj.intersections.forEach((val) => {
      bufferOffset = IntersectionData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_merging_splitting_points]
    // Serialize the length for message field [lane_merging_splitting_points]
    bufferOffset = _serializer.uint32(obj.lane_merging_splitting_points.length, buffer, bufferOffset);
    obj.lane_merging_splitting_points.forEach((val) => {
      bufferOffset = LaneMergingSplittingPointData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_strategy]
    bufferOffset = LaneStrategyData.serialize(obj.lane_strategy, buffer, bufferOffset);
    // Serialize message field [extra_info]
    bufferOffset = ExtraInfo.serialize(obj.extra_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessedMapData
    let len;
    let data = new ProcessedMapData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = TargetPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [self_position]
    data.self_position = SelfPositionData.deserialize(buffer, bufferOffset);
    // Deserialize message field [way_point_position]
    data.way_point_position = WayPointData.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = LaneData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [map_poi_info]
    // Deserialize array length for message field [map_poi_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_poi_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_poi_info[i] = MapPOIInfoData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intersections]
    // Deserialize array length for message field [intersections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intersections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intersections[i] = IntersectionData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_merging_splitting_points]
    // Deserialize array length for message field [lane_merging_splitting_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_merging_splitting_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_merging_splitting_points[i] = LaneMergingSplittingPointData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_strategy]
    data.lane_strategy = LaneStrategyData.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra_info]
    data.extra_info = ExtraInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TargetPosition.getMessageSize(object.target_position);
    object.lanes.forEach((val) => {
      length += LaneData.getMessageSize(val);
    });
    object.map_poi_info.forEach((val) => {
      length += MapPOIInfoData.getMessageSize(val);
    });
    object.intersections.forEach((val) => {
      length += IntersectionData.getMessageSize(val);
    });
    length += 19 * object.lane_merging_splitting_points.length;
    length += LaneStrategyData.getMessageSize(object.lane_strategy);
    length += ExtraInfo.getMessageSize(object.extra_info);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ProcessedMapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b526aa746d7da49fb0fef6e7e17a6d7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 TARGET_POTISION = 1
    uint16 SELF_POSITION = 2
    uint16 WAYPOINT_POSITION = 4
    uint16 LANE = 8
    uint16 MAP_POI_INFO = 16
    uint16 INTERSECTION = 32
    uint16 LANE_MERGING_SPLITTING_POINT = 64
    uint16 LANE_STRATEGY = 128
    uint16 EXTRA_INFO = 256
    uint16 available
    worldmodel_msgs/TargetPosition target_position
    worldmodel_msgs/SelfPositionData self_position
    worldmodel_msgs/WayPointData way_point_position
    worldmodel_msgs/LaneData[] lanes
    worldmodel_msgs/MapPOIInfoData[] map_poi_info
    worldmodel_msgs/IntersectionData[] intersections
    worldmodel_msgs/LaneMergingSplittingPointData[] lane_merging_splitting_points
    worldmodel_msgs/LaneStrategyData lane_strategy
    worldmodel_msgs/ExtraInfo extra_info
    
    ================================================================================
    MSG: worldmodel_msgs/TargetPosition
    uint8 PARKING_TARGET_POSITION = 1
    uint8 available
    worldmodel_msgs/ParkingTargetPosition parking_target_position
    
    ================================================================================
    MSG: worldmodel_msgs/ParkingTargetPosition
    uint64 TARGET_MAP_POI = 1
    uint64 TRAVERSED_PARKING_LOTS = 2
    uint64 PARKING_OUT_POSITION = 4
    uint64 available
    worldmodel_msgs/TargetMapPOI target_map_poi
    worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots
    worldmodel_msgs/ParkingOutPosition parking_out_position
    
    ================================================================================
    MSG: worldmodel_msgs/TargetMapPOI
    uint16 id
    worldmodel_msgs/MapPOIType type
    perception_interface_msgs/Polygon3f position
    float64 distance
    
    ================================================================================
    MSG: worldmodel_msgs/MapPOIType
    uint8 UNKNOWN = 0
    uint8 PARKING_LOT = 1
    uint8 HUMAN_ACCESS = 2
    uint8 DESTINATION = 3
    uint8 PARKING = 4
    uint8 BARRIER_GAP = 5
    uint8 FACILITY_ENTRANCE = 6
    uint8 FACILITY_EXIT = 7
    uint8 FACILITY_EXIT_AND_ENTRANCE = 8
    uint8 BUS_STOP = 9
    uint8 GARAGE_ENTRANCE = 10
    uint8 GARAGE_EXIT = 11
    uint8 SPEED_BUMP = 12
    uint8 CROSS_WALK = 13
    uint8 DASHED_SEGMENT = 14
    uint8 CENTRAL_CIRCLE = 15
    uint8 NO_PARKING_ZONE = 16
    uint8 ROAD_MERGE = 17
    uint8 ROAD_SPLIT = 18
    uint8 TUNNEL = 19
    uint8 TOLL_STATION = 20
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Polygon3f
    perception_interface_msgs/Point3f[] points
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: worldmodel_msgs/TraversedParkingLot
    uint16 parking_lot_id
    perception_interface_msgs/Polygon3f parking_lot_position
    perception_interface_msgs/Point3f parking_lot_center
    perception_interface_msgs/Point3f parking_lot_entrance_center
    float64 available_inner_width
    float64 available_outter_width
    uint16 next_parking_lot_id
    uint16 previous_parking_lot_id
    float64 left_extended_distance
    float64 right_extended_distance
    float64 score
    
    ================================================================================
    MSG: worldmodel_msgs/ParkingOutPosition
    uint16 source_parking_lot_id
    perception_interface_msgs/Polygon3f source_parking_lot_position
    perception_interface_msgs/Point3f target_position
    float64 target_heading_yaw
    
    ================================================================================
    MSG: worldmodel_msgs/SelfPositionData
    bool in_map_area
    bool in_intersection
    bool on_ramp
    int32 current_parking_slot_id
    
    ================================================================================
    MSG: worldmodel_msgs/WayPointData
    worldmodel_msgs/WayPointType way_point_type
    float64 longtitude
    float64 latitude
    float64 altitude
    
    ================================================================================
    MSG: worldmodel_msgs/WayPointType
    uint8 NORMAL_WAYPOINT = 1
    uint8 INTERSECTION_WAYPOINT = 2
    uint8 RAMP_WAYPOINT = 4
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneData
    int32 relative_id
    int32 track_id
    worldmodel_msgs/Direction lane_marks
    worldmodel_msgs/LaneType lane_type
    worldmodel_msgs/LaneBoundary left_lane_boundary
    worldmodel_msgs/LaneBoundary right_lane_boundary
    worldmodel_msgs/RoadEdge left_road_edge
    worldmodel_msgs/RoadEdge right_road_edge
    worldmodel_msgs/ReferenceLine reference_line
    float64 entrance_width
    worldmodel_msgs/RoadPriority road_priority
    worldmodel_msgs/MergePoint merge_point
    worldmodel_msgs/MergePoint y_point
    int8 bias
    
    ================================================================================
    MSG: worldmodel_msgs/Direction
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 4
    uint8 U_TURN_LEFT = 8
    uint8 U_TURN_RIGHT = 16
    uint8 OFF_ROUTE = 32
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneType
    uint8 UNKNOWN = 0
    uint8 NORMAL = 1
    uint8 VIRTUAL = 2
    uint8 PARKING = 3
    uint8 ACCELERATE = 4
    uint8 DECELERATE = 5
    uint8 BUS = 6
    uint8 EMERGENCY = 7
    uint8 ACCELERATE_DECELERATE = 8
    uint8 LEFT_TURN_WAITTING_AREA = 9
    uint8 NON_MOTOR = 10
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundary
    bool existence
    worldmodel_msgs/LaneBoundarySegment[] segments
    worldmodel_msgs/LaneBoundaryPolyline polyline
    perception_interface_msgs/Point3f[] points
    string reserved
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundarySegment
    float64 length
    worldmodel_msgs/LaneBoundaryType type
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryType
    worldmodel_msgs/LaneBoundaryForm value
    worldmodel_msgs/LaneBoundaryColor color
    worldmodel_msgs/LaneBoundaryWidth width
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryForm
    uint8 UNKNOWN = 0
    uint8 SOLID = 1
    uint8 DASH = 2
    uint8 VIRTUAL = 3
    uint8 PHYSICAL = 4
    uint8 DOUBLE_SOLID = 5
    uint8 DASH_SOLID = 6
    uint8 SOLID_DASH = 7
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryColor
    uint8 WHITE = 0
    uint8 YELLOW = 1
    uint8 OTHER = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryWidth
    uint8 THIN = 0
    uint8 THICK = 1
    uint8 UNKNOWN = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryPolyline
    uint64 track_id
    float64[] poly_coefficient
    worldmodel_msgs/Interval available_interval
    
    ================================================================================
    MSG: worldmodel_msgs/Interval
    float64 begin
    float64 end
    
    ================================================================================
    MSG: worldmodel_msgs/RoadEdge
    bool existence
    perception_interface_msgs/Point3f[] points
    uint8 type
    string reserved
    
    ================================================================================
    MSG: worldmodel_msgs/ReferenceLine
    bool available
    worldmodel_msgs/ReferenceLinePoint[] reference_line_points
    worldmodel_msgs/ReferenceLineSegment[] reference_line_segments
    
    ================================================================================
    MSG: worldmodel_msgs/ReferenceLinePoint
    perception_interface_msgs/Point3d enu_point
    float32 curvature
    float32 distance_to_left_road_border
    float32 distance_to_right_road_border
    float32 distance_to_left_lane_border
    float32 distance_to_right_lane_border
    float32 distance_to_left_obstacle
    float32 distance_to_right_obstacle
    float32 lane_width
    int32 max_velocity
    uint64 track_id
    bool is_experience_data
    worldmodel_msgs/LaneBoundaryType left_road_border_type
    worldmodel_msgs/LaneBoundaryType right_road_border_type
    bool on_route
    float64 longitudinal_slope
    float64 horizontal_slope
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: worldmodel_msgs/ReferenceLineSegment
    uint16 begin_index
    uint16 end_index
    worldmodel_msgs/LaneConnectDirection direction
    worldmodel_msgs/LaneType lane_type
    bool is_in_intersection
    bool is_in_route
    
    ================================================================================
    MSG: worldmodel_msgs/LaneConnectDirection
    uint8 NORMAL = 0
    uint8 SPLIT_TO_LEFT = 1
    uint8 SPLIT_TO_RIGHT = 2
    uint8 MERGE_FROM_LEFT = 3
    uint8 MERGE_FROM_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/RoadPriority
    worldmodel_msgs/RoadPriorityType road_priority_type
    float64 distance
    float64 length
    
    ================================================================================
    MSG: worldmodel_msgs/RoadPriorityType
    uint16 UNKNOWN = 0
    uint16 PRIORITY_ROAD = 1
    uint16 PRIORITY_ROAD_END = 2
    uint16 PRIORITY_AUXILIARY = 4
    uint16 PRIORITY_NEXT_INTERSECTION = 8
    uint16 STOP = 16
    uint16 YIELD = 32
    uint16 PRIORITY_OVER_ONGOING = 64
    uint16 YIELD_TO_ONCOMING = 128
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/MergePoint
    float64 distance
    worldmodel_msgs/MergeType type
    
    ================================================================================
    MSG: worldmodel_msgs/MergeType
    uint8 UNKNOWN = 0
    uint8 UNRELATED = 1
    uint8 FROM_RIGHT = 2
    uint8 FROM_LEFT = 3
    uint8 FROM_BOTH = 4
    uint8 LANE_END = 5
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/MapPOIInfoData
    float64 distance
    float64 length
    worldmodel_msgs/MapPOIType type
    perception_interface_msgs/Point3f[] key_points_enu
    
    ================================================================================
    MSG: worldmodel_msgs/IntersectionData
    worldmodel_msgs/Direction direction
    float64 length
    worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups
    worldmodel_msgs/LeftWaitingArea left_waiting_area
    worldmodel_msgs/StopLine distance_to_stop_line
    worldmodel_msgs/LaneData[] lanes_out
    
    ================================================================================
    MSG: worldmodel_msgs/MapTrafficLightGroup
    uint64 track_id
    worldmodel_msgs/MapTrafficLight[] traffic_lights
    
    ================================================================================
    MSG: worldmodel_msgs/MapTrafficLight
    perception_interface_msgs/Point3d[] boundary
    perception_interface_msgs/TrafficLightPatternEnum pattern
    bool on_route
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LeftWaitingArea
    bool existence
    float64 length
    float64 distance
    
    ================================================================================
    MSG: worldmodel_msgs/StopLine
    float64 distance_to_stop_line
    float64 distance_buffer
    
    ================================================================================
    MSG: worldmodel_msgs/LaneMergingSplittingPointData
    float64 distance
    bool is_split
    bool is_continue
    worldmodel_msgs/Orientation orientation
    float64 length
    
    ================================================================================
    MSG: worldmodel_msgs/Orientation
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 INTERSECT = 3
    uint8 IGNORED = 4
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneStrategyData
    worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane
    worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane
    worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane
    worldmodel_msgs/Interval[] current_lane_change_available_interval
    worldmodel_msgs/Interval[] left_lane_change_available_interval
    worldmodel_msgs/Interval[] right_lane_change_available_interval
    
    ================================================================================
    MSG: worldmodel_msgs/LaneChangeState
    uint8 FOLLOW = 0
    uint8 TURN_LEFT = 1
    uint8 TURN_RIGHT = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/ExtraInfo
    uint8 RAMP_MANEUVER = 1
    uint8 SCENE_TYPE = 2
    uint8 RESERVED_INFO = 4
    uint8 available
    worldmodel_msgs/RampManeuver ramp_maneuver
    string scene_type
    string reserved_info
    
    ================================================================================
    MSG: worldmodel_msgs/RampManeuver
    float32 dis_to_ramp
    float32 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessedMapData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = TargetPosition.Resolve(msg.target_position)
    }
    else {
      resolved.target_position = new TargetPosition()
    }

    if (msg.self_position !== undefined) {
      resolved.self_position = SelfPositionData.Resolve(msg.self_position)
    }
    else {
      resolved.self_position = new SelfPositionData()
    }

    if (msg.way_point_position !== undefined) {
      resolved.way_point_position = WayPointData.Resolve(msg.way_point_position)
    }
    else {
      resolved.way_point_position = new WayPointData()
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = LaneData.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    if (msg.map_poi_info !== undefined) {
      resolved.map_poi_info = new Array(msg.map_poi_info.length);
      for (let i = 0; i < resolved.map_poi_info.length; ++i) {
        resolved.map_poi_info[i] = MapPOIInfoData.Resolve(msg.map_poi_info[i]);
      }
    }
    else {
      resolved.map_poi_info = []
    }

    if (msg.intersections !== undefined) {
      resolved.intersections = new Array(msg.intersections.length);
      for (let i = 0; i < resolved.intersections.length; ++i) {
        resolved.intersections[i] = IntersectionData.Resolve(msg.intersections[i]);
      }
    }
    else {
      resolved.intersections = []
    }

    if (msg.lane_merging_splitting_points !== undefined) {
      resolved.lane_merging_splitting_points = new Array(msg.lane_merging_splitting_points.length);
      for (let i = 0; i < resolved.lane_merging_splitting_points.length; ++i) {
        resolved.lane_merging_splitting_points[i] = LaneMergingSplittingPointData.Resolve(msg.lane_merging_splitting_points[i]);
      }
    }
    else {
      resolved.lane_merging_splitting_points = []
    }

    if (msg.lane_strategy !== undefined) {
      resolved.lane_strategy = LaneStrategyData.Resolve(msg.lane_strategy)
    }
    else {
      resolved.lane_strategy = new LaneStrategyData()
    }

    if (msg.extra_info !== undefined) {
      resolved.extra_info = ExtraInfo.Resolve(msg.extra_info)
    }
    else {
      resolved.extra_info = new ExtraInfo()
    }

    return resolved;
    }
};

// Constants for message
ProcessedMapData.Constants = {
  TARGET_POTISION: 1,
  SELF_POSITION: 2,
  WAYPOINT_POSITION: 4,
  LANE: 8,
  MAP_POI_INFO: 16,
  INTERSECTION: 32,
  LANE_MERGING_SPLITTING_POINT: 64,
  LANE_STRATEGY: 128,
  EXTRA_INFO: 256,
}

module.exports = ProcessedMapData;

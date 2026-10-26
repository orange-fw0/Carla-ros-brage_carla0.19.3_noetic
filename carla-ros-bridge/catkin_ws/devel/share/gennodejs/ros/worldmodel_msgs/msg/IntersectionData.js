// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Direction = require('./Direction.js');
let MapTrafficLightGroup = require('./MapTrafficLightGroup.js');
let LeftWaitingArea = require('./LeftWaitingArea.js');
let StopLine = require('./StopLine.js');
let LaneData = require('./LaneData.js');

//-----------------------------------------------------------

class IntersectionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.length = null;
      this.traffic_light_groups = null;
      this.left_waiting_area = null;
      this.distance_to_stop_line = null;
      this.lanes_out = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new Direction();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('traffic_light_groups')) {
        this.traffic_light_groups = initObj.traffic_light_groups
      }
      else {
        this.traffic_light_groups = [];
      }
      if (initObj.hasOwnProperty('left_waiting_area')) {
        this.left_waiting_area = initObj.left_waiting_area
      }
      else {
        this.left_waiting_area = new LeftWaitingArea();
      }
      if (initObj.hasOwnProperty('distance_to_stop_line')) {
        this.distance_to_stop_line = initObj.distance_to_stop_line
      }
      else {
        this.distance_to_stop_line = new StopLine();
      }
      if (initObj.hasOwnProperty('lanes_out')) {
        this.lanes_out = initObj.lanes_out
      }
      else {
        this.lanes_out = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionData
    // Serialize message field [direction]
    bufferOffset = Direction.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [traffic_light_groups]
    // Serialize the length for message field [traffic_light_groups]
    bufferOffset = _serializer.uint32(obj.traffic_light_groups.length, buffer, bufferOffset);
    obj.traffic_light_groups.forEach((val) => {
      bufferOffset = MapTrafficLightGroup.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_waiting_area]
    bufferOffset = LeftWaitingArea.serialize(obj.left_waiting_area, buffer, bufferOffset);
    // Serialize message field [distance_to_stop_line]
    bufferOffset = StopLine.serialize(obj.distance_to_stop_line, buffer, bufferOffset);
    // Serialize message field [lanes_out]
    // Serialize the length for message field [lanes_out]
    bufferOffset = _serializer.uint32(obj.lanes_out.length, buffer, bufferOffset);
    obj.lanes_out.forEach((val) => {
      bufferOffset = LaneData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionData
    let len;
    let data = new IntersectionData(null);
    // Deserialize message field [direction]
    data.direction = Direction.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [traffic_light_groups]
    // Deserialize array length for message field [traffic_light_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_groups[i] = MapTrafficLightGroup.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_waiting_area]
    data.left_waiting_area = LeftWaitingArea.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_to_stop_line]
    data.distance_to_stop_line = StopLine.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes_out]
    // Deserialize array length for message field [lanes_out]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes_out = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes_out[i] = LaneData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.traffic_light_groups.forEach((val) => {
      length += MapTrafficLightGroup.getMessageSize(val);
    });
    object.lanes_out.forEach((val) => {
      length += LaneData.getMessageSize(val);
    });
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/IntersectionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '291e7b30c09610719ec5d17d51d893c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    worldmodel_msgs/Direction direction
    float64 length
    worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups
    worldmodel_msgs/LeftWaitingArea left_waiting_area
    worldmodel_msgs/StopLine distance_to_stop_line
    worldmodel_msgs/LaneData[] lanes_out
    
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
    MSG: worldmodel_msgs/MapTrafficLightGroup
    uint64 track_id
    worldmodel_msgs/MapTrafficLight[] traffic_lights
    
    ================================================================================
    MSG: worldmodel_msgs/MapTrafficLight
    perception_interface_msgs/Point3d[] boundary
    perception_interface_msgs/TrafficLightPatternEnum pattern
    bool on_route
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
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
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionData(null);
    if (msg.direction !== undefined) {
      resolved.direction = Direction.Resolve(msg.direction)
    }
    else {
      resolved.direction = new Direction()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.traffic_light_groups !== undefined) {
      resolved.traffic_light_groups = new Array(msg.traffic_light_groups.length);
      for (let i = 0; i < resolved.traffic_light_groups.length; ++i) {
        resolved.traffic_light_groups[i] = MapTrafficLightGroup.Resolve(msg.traffic_light_groups[i]);
      }
    }
    else {
      resolved.traffic_light_groups = []
    }

    if (msg.left_waiting_area !== undefined) {
      resolved.left_waiting_area = LeftWaitingArea.Resolve(msg.left_waiting_area)
    }
    else {
      resolved.left_waiting_area = new LeftWaitingArea()
    }

    if (msg.distance_to_stop_line !== undefined) {
      resolved.distance_to_stop_line = StopLine.Resolve(msg.distance_to_stop_line)
    }
    else {
      resolved.distance_to_stop_line = new StopLine()
    }

    if (msg.lanes_out !== undefined) {
      resolved.lanes_out = new Array(msg.lanes_out.length);
      for (let i = 0; i < resolved.lanes_out.length; ++i) {
        resolved.lanes_out[i] = LaneData.Resolve(msg.lanes_out[i]);
      }
    }
    else {
      resolved.lanes_out = []
    }

    return resolved;
    }
};

module.exports = IntersectionData;

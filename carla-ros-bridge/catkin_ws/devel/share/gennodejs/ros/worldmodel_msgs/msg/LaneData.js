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
let LaneType = require('./LaneType.js');
let LaneBoundary = require('./LaneBoundary.js');
let RoadEdge = require('./RoadEdge.js');
let ReferenceLine = require('./ReferenceLine.js');
let RoadPriority = require('./RoadPriority.js');
let MergePoint = require('./MergePoint.js');

//-----------------------------------------------------------

class LaneData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relative_id = null;
      this.track_id = null;
      this.lane_marks = null;
      this.lane_type = null;
      this.left_lane_boundary = null;
      this.right_lane_boundary = null;
      this.left_road_edge = null;
      this.right_road_edge = null;
      this.reference_line = null;
      this.entrance_width = null;
      this.road_priority = null;
      this.merge_point = null;
      this.y_point = null;
      this.bias = null;
    }
    else {
      if (initObj.hasOwnProperty('relative_id')) {
        this.relative_id = initObj.relative_id
      }
      else {
        this.relative_id = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('lane_marks')) {
        this.lane_marks = initObj.lane_marks
      }
      else {
        this.lane_marks = new Direction();
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = new LaneType();
      }
      if (initObj.hasOwnProperty('left_lane_boundary')) {
        this.left_lane_boundary = initObj.left_lane_boundary
      }
      else {
        this.left_lane_boundary = new LaneBoundary();
      }
      if (initObj.hasOwnProperty('right_lane_boundary')) {
        this.right_lane_boundary = initObj.right_lane_boundary
      }
      else {
        this.right_lane_boundary = new LaneBoundary();
      }
      if (initObj.hasOwnProperty('left_road_edge')) {
        this.left_road_edge = initObj.left_road_edge
      }
      else {
        this.left_road_edge = new RoadEdge();
      }
      if (initObj.hasOwnProperty('right_road_edge')) {
        this.right_road_edge = initObj.right_road_edge
      }
      else {
        this.right_road_edge = new RoadEdge();
      }
      if (initObj.hasOwnProperty('reference_line')) {
        this.reference_line = initObj.reference_line
      }
      else {
        this.reference_line = new ReferenceLine();
      }
      if (initObj.hasOwnProperty('entrance_width')) {
        this.entrance_width = initObj.entrance_width
      }
      else {
        this.entrance_width = 0.0;
      }
      if (initObj.hasOwnProperty('road_priority')) {
        this.road_priority = initObj.road_priority
      }
      else {
        this.road_priority = new RoadPriority();
      }
      if (initObj.hasOwnProperty('merge_point')) {
        this.merge_point = initObj.merge_point
      }
      else {
        this.merge_point = new MergePoint();
      }
      if (initObj.hasOwnProperty('y_point')) {
        this.y_point = initObj.y_point
      }
      else {
        this.y_point = new MergePoint();
      }
      if (initObj.hasOwnProperty('bias')) {
        this.bias = initObj.bias
      }
      else {
        this.bias = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneData
    // Serialize message field [relative_id]
    bufferOffset = _serializer.int32(obj.relative_id, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [lane_marks]
    bufferOffset = Direction.serialize(obj.lane_marks, buffer, bufferOffset);
    // Serialize message field [lane_type]
    bufferOffset = LaneType.serialize(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [left_lane_boundary]
    bufferOffset = LaneBoundary.serialize(obj.left_lane_boundary, buffer, bufferOffset);
    // Serialize message field [right_lane_boundary]
    bufferOffset = LaneBoundary.serialize(obj.right_lane_boundary, buffer, bufferOffset);
    // Serialize message field [left_road_edge]
    bufferOffset = RoadEdge.serialize(obj.left_road_edge, buffer, bufferOffset);
    // Serialize message field [right_road_edge]
    bufferOffset = RoadEdge.serialize(obj.right_road_edge, buffer, bufferOffset);
    // Serialize message field [reference_line]
    bufferOffset = ReferenceLine.serialize(obj.reference_line, buffer, bufferOffset);
    // Serialize message field [entrance_width]
    bufferOffset = _serializer.float64(obj.entrance_width, buffer, bufferOffset);
    // Serialize message field [road_priority]
    bufferOffset = RoadPriority.serialize(obj.road_priority, buffer, bufferOffset);
    // Serialize message field [merge_point]
    bufferOffset = MergePoint.serialize(obj.merge_point, buffer, bufferOffset);
    // Serialize message field [y_point]
    bufferOffset = MergePoint.serialize(obj.y_point, buffer, bufferOffset);
    // Serialize message field [bias]
    bufferOffset = _serializer.int8(obj.bias, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneData
    let len;
    let data = new LaneData(null);
    // Deserialize message field [relative_id]
    data.relative_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_marks]
    data.lane_marks = Direction.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_type]
    data.lane_type = LaneType.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_lane_boundary]
    data.left_lane_boundary = LaneBoundary.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_lane_boundary]
    data.right_lane_boundary = LaneBoundary.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_road_edge]
    data.left_road_edge = RoadEdge.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_road_edge]
    data.right_road_edge = RoadEdge.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_line]
    data.reference_line = ReferenceLine.deserialize(buffer, bufferOffset);
    // Deserialize message field [entrance_width]
    data.entrance_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [road_priority]
    data.road_priority = RoadPriority.deserialize(buffer, bufferOffset);
    // Deserialize message field [merge_point]
    data.merge_point = MergePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [y_point]
    data.y_point = MergePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias]
    data.bias = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LaneBoundary.getMessageSize(object.left_lane_boundary);
    length += LaneBoundary.getMessageSize(object.right_lane_boundary);
    length += RoadEdge.getMessageSize(object.left_road_edge);
    length += RoadEdge.getMessageSize(object.right_road_edge);
    length += ReferenceLine.getMessageSize(object.reference_line);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '104597adfcc42ee08489c0cc8b1d58c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneData(null);
    if (msg.relative_id !== undefined) {
      resolved.relative_id = msg.relative_id;
    }
    else {
      resolved.relative_id = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.lane_marks !== undefined) {
      resolved.lane_marks = Direction.Resolve(msg.lane_marks)
    }
    else {
      resolved.lane_marks = new Direction()
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = LaneType.Resolve(msg.lane_type)
    }
    else {
      resolved.lane_type = new LaneType()
    }

    if (msg.left_lane_boundary !== undefined) {
      resolved.left_lane_boundary = LaneBoundary.Resolve(msg.left_lane_boundary)
    }
    else {
      resolved.left_lane_boundary = new LaneBoundary()
    }

    if (msg.right_lane_boundary !== undefined) {
      resolved.right_lane_boundary = LaneBoundary.Resolve(msg.right_lane_boundary)
    }
    else {
      resolved.right_lane_boundary = new LaneBoundary()
    }

    if (msg.left_road_edge !== undefined) {
      resolved.left_road_edge = RoadEdge.Resolve(msg.left_road_edge)
    }
    else {
      resolved.left_road_edge = new RoadEdge()
    }

    if (msg.right_road_edge !== undefined) {
      resolved.right_road_edge = RoadEdge.Resolve(msg.right_road_edge)
    }
    else {
      resolved.right_road_edge = new RoadEdge()
    }

    if (msg.reference_line !== undefined) {
      resolved.reference_line = ReferenceLine.Resolve(msg.reference_line)
    }
    else {
      resolved.reference_line = new ReferenceLine()
    }

    if (msg.entrance_width !== undefined) {
      resolved.entrance_width = msg.entrance_width;
    }
    else {
      resolved.entrance_width = 0.0
    }

    if (msg.road_priority !== undefined) {
      resolved.road_priority = RoadPriority.Resolve(msg.road_priority)
    }
    else {
      resolved.road_priority = new RoadPriority()
    }

    if (msg.merge_point !== undefined) {
      resolved.merge_point = MergePoint.Resolve(msg.merge_point)
    }
    else {
      resolved.merge_point = new MergePoint()
    }

    if (msg.y_point !== undefined) {
      resolved.y_point = MergePoint.Resolve(msg.y_point)
    }
    else {
      resolved.y_point = new MergePoint()
    }

    if (msg.bias !== undefined) {
      resolved.bias = msg.bias;
    }
    else {
      resolved.bias = 0
    }

    return resolved;
    }
};

module.exports = LaneData;

// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferenceLinePoint = require('./ReferenceLinePoint.js');
let ReferenceLineSegment = require('./ReferenceLineSegment.js');

//-----------------------------------------------------------

class ReferenceLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.reference_line_points = null;
      this.reference_line_segments = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('reference_line_points')) {
        this.reference_line_points = initObj.reference_line_points
      }
      else {
        this.reference_line_points = [];
      }
      if (initObj.hasOwnProperty('reference_line_segments')) {
        this.reference_line_segments = initObj.reference_line_segments
      }
      else {
        this.reference_line_segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferenceLine
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [reference_line_points]
    // Serialize the length for message field [reference_line_points]
    bufferOffset = _serializer.uint32(obj.reference_line_points.length, buffer, bufferOffset);
    obj.reference_line_points.forEach((val) => {
      bufferOffset = ReferenceLinePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reference_line_segments]
    // Serialize the length for message field [reference_line_segments]
    bufferOffset = _serializer.uint32(obj.reference_line_segments.length, buffer, bufferOffset);
    obj.reference_line_segments.forEach((val) => {
      bufferOffset = ReferenceLineSegment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferenceLine
    let len;
    let data = new ReferenceLine(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reference_line_points]
    // Deserialize array length for message field [reference_line_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.reference_line_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reference_line_points[i] = ReferenceLinePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reference_line_segments]
    // Deserialize array length for message field [reference_line_segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.reference_line_segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reference_line_segments[i] = ReferenceLineSegment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 92 * object.reference_line_points.length;
    length += 8 * object.reference_line_segments.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ReferenceLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec5d181b9af178835368c07dec38068e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReferenceLine(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.reference_line_points !== undefined) {
      resolved.reference_line_points = new Array(msg.reference_line_points.length);
      for (let i = 0; i < resolved.reference_line_points.length; ++i) {
        resolved.reference_line_points[i] = ReferenceLinePoint.Resolve(msg.reference_line_points[i]);
      }
    }
    else {
      resolved.reference_line_points = []
    }

    if (msg.reference_line_segments !== undefined) {
      resolved.reference_line_segments = new Array(msg.reference_line_segments.length);
      for (let i = 0; i < resolved.reference_line_segments.length; ++i) {
        resolved.reference_line_segments[i] = ReferenceLineSegment.Resolve(msg.reference_line_segments[i]);
      }
    }
    else {
      resolved.reference_line_segments = []
    }

    return resolved;
    }
};

module.exports = ReferenceLine;

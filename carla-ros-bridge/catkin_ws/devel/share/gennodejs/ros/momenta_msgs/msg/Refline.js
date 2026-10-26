// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Segment = require('./Segment.js');
let RefLinePoint = require('./RefLinePoint.js');

//-----------------------------------------------------------

class Refline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segments = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Refline
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = Segment.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = RefLinePoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Refline
    let len;
    let data = new Refline(null);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = Segment.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = RefLinePoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 17 * object.segments.length;
    object.points.forEach((val) => {
      length += RefLinePoint.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Refline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1628fa29afb536fdfe69a9d590e417ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    momenta_msgs/Segment[] segments
    momenta_msgs/RefLinePoint[] points
    
    ================================================================================
    MSG: momenta_msgs/Segment
    uint16 begin_index
    uint16 end_index
    uint8 connection_type
    uint8 direction
    uint8 lane_type
    int64 lane_original_id
    bool is_in_intersection
    bool is_on_route
    
    ================================================================================
    MSG: momenta_msgs/RefLinePoint
    float64 x
    float64 y
    float64 z
    float64 curvature
    float64 yaw
    float64 left_road_border_distance
    float64 right_road_border_distance
    float64 left_lane_border_distance
    float64 right_lane_border_distance
    float64 left_obstacle_distance
    float64 right_obstacle_distance
    float64 lane_width
    float64 speed_limit
    string track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Refline(null);
    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = Segment.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = RefLinePoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = Refline;

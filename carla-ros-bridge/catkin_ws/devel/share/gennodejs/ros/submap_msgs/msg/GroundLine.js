// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GroundLineType = require('./GroundLineType.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GroundLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
      this.map_points = null;
      this.raw_points = null;
      this.id = null;
      this.type = null;
      this.score = null;
      this.slide_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('map_points')) {
        this.map_points = initObj.map_points
      }
      else {
        this.map_points = [];
      }
      if (initObj.hasOwnProperty('raw_points')) {
        this.raw_points = initObj.raw_points
      }
      else {
        this.raw_points = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new GroundLineType();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('slide_distance')) {
        this.slide_distance = initObj.slide_distance
      }
      else {
        this.slide_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GroundLine
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [map_points]
    // Serialize the length for message field [map_points]
    bufferOffset = _serializer.uint32(obj.map_points.length, buffer, bufferOffset);
    obj.map_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [raw_points]
    // Serialize the length for message field [raw_points]
    bufferOffset = _serializer.uint32(obj.raw_points.length, buffer, bufferOffset);
    obj.raw_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = GroundLineType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [slide_distance]
    bufferOffset = _serializer.float32(obj.slide_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GroundLine
    let len;
    let data = new GroundLine(null);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_points]
    // Deserialize array length for message field [map_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [raw_points]
    // Deserialize array length for message field [raw_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.raw_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.raw_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = GroundLineType.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slide_distance]
    data.slide_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.map_points.length;
    length += 24 * object.raw_points.length;
    return length + 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/GroundLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77d899539297858d39b0f3e9ac37f606';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point start
    geometry_msgs/Point end
    geometry_msgs/Point[] map_points
    geometry_msgs/Point[] raw_points
    uint32 id
    submap_msgs/GroundLineType type
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: submap_msgs/GroundLineType
    uint8 UNKNOWN = 0
    uint8 WALL = 1
    uint8 PILLAR = 2
    uint8 FENCE = 3
    uint8 STEP = 4
    uint8 SPECIAL = 5
    uint8 PARKING_GATE = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GroundLine(null);
    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Point.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Point()
    }

    if (msg.end !== undefined) {
      resolved.end = geometry_msgs.msg.Point.Resolve(msg.end)
    }
    else {
      resolved.end = new geometry_msgs.msg.Point()
    }

    if (msg.map_points !== undefined) {
      resolved.map_points = new Array(msg.map_points.length);
      for (let i = 0; i < resolved.map_points.length; ++i) {
        resolved.map_points[i] = geometry_msgs.msg.Point.Resolve(msg.map_points[i]);
      }
    }
    else {
      resolved.map_points = []
    }

    if (msg.raw_points !== undefined) {
      resolved.raw_points = new Array(msg.raw_points.length);
      for (let i = 0; i < resolved.raw_points.length; ++i) {
        resolved.raw_points[i] = geometry_msgs.msg.Point.Resolve(msg.raw_points[i]);
      }
    }
    else {
      resolved.raw_points = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = GroundLineType.Resolve(msg.type)
    }
    else {
      resolved.type = new GroundLineType()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.slide_distance !== undefined) {
      resolved.slide_distance = msg.slide_distance;
    }
    else {
      resolved.slide_distance = 0.0
    }

    return resolved;
    }
};

module.exports = GroundLine;

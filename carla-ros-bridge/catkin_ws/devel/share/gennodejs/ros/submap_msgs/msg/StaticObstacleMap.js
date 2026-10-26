// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GroundLine = require('./GroundLine.js');
let Pillar = require('./Pillar.js');

//-----------------------------------------------------------

class StaticObstacleMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ground_lines = null;
      this.pillars = null;
    }
    else {
      if (initObj.hasOwnProperty('ground_lines')) {
        this.ground_lines = initObj.ground_lines
      }
      else {
        this.ground_lines = [];
      }
      if (initObj.hasOwnProperty('pillars')) {
        this.pillars = initObj.pillars
      }
      else {
        this.pillars = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StaticObstacleMap
    // Serialize message field [ground_lines]
    // Serialize the length for message field [ground_lines]
    bufferOffset = _serializer.uint32(obj.ground_lines.length, buffer, bufferOffset);
    obj.ground_lines.forEach((val) => {
      bufferOffset = GroundLine.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pillars]
    // Serialize the length for message field [pillars]
    bufferOffset = _serializer.uint32(obj.pillars.length, buffer, bufferOffset);
    obj.pillars.forEach((val) => {
      bufferOffset = Pillar.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaticObstacleMap
    let len;
    let data = new StaticObstacleMap(null);
    // Deserialize message field [ground_lines]
    // Deserialize array length for message field [ground_lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ground_lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ground_lines[i] = GroundLine.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pillars]
    // Deserialize array length for message field [pillars]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pillars = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pillars[i] = Pillar.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ground_lines.forEach((val) => {
      length += GroundLine.getMessageSize(val);
    });
    object.pillars.forEach((val) => {
      length += Pillar.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/StaticObstacleMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b289da5312194eecff20112a751514d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/GroundLine[] ground_lines
    submap_msgs/Pillar[] pillars
    
    ================================================================================
    MSG: submap_msgs/GroundLine
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
    
    ================================================================================
    MSG: submap_msgs/Pillar
    geometry_msgs/Point center
    geometry_msgs/Point center_local
    geometry_msgs/Point[] edge_points
    geometry_msgs/Point[] edge_points_local
    uint32 id
    uint32 point_number
    float32 score
    float32 slide_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StaticObstacleMap(null);
    if (msg.ground_lines !== undefined) {
      resolved.ground_lines = new Array(msg.ground_lines.length);
      for (let i = 0; i < resolved.ground_lines.length; ++i) {
        resolved.ground_lines[i] = GroundLine.Resolve(msg.ground_lines[i]);
      }
    }
    else {
      resolved.ground_lines = []
    }

    if (msg.pillars !== undefined) {
      resolved.pillars = new Array(msg.pillars.length);
      for (let i = 0; i < resolved.pillars.length; ++i) {
        resolved.pillars[i] = Pillar.Resolve(msg.pillars[i]);
      }
    }
    else {
      resolved.pillars = []
    }

    return resolved;
    }
};

module.exports = StaticObstacleMap;

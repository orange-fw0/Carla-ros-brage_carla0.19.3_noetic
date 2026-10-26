// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadmarkType = require('./RoadmarkType.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RoadmarkLayer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.points = null;
      this.points_local = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoadmarkType();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('points_local')) {
        this.points_local = initObj.points_local
      }
      else {
        this.points_local = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadmarkLayer
    // Serialize message field [type]
    bufferOffset = RoadmarkType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_local]
    // Serialize the length for message field [points_local]
    bufferOffset = _serializer.uint32(obj.points_local.length, buffer, bufferOffset);
    obj.points_local.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadmarkLayer
    let len;
    let data = new RoadmarkLayer(null);
    // Deserialize message field [type]
    data.type = RoadmarkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_local]
    // Deserialize array length for message field [points_local]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_local = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_local[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += 24 * object.points_local.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/RoadmarkLayer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd028498cfcba48291666c2f426c62e64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/RoadmarkType type
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/RoadmarkType
    uint8 NORMAL = 0
    uint8 ARROW = 1
    uint8 SPEED_BUMP = 2
    uint8 CROSS_WALK = 3
    uint8 STOP_LINE = 4
    uint8 value
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadmarkLayer(null);
    if (msg.type !== undefined) {
      resolved.type = RoadmarkType.Resolve(msg.type)
    }
    else {
      resolved.type = new RoadmarkType()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.points_local !== undefined) {
      resolved.points_local = new Array(msg.points_local.length);
      for (let i = 0; i < resolved.points_local.length; ++i) {
        resolved.points_local[i] = geometry_msgs.msg.Point.Resolve(msg.points_local[i]);
      }
    }
    else {
      resolved.points_local = []
    }

    return resolved;
    }
};

module.exports = RoadmarkLayer;

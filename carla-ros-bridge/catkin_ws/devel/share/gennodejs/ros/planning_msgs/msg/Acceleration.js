// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AccelerationRange = require('./AccelerationRange.js');
let AccelerationPoint = require('./AccelerationPoint.js');

//-----------------------------------------------------------

class Acceleration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.range_limit = null;
      this.acc_points = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('range_limit')) {
        this.range_limit = initObj.range_limit
      }
      else {
        this.range_limit = new AccelerationRange();
      }
      if (initObj.hasOwnProperty('acc_points')) {
        this.acc_points = initObj.acc_points
      }
      else {
        this.acc_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Acceleration
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [range_limit]
    bufferOffset = AccelerationRange.serialize(obj.range_limit, buffer, bufferOffset);
    // Serialize message field [acc_points]
    // Serialize the length for message field [acc_points]
    bufferOffset = _serializer.uint32(obj.acc_points.length, buffer, bufferOffset);
    obj.acc_points.forEach((val) => {
      bufferOffset = AccelerationPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Acceleration
    let len;
    let data = new Acceleration(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [range_limit]
    data.range_limit = AccelerationRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_points]
    // Deserialize array length for message field [acc_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.acc_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.acc_points[i] = AccelerationPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.acc_points.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Acceleration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fa08f11b412938ffaeb5a5b0b8fa0a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RANGE_LIMIT = 1
    uint8 ACC_POINTS = 2
    uint8 available
    planning_msgs/AccelerationRange range_limit
    planning_msgs/AccelerationPoint[] acc_points
    
    ================================================================================
    MSG: planning_msgs/AccelerationRange
    float64 max
    float64 min
    
    ================================================================================
    MSG: planning_msgs/AccelerationPoint
    float64 acc
    float64 jerk
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Acceleration(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.range_limit !== undefined) {
      resolved.range_limit = AccelerationRange.Resolve(msg.range_limit)
    }
    else {
      resolved.range_limit = new AccelerationRange()
    }

    if (msg.acc_points !== undefined) {
      resolved.acc_points = new Array(msg.acc_points.length);
      for (let i = 0; i < resolved.acc_points.length; ++i) {
        resolved.acc_points[i] = AccelerationPoint.Resolve(msg.acc_points[i]);
      }
    }
    else {
      resolved.acc_points = []
    }

    return resolved;
    }
};

// Constants for message
Acceleration.Constants = {
  RANGE_LIMIT: 1,
  ACC_POINTS: 2,
}

module.exports = Acceleration;

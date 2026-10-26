// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AccelerationPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acc = null;
      this.jerk = null;
    }
    else {
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccelerationPoint
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = _serializer.float64(obj.jerk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccelerationPoint
    let len;
    let data = new AccelerationPoint(null);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/AccelerationPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a01ed4b9d22b73cecf21e3900cd9d044';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 acc
    float64 jerk
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccelerationPoint(null);
    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = msg.jerk;
    }
    else {
      resolved.jerk = 0.0
    }

    return resolved;
    }
};

module.exports = AccelerationPoint;

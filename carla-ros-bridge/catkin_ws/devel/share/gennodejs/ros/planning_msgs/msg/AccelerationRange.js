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

class AccelerationRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max = null;
      this.min = null;
    }
    else {
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0.0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccelerationRange
    // Serialize message field [max]
    bufferOffset = _serializer.float64(obj.max, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.float64(obj.min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccelerationRange
    let len;
    let data = new AccelerationRange(null);
    // Deserialize message field [max]
    data.max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/AccelerationRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1be1f057ba1e6e938ede7aada413094e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 max
    float64 min
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccelerationRange(null);
    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0.0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0.0
    }

    return resolved;
    }
};

module.exports = AccelerationRange;

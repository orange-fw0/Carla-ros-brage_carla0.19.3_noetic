// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Polyn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kc1 = null;
      this.kc2 = null;
      this.kc3 = null;
      this.kc4 = null;
    }
    else {
      if (initObj.hasOwnProperty('kc1')) {
        this.kc1 = initObj.kc1
      }
      else {
        this.kc1 = 0.0;
      }
      if (initObj.hasOwnProperty('kc2')) {
        this.kc2 = initObj.kc2
      }
      else {
        this.kc2 = 0.0;
      }
      if (initObj.hasOwnProperty('kc3')) {
        this.kc3 = initObj.kc3
      }
      else {
        this.kc3 = 0.0;
      }
      if (initObj.hasOwnProperty('kc4')) {
        this.kc4 = initObj.kc4
      }
      else {
        this.kc4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Polyn
    // Serialize message field [kc1]
    bufferOffset = _serializer.float64(obj.kc1, buffer, bufferOffset);
    // Serialize message field [kc2]
    bufferOffset = _serializer.float64(obj.kc2, buffer, bufferOffset);
    // Serialize message field [kc3]
    bufferOffset = _serializer.float64(obj.kc3, buffer, bufferOffset);
    // Serialize message field [kc4]
    bufferOffset = _serializer.float64(obj.kc4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Polyn
    let len;
    let data = new Polyn(null);
    // Deserialize message field [kc1]
    data.kc1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kc2]
    data.kc2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kc3]
    data.kc3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kc4]
    data.kc4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/Polyn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13c3613f258efaf8c7ba6935cbfeffb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 kc1
    float64 kc2
    float64 kc3
    float64 kc4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Polyn(null);
    if (msg.kc1 !== undefined) {
      resolved.kc1 = msg.kc1;
    }
    else {
      resolved.kc1 = 0.0
    }

    if (msg.kc2 !== undefined) {
      resolved.kc2 = msg.kc2;
    }
    else {
      resolved.kc2 = 0.0
    }

    if (msg.kc3 !== undefined) {
      resolved.kc3 = msg.kc3;
    }
    else {
      resolved.kc3 = 0.0
    }

    if (msg.kc4 !== undefined) {
      resolved.kc4 = msg.kc4;
    }
    else {
      resolved.kc4 = 0.0
    }

    return resolved;
    }
};

module.exports = Polyn;

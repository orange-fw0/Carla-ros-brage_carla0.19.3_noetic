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

class RadTan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.k1 = null;
      this.k2 = null;
      this.p1 = null;
      this.p2 = null;
      this.k3 = null;
      this.k4 = null;
      this.k5 = null;
      this.k6 = null;
    }
    else {
      if (initObj.hasOwnProperty('k1')) {
        this.k1 = initObj.k1
      }
      else {
        this.k1 = 0.0;
      }
      if (initObj.hasOwnProperty('k2')) {
        this.k2 = initObj.k2
      }
      else {
        this.k2 = 0.0;
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = 0.0;
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = 0.0;
      }
      if (initObj.hasOwnProperty('k3')) {
        this.k3 = initObj.k3
      }
      else {
        this.k3 = 0.0;
      }
      if (initObj.hasOwnProperty('k4')) {
        this.k4 = initObj.k4
      }
      else {
        this.k4 = 0.0;
      }
      if (initObj.hasOwnProperty('k5')) {
        this.k5 = initObj.k5
      }
      else {
        this.k5 = 0.0;
      }
      if (initObj.hasOwnProperty('k6')) {
        this.k6 = initObj.k6
      }
      else {
        this.k6 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadTan
    // Serialize message field [k1]
    bufferOffset = _serializer.float64(obj.k1, buffer, bufferOffset);
    // Serialize message field [k2]
    bufferOffset = _serializer.float64(obj.k2, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = _serializer.float64(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = _serializer.float64(obj.p2, buffer, bufferOffset);
    // Serialize message field [k3]
    bufferOffset = _serializer.float64(obj.k3, buffer, bufferOffset);
    // Serialize message field [k4]
    bufferOffset = _serializer.float64(obj.k4, buffer, bufferOffset);
    // Serialize message field [k5]
    bufferOffset = _serializer.float64(obj.k5, buffer, bufferOffset);
    // Serialize message field [k6]
    bufferOffset = _serializer.float64(obj.k6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadTan
    let len;
    let data = new RadTan(null);
    // Deserialize message field [k1]
    data.k1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k2]
    data.k2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k3]
    data.k3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k4]
    data.k4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k5]
    data.k5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k6]
    data.k6 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/RadTan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97065f83266d5b12980128559075014e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 k1
    float64 k2
    float64 p1
    float64 p2
    float64 k3
    float64 k4
    float64 k5
    float64 k6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadTan(null);
    if (msg.k1 !== undefined) {
      resolved.k1 = msg.k1;
    }
    else {
      resolved.k1 = 0.0
    }

    if (msg.k2 !== undefined) {
      resolved.k2 = msg.k2;
    }
    else {
      resolved.k2 = 0.0
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = msg.p1;
    }
    else {
      resolved.p1 = 0.0
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = msg.p2;
    }
    else {
      resolved.p2 = 0.0
    }

    if (msg.k3 !== undefined) {
      resolved.k3 = msg.k3;
    }
    else {
      resolved.k3 = 0.0
    }

    if (msg.k4 !== undefined) {
      resolved.k4 = msg.k4;
    }
    else {
      resolved.k4 = 0.0
    }

    if (msg.k5 !== undefined) {
      resolved.k5 = msg.k5;
    }
    else {
      resolved.k5 = 0.0
    }

    if (msg.k6 !== undefined) {
      resolved.k6 = msg.k6;
    }
    else {
      resolved.k6 = 0.0
    }

    return resolved;
    }
};

module.exports = RadTan;

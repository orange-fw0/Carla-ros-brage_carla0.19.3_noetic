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

class Curve {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polynomial = null;
      this.start_x = null;
      this.end_x = null;
    }
    else {
      if (initObj.hasOwnProperty('polynomial')) {
        this.polynomial = initObj.polynomial
      }
      else {
        this.polynomial = [];
      }
      if (initObj.hasOwnProperty('start_x')) {
        this.start_x = initObj.start_x
      }
      else {
        this.start_x = 0.0;
      }
      if (initObj.hasOwnProperty('end_x')) {
        this.end_x = initObj.end_x
      }
      else {
        this.end_x = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Curve
    // Serialize message field [polynomial]
    bufferOffset = _arraySerializer.float64(obj.polynomial, buffer, bufferOffset, null);
    // Serialize message field [start_x]
    bufferOffset = _serializer.float64(obj.start_x, buffer, bufferOffset);
    // Serialize message field [end_x]
    bufferOffset = _serializer.float64(obj.end_x, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Curve
    let len;
    let data = new Curve(null);
    // Deserialize message field [polynomial]
    data.polynomial = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [start_x]
    data.start_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_x]
    data.end_x = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.polynomial.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Curve';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7be1d35f078cd84c7b6565543f55ab98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] polynomial
    float64 start_x
    float64 end_x
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Curve(null);
    if (msg.polynomial !== undefined) {
      resolved.polynomial = msg.polynomial;
    }
    else {
      resolved.polynomial = []
    }

    if (msg.start_x !== undefined) {
      resolved.start_x = msg.start_x;
    }
    else {
      resolved.start_x = 0.0
    }

    if (msg.end_x !== undefined) {
      resolved.end_x = msg.end_x;
    }
    else {
      resolved.end_x = 0.0
    }

    return resolved;
    }
};

module.exports = Curve;

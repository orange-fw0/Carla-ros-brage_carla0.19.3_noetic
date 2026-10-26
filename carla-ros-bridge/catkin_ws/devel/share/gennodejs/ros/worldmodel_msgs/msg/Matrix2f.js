// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Matrix2f {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x00 = null;
      this.x01 = null;
      this.x10 = null;
      this.x11 = null;
    }
    else {
      if (initObj.hasOwnProperty('x00')) {
        this.x00 = initObj.x00
      }
      else {
        this.x00 = 0.0;
      }
      if (initObj.hasOwnProperty('x01')) {
        this.x01 = initObj.x01
      }
      else {
        this.x01 = 0.0;
      }
      if (initObj.hasOwnProperty('x10')) {
        this.x10 = initObj.x10
      }
      else {
        this.x10 = 0.0;
      }
      if (initObj.hasOwnProperty('x11')) {
        this.x11 = initObj.x11
      }
      else {
        this.x11 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Matrix2f
    // Serialize message field [x00]
    bufferOffset = _serializer.float32(obj.x00, buffer, bufferOffset);
    // Serialize message field [x01]
    bufferOffset = _serializer.float32(obj.x01, buffer, bufferOffset);
    // Serialize message field [x10]
    bufferOffset = _serializer.float32(obj.x10, buffer, bufferOffset);
    // Serialize message field [x11]
    bufferOffset = _serializer.float32(obj.x11, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Matrix2f
    let len;
    let data = new Matrix2f(null);
    // Deserialize message field [x00]
    data.x00 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x01]
    data.x01 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x10]
    data.x10 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x11]
    data.x11 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/Matrix2f';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11a08429dd19fa4ec764b532481b4084';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x00
    float32 x01
    float32 x10
    float32 x11
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Matrix2f(null);
    if (msg.x00 !== undefined) {
      resolved.x00 = msg.x00;
    }
    else {
      resolved.x00 = 0.0
    }

    if (msg.x01 !== undefined) {
      resolved.x01 = msg.x01;
    }
    else {
      resolved.x01 = 0.0
    }

    if (msg.x10 !== undefined) {
      resolved.x10 = msg.x10;
    }
    else {
      resolved.x10 = 0.0
    }

    if (msg.x11 !== undefined) {
      resolved.x11 = msg.x11;
    }
    else {
      resolved.x11 = 0.0
    }

    return resolved;
    }
};

module.exports = Matrix2f;

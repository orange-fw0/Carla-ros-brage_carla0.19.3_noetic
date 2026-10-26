// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NaviVelocityLimitInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.means = null;
      this.sigma = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('means')) {
        this.means = initObj.means
      }
      else {
        this.means = [];
      }
      if (initObj.hasOwnProperty('sigma')) {
        this.sigma = initObj.sigma
      }
      else {
        this.sigma = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviVelocityLimitInfo
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [means]
    bufferOffset = _arraySerializer.float32(obj.means, buffer, bufferOffset, null);
    // Serialize message field [sigma]
    bufferOffset = _arraySerializer.float32(obj.sigma, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviVelocityLimitInfo
    let len;
    let data = new NaviVelocityLimitInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [means]
    data.means = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sigma]
    data.sigma = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.means.length;
    length += 4 * object.sigma.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/NaviVelocityLimitInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3da0141f6070c936a51fad43abe456e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool available
    float32[] means
    float32[] sigma
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviVelocityLimitInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.means !== undefined) {
      resolved.means = msg.means;
    }
    else {
      resolved.means = []
    }

    if (msg.sigma !== undefined) {
      resolved.sigma = msg.sigma;
    }
    else {
      resolved.sigma = []
    }

    return resolved;
    }
};

module.exports = NaviVelocityLimitInfo;

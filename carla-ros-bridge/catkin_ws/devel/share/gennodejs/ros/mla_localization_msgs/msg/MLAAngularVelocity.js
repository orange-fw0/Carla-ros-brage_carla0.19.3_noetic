// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAAngVelLocal = require('./MLAAngVelLocal.js');

//-----------------------------------------------------------

class MLAAngularVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.angvelocity_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('angvelocity_local')) {
        this.angvelocity_local = initObj.angvelocity_local
      }
      else {
        this.angvelocity_local = new MLAAngVelLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAAngularVelocity
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [angvelocity_local]
    bufferOffset = MLAAngVelLocal.serialize(obj.angvelocity_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAAngularVelocity
    let len;
    let data = new MLAAngularVelocity(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angvelocity_local]
    data.angvelocity_local = MLAAngVelLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAAngularVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd220ef097e8f1e2a3db27ebde03a77c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_ANGVEL_LOCAL = 1
    uint8 available
    mla_localization_msgs/MLAAngVelLocal angvelocity_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngVelLocal
    float64 vx
    float64 vy
    float64 vz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAAngularVelocity(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.angvelocity_local !== undefined) {
      resolved.angvelocity_local = MLAAngVelLocal.Resolve(msg.angvelocity_local)
    }
    else {
      resolved.angvelocity_local = new MLAAngVelLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAAngularVelocity.Constants = {
  MLA_ANGVEL_LOCAL: 1,
}

module.exports = MLAAngularVelocity;

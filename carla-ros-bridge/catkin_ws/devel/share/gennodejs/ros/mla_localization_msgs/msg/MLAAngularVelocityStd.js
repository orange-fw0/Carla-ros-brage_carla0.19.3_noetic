// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAAngVelStdLocal = require('./MLAAngVelStdLocal.js');

//-----------------------------------------------------------

class MLAAngularVelocityStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.angvel_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('angvel_std_local')) {
        this.angvel_std_local = initObj.angvel_std_local
      }
      else {
        this.angvel_std_local = new MLAAngVelStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAAngularVelocityStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [angvel_std_local]
    bufferOffset = MLAAngVelStdLocal.serialize(obj.angvel_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAAngularVelocityStd
    let len;
    let data = new MLAAngularVelocityStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angvel_std_local]
    data.angvel_std_local = MLAAngVelStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAAngularVelocityStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e98641680d5dd0a3f87bb96c75d7f15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_ANGVEL_STD_LOCAL = 1
    uint8 available
    mla_localization_msgs/MLAAngVelStdLocal angvel_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAAngularVelocityStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.angvel_std_local !== undefined) {
      resolved.angvel_std_local = MLAAngVelStdLocal.Resolve(msg.angvel_std_local)
    }
    else {
      resolved.angvel_std_local = new MLAAngVelStdLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAAngularVelocityStd.Constants = {
  MLA_ANGVEL_STD_LOCAL: 1,
}

module.exports = MLAAngularVelocityStd;

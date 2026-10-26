// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAVelStdGlobal = require('./MLAVelStdGlobal.js');
let MLAVelStdLocal = require('./MLAVelStdLocal.js');

//-----------------------------------------------------------

class MLAVelocityStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vel_std_global = null;
      this.vel_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vel_std_global')) {
        this.vel_std_global = initObj.vel_std_global
      }
      else {
        this.vel_std_global = new MLAVelStdGlobal();
      }
      if (initObj.hasOwnProperty('vel_std_local')) {
        this.vel_std_local = initObj.vel_std_local
      }
      else {
        this.vel_std_local = new MLAVelStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAVelocityStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vel_std_global]
    bufferOffset = MLAVelStdGlobal.serialize(obj.vel_std_global, buffer, bufferOffset);
    // Serialize message field [vel_std_local]
    bufferOffset = MLAVelStdLocal.serialize(obj.vel_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAVelocityStd
    let len;
    let data = new MLAVelocityStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vel_std_global]
    data.vel_std_global = MLAVelStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_std_local]
    data.vel_std_local = MLAVelStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAVelocityStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bde3e776ceff15a8071fc481666b3e5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_VEL_STD_GLOBAL = 1
    uint8 MLA_VEL_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAVelStdGlobal vel_std_global
    mla_localization_msgs/MLAVelStdLocal vel_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelStdGlobal
    float64 std_ve
    float64 std_vn
    float64 std_vu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelStdLocal
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
    const resolved = new MLAVelocityStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vel_std_global !== undefined) {
      resolved.vel_std_global = MLAVelStdGlobal.Resolve(msg.vel_std_global)
    }
    else {
      resolved.vel_std_global = new MLAVelStdGlobal()
    }

    if (msg.vel_std_local !== undefined) {
      resolved.vel_std_local = MLAVelStdLocal.Resolve(msg.vel_std_local)
    }
    else {
      resolved.vel_std_local = new MLAVelStdLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAVelocityStd.Constants = {
  MLA_VEL_STD_GLOBAL: 1,
  MLA_VEL_STD_LOCAL: 2,
}

module.exports = MLAVelocityStd;

// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAVelGlobal = require('./MLAVelGlobal.js');
let MLAVelLocal = require('./MLAVelLocal.js');

//-----------------------------------------------------------

class MLAVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.velocity_global = null;
      this.velocity_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('velocity_global')) {
        this.velocity_global = initObj.velocity_global
      }
      else {
        this.velocity_global = new MLAVelGlobal();
      }
      if (initObj.hasOwnProperty('velocity_local')) {
        this.velocity_local = initObj.velocity_local
      }
      else {
        this.velocity_local = new MLAVelLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAVelocity
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [velocity_global]
    bufferOffset = MLAVelGlobal.serialize(obj.velocity_global, buffer, bufferOffset);
    // Serialize message field [velocity_local]
    bufferOffset = MLAVelLocal.serialize(obj.velocity_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAVelocity
    let len;
    let data = new MLAVelocity(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [velocity_global]
    data.velocity_global = MLAVelGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_local]
    data.velocity_local = MLAVelLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df544e5bf1682c8f12619e829ce8b5c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_VEL_GLOBAL = 1
    uint8 MLA_VEL_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAVelGlobal velocity_global
    mla_localization_msgs/MLAVelLocal velocity_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelGlobal
    float64 ve
    float64 vn
    float64 vu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelLocal
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
    const resolved = new MLAVelocity(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.velocity_global !== undefined) {
      resolved.velocity_global = MLAVelGlobal.Resolve(msg.velocity_global)
    }
    else {
      resolved.velocity_global = new MLAVelGlobal()
    }

    if (msg.velocity_local !== undefined) {
      resolved.velocity_local = MLAVelLocal.Resolve(msg.velocity_local)
    }
    else {
      resolved.velocity_local = new MLAVelLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAVelocity.Constants = {
  MLA_VEL_GLOBAL: 1,
  MLA_VEL_LOCAL: 2,
}

module.exports = MLAVelocity;

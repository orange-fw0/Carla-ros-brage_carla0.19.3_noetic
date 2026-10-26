// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAAccGlobal = require('./MLAAccGlobal.js');
let MLAAccLocal = require('./MLAAccLocal.js');

//-----------------------------------------------------------

class MLAAcceleration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.acceleration_global = null;
      this.acceleration_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('acceleration_global')) {
        this.acceleration_global = initObj.acceleration_global
      }
      else {
        this.acceleration_global = new MLAAccGlobal();
      }
      if (initObj.hasOwnProperty('acceleration_local')) {
        this.acceleration_local = initObj.acceleration_local
      }
      else {
        this.acceleration_local = new MLAAccLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAAcceleration
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [acceleration_global]
    bufferOffset = MLAAccGlobal.serialize(obj.acceleration_global, buffer, bufferOffset);
    // Serialize message field [acceleration_local]
    bufferOffset = MLAAccLocal.serialize(obj.acceleration_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAAcceleration
    let len;
    let data = new MLAAcceleration(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acceleration_global]
    data.acceleration_global = MLAAccGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_local]
    data.acceleration_local = MLAAccLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAAcceleration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c2d7300b72ce1f52af26dbb1242c4cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_ACC_GLOBAL = 1
    uint8 MLA_ACC_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAAccGlobal acceleration_global
    mla_localization_msgs/MLAAccLocal acceleration_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccGlobal
    float64 ae
    float64 an
    float64 au
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccLocal
    float64 ax
    float64 ay
    float64 az
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAAcceleration(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.acceleration_global !== undefined) {
      resolved.acceleration_global = MLAAccGlobal.Resolve(msg.acceleration_global)
    }
    else {
      resolved.acceleration_global = new MLAAccGlobal()
    }

    if (msg.acceleration_local !== undefined) {
      resolved.acceleration_local = MLAAccLocal.Resolve(msg.acceleration_local)
    }
    else {
      resolved.acceleration_local = new MLAAccLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAAcceleration.Constants = {
  MLA_ACC_GLOBAL: 1,
  MLA_ACC_LOCAL: 2,
}

module.exports = MLAAcceleration;

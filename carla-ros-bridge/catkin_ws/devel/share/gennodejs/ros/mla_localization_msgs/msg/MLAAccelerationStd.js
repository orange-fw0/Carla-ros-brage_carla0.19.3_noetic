// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAAccStdGlobal = require('./MLAAccStdGlobal.js');
let MLAAccStdLocal = require('./MLAAccStdLocal.js');

//-----------------------------------------------------------

class MLAAccelerationStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.acc_std_global = null;
      this.acc_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('acc_std_global')) {
        this.acc_std_global = initObj.acc_std_global
      }
      else {
        this.acc_std_global = new MLAAccStdGlobal();
      }
      if (initObj.hasOwnProperty('acc_std_local')) {
        this.acc_std_local = initObj.acc_std_local
      }
      else {
        this.acc_std_local = new MLAAccStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAAccelerationStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [acc_std_global]
    bufferOffset = MLAAccStdGlobal.serialize(obj.acc_std_global, buffer, bufferOffset);
    // Serialize message field [acc_std_local]
    bufferOffset = MLAAccStdLocal.serialize(obj.acc_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAAccelerationStd
    let len;
    let data = new MLAAccelerationStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acc_std_global]
    data.acc_std_global = MLAAccStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_std_local]
    data.acc_std_local = MLAAccStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAAccelerationStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3ab181c30c6d145102decdbf88f907b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_ACC_STD_GLOBAL = 1
    uint8 MLA_ACC_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAAccStdGlobal acc_std_global
    mla_localization_msgs/MLAAccStdLocal acc_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccStdGlobal
    float64 std_ae
    float64 std_an
    float64 std_au
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccStdLocal
    float64 std_ax
    float64 std_ay
    float64 std_az
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAAccelerationStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.acc_std_global !== undefined) {
      resolved.acc_std_global = MLAAccStdGlobal.Resolve(msg.acc_std_global)
    }
    else {
      resolved.acc_std_global = new MLAAccStdGlobal()
    }

    if (msg.acc_std_local !== undefined) {
      resolved.acc_std_local = MLAAccStdLocal.Resolve(msg.acc_std_local)
    }
    else {
      resolved.acc_std_local = new MLAAccStdLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAAccelerationStd.Constants = {
  MLA_ACC_STD_GLOBAL: 1,
  MLA_ACC_STD_LOCAL: 2,
}

module.exports = MLAAccelerationStd;

// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAPosStdGlobal = require('./MLAPosStdGlobal.js');
let MLAPosStdLocal = require('./MLAPosStdLocal.js');

//-----------------------------------------------------------

class MLAPositionStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.pos_std_global = null;
      this.pos_std_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('pos_std_global')) {
        this.pos_std_global = initObj.pos_std_global
      }
      else {
        this.pos_std_global = new MLAPosStdGlobal();
      }
      if (initObj.hasOwnProperty('pos_std_local')) {
        this.pos_std_local = initObj.pos_std_local
      }
      else {
        this.pos_std_local = new MLAPosStdLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAPositionStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [pos_std_global]
    bufferOffset = MLAPosStdGlobal.serialize(obj.pos_std_global, buffer, bufferOffset);
    // Serialize message field [pos_std_local]
    bufferOffset = MLAPosStdLocal.serialize(obj.pos_std_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAPositionStd
    let len;
    let data = new MLAPositionStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos_std_global]
    data.pos_std_global = MLAPosStdGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_std_local]
    data.pos_std_local = MLAPosStdLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAPositionStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c5277428311af2518ace96c5fcbb93b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_POS_STD_GLOBAL = 1
    uint8 MLA_POS_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAPosStdGlobal pos_std_global
    mla_localization_msgs/MLAPosStdLocal pos_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosStdGlobal
    float64 std_pe
    float64 std_pn
    float64 std_pu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosStdLocal
    float64 std_px
    float64 std_py
    float64 std_pz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAPositionStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.pos_std_global !== undefined) {
      resolved.pos_std_global = MLAPosStdGlobal.Resolve(msg.pos_std_global)
    }
    else {
      resolved.pos_std_global = new MLAPosStdGlobal()
    }

    if (msg.pos_std_local !== undefined) {
      resolved.pos_std_local = MLAPosStdLocal.Resolve(msg.pos_std_local)
    }
    else {
      resolved.pos_std_local = new MLAPosStdLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAPositionStd.Constants = {
  MLA_POS_STD_GLOBAL: 1,
  MLA_POS_STD_LOCAL: 2,
}

module.exports = MLAPositionStd;

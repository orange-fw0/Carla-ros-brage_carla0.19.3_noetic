// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAPosGlobal = require('./MLAPosGlobal.js');
let MLAPosLocal = require('./MLAPosLocal.js');

//-----------------------------------------------------------

class MLAPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.position_global = null;
      this.position_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('position_global')) {
        this.position_global = initObj.position_global
      }
      else {
        this.position_global = new MLAPosGlobal();
      }
      if (initObj.hasOwnProperty('position_local')) {
        this.position_local = initObj.position_local
      }
      else {
        this.position_local = new MLAPosLocal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAPosition
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [position_global]
    bufferOffset = MLAPosGlobal.serialize(obj.position_global, buffer, bufferOffset);
    // Serialize message field [position_local]
    bufferOffset = MLAPosLocal.serialize(obj.position_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAPosition
    let len;
    let data = new MLAPosition(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_global]
    data.position_global = MLAPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_local]
    data.position_local = MLAPosLocal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bebf65f0df5a26fbc7b68ff2e67facc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_POSITION_GLOBAL = 1
    uint8 MLA_POSITION_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAPosGlobal position_global
    mla_localization_msgs/MLAPosLocal position_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAPosition(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.position_global !== undefined) {
      resolved.position_global = MLAPosGlobal.Resolve(msg.position_global)
    }
    else {
      resolved.position_global = new MLAPosGlobal()
    }

    if (msg.position_local !== undefined) {
      resolved.position_local = MLAPosLocal.Resolve(msg.position_local)
    }
    else {
      resolved.position_local = new MLAPosLocal()
    }

    return resolved;
    }
};

// Constants for message
MLAPosition.Constants = {
  MLA_POSITION_GLOBAL: 1,
  MLA_POSITION_LOCAL: 2,
}

module.exports = MLAPosition;

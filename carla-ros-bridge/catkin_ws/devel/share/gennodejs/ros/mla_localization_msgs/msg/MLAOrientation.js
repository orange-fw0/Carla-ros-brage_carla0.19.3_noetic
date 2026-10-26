// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAEuler = require('./MLAEuler.js');
let MLAQuaternion = require('./MLAQuaternion.js');

//-----------------------------------------------------------

class MLAOrientation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.euler_global = null;
      this.quaternion_global = null;
      this.euler_local = null;
      this.quaternion_local = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('euler_global')) {
        this.euler_global = initObj.euler_global
      }
      else {
        this.euler_global = new MLAEuler();
      }
      if (initObj.hasOwnProperty('quaternion_global')) {
        this.quaternion_global = initObj.quaternion_global
      }
      else {
        this.quaternion_global = new MLAQuaternion();
      }
      if (initObj.hasOwnProperty('euler_local')) {
        this.euler_local = initObj.euler_local
      }
      else {
        this.euler_local = new MLAEuler();
      }
      if (initObj.hasOwnProperty('quaternion_local')) {
        this.quaternion_local = initObj.quaternion_local
      }
      else {
        this.quaternion_local = new MLAQuaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAOrientation
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [euler_global]
    bufferOffset = MLAEuler.serialize(obj.euler_global, buffer, bufferOffset);
    // Serialize message field [quaternion_global]
    bufferOffset = MLAQuaternion.serialize(obj.quaternion_global, buffer, bufferOffset);
    // Serialize message field [euler_local]
    bufferOffset = MLAEuler.serialize(obj.euler_local, buffer, bufferOffset);
    // Serialize message field [quaternion_local]
    bufferOffset = MLAQuaternion.serialize(obj.quaternion_local, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAOrientation
    let len;
    let data = new MLAOrientation(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [euler_global]
    data.euler_global = MLAEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [quaternion_global]
    data.quaternion_global = MLAQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler_local]
    data.euler_local = MLAEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [quaternion_local]
    data.quaternion_local = MLAQuaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 113;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAOrientation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe02083913cca925534086c2d7aaf14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_EULER_GLOBAL = 1
    uint8 MLA_QUATERNION_GLOBAL = 2
    uint8 MLA_EULER_LOCAL = 4
    uint8 MLA_QUATERNION_LOCAL = 8
    uint8 available
    mla_localization_msgs/MLAEuler euler_global
    mla_localization_msgs/MLAQuaternion quaternion_global
    mla_localization_msgs/MLAEuler euler_local
    mla_localization_msgs/MLAQuaternion quaternion_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAEuler
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: mla_localization_msgs/MLAQuaternion
    float64 w
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
    const resolved = new MLAOrientation(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.euler_global !== undefined) {
      resolved.euler_global = MLAEuler.Resolve(msg.euler_global)
    }
    else {
      resolved.euler_global = new MLAEuler()
    }

    if (msg.quaternion_global !== undefined) {
      resolved.quaternion_global = MLAQuaternion.Resolve(msg.quaternion_global)
    }
    else {
      resolved.quaternion_global = new MLAQuaternion()
    }

    if (msg.euler_local !== undefined) {
      resolved.euler_local = MLAEuler.Resolve(msg.euler_local)
    }
    else {
      resolved.euler_local = new MLAEuler()
    }

    if (msg.quaternion_local !== undefined) {
      resolved.quaternion_local = MLAQuaternion.Resolve(msg.quaternion_local)
    }
    else {
      resolved.quaternion_local = new MLAQuaternion()
    }

    return resolved;
    }
};

// Constants for message
MLAOrientation.Constants = {
  MLA_EULER_GLOBAL: 1,
  MLA_QUATERNION_GLOBAL: 2,
  MLA_EULER_LOCAL: 4,
  MLA_QUATERNION_LOCAL: 8,
}

module.exports = MLAOrientation;

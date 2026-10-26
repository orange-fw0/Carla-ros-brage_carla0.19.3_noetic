// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAQuaternion = require('./MLAQuaternion.js');
let MLAPosLocal = require('./MLAPosLocal.js');
let MLAPosGlobal = require('./MLAPosGlobal.js');

//-----------------------------------------------------------

class MLATransformInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform_q = null;
      this.transform_t = null;
      this.transform_center = null;
    }
    else {
      if (initObj.hasOwnProperty('transform_q')) {
        this.transform_q = initObj.transform_q
      }
      else {
        this.transform_q = new MLAQuaternion();
      }
      if (initObj.hasOwnProperty('transform_t')) {
        this.transform_t = initObj.transform_t
      }
      else {
        this.transform_t = new MLAPosLocal();
      }
      if (initObj.hasOwnProperty('transform_center')) {
        this.transform_center = initObj.transform_center
      }
      else {
        this.transform_center = new MLAPosGlobal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLATransformInfo
    // Serialize message field [transform_q]
    bufferOffset = MLAQuaternion.serialize(obj.transform_q, buffer, bufferOffset);
    // Serialize message field [transform_t]
    bufferOffset = MLAPosLocal.serialize(obj.transform_t, buffer, bufferOffset);
    // Serialize message field [transform_center]
    bufferOffset = MLAPosGlobal.serialize(obj.transform_center, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLATransformInfo
    let len;
    let data = new MLATransformInfo(null);
    // Deserialize message field [transform_q]
    data.transform_q = MLAQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_t]
    data.transform_t = MLAPosLocal.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_center]
    data.transform_center = MLAPosGlobal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLATransformInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a71623f72ebed93da4f6adb79297fa2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mla_localization_msgs/MLAQuaternion transform_q
    mla_localization_msgs/MLAPosLocal transform_t
    mla_localization_msgs/MLAPosGlobal transform_center
    
    ================================================================================
    MSG: mla_localization_msgs/MLAQuaternion
    float64 w
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLATransformInfo(null);
    if (msg.transform_q !== undefined) {
      resolved.transform_q = MLAQuaternion.Resolve(msg.transform_q)
    }
    else {
      resolved.transform_q = new MLAQuaternion()
    }

    if (msg.transform_t !== undefined) {
      resolved.transform_t = MLAPosLocal.Resolve(msg.transform_t)
    }
    else {
      resolved.transform_t = new MLAPosLocal()
    }

    if (msg.transform_center !== undefined) {
      resolved.transform_center = MLAPosGlobal.Resolve(msg.transform_center)
    }
    else {
      resolved.transform_center = new MLAPosGlobal()
    }

    return resolved;
    }
};

module.exports = MLATransformInfo;

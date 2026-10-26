// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLATransformInfo = require('./MLATransformInfo.js');

//-----------------------------------------------------------

class MLATransform {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.transform_llh_to_boot = null;
      this.transform_avp_map_to_boot = null;
      this.transform_ego_motion_to_boot = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('transform_llh_to_boot')) {
        this.transform_llh_to_boot = initObj.transform_llh_to_boot
      }
      else {
        this.transform_llh_to_boot = new MLATransformInfo();
      }
      if (initObj.hasOwnProperty('transform_avp_map_to_boot')) {
        this.transform_avp_map_to_boot = initObj.transform_avp_map_to_boot
      }
      else {
        this.transform_avp_map_to_boot = new MLATransformInfo();
      }
      if (initObj.hasOwnProperty('transform_ego_motion_to_boot')) {
        this.transform_ego_motion_to_boot = initObj.transform_ego_motion_to_boot
      }
      else {
        this.transform_ego_motion_to_boot = new MLATransformInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLATransform
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [transform_llh_to_boot]
    bufferOffset = MLATransformInfo.serialize(obj.transform_llh_to_boot, buffer, bufferOffset);
    // Serialize message field [transform_avp_map_to_boot]
    bufferOffset = MLATransformInfo.serialize(obj.transform_avp_map_to_boot, buffer, bufferOffset);
    // Serialize message field [transform_ego_motion_to_boot]
    bufferOffset = MLATransformInfo.serialize(obj.transform_ego_motion_to_boot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLATransform
    let len;
    let data = new MLATransform(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [transform_llh_to_boot]
    data.transform_llh_to_boot = MLATransformInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_avp_map_to_boot]
    data.transform_avp_map_to_boot = MLATransformInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform_ego_motion_to_boot]
    data.transform_ego_motion_to_boot = MLATransformInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 241;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLATransform';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb99cdf92a77c9e5ce9cc78517670216';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1
    uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2
    uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4
    uint8 available
    mla_localization_msgs/MLATransformInfo transform_llh_to_boot
    mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot
    mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot
    
    ================================================================================
    MSG: mla_localization_msgs/MLATransformInfo
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
    const resolved = new MLATransform(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.transform_llh_to_boot !== undefined) {
      resolved.transform_llh_to_boot = MLATransformInfo.Resolve(msg.transform_llh_to_boot)
    }
    else {
      resolved.transform_llh_to_boot = new MLATransformInfo()
    }

    if (msg.transform_avp_map_to_boot !== undefined) {
      resolved.transform_avp_map_to_boot = MLATransformInfo.Resolve(msg.transform_avp_map_to_boot)
    }
    else {
      resolved.transform_avp_map_to_boot = new MLATransformInfo()
    }

    if (msg.transform_ego_motion_to_boot !== undefined) {
      resolved.transform_ego_motion_to_boot = MLATransformInfo.Resolve(msg.transform_ego_motion_to_boot)
    }
    else {
      resolved.transform_ego_motion_to_boot = new MLATransformInfo()
    }

    return resolved;
    }
};

// Constants for message
MLATransform.Constants = {
  MLA_TRANSFORM_LLH_TO_BOOT: 1,
  MLA_TRANSFORM_AVPMAP_TO_BOOT: 2,
  MLA_TRANSFORM_EGOMOTION_TO_BOOT: 4,
}

module.exports = MLATransform;

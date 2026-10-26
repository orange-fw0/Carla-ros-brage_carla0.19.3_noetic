// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAPoseDetailInfo = require('./MLAPoseDetailInfo.js');

//-----------------------------------------------------------

class MLAPoseDetail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.pose_detail_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('pose_detail_info')) {
        this.pose_detail_info = initObj.pose_detail_info
      }
      else {
        this.pose_detail_info = new MLAPoseDetailInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAPoseDetail
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [pose_detail_info]
    bufferOffset = MLAPoseDetailInfo.serialize(obj.pose_detail_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAPoseDetail
    let len;
    let data = new MLAPoseDetail(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose_detail_info]
    data.pose_detail_info = MLAPoseDetailInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAPoseDetail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc49525cabc3af4ef9362acc115adf41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_POSE_DETAIL_INFO = 1
    uint8 available
    mla_localization_msgs/MLAPoseDetailInfo pose_detail_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPoseDetailInfo
    uint8 MLA_ESTIMATION_UNKNOWN = 0
    uint8 MLA_ESTIMATION_PER_FRAME = 1
    uint8 MLA_ESTIMATION_WINDOW_OPT = 2
    uint8 MLA_ESTIMATION_DR = 3
    uint8 available
    bool is_keyframe
    bool has_scale
    uint8 pose_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAPoseDetail(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.pose_detail_info !== undefined) {
      resolved.pose_detail_info = MLAPoseDetailInfo.Resolve(msg.pose_detail_info)
    }
    else {
      resolved.pose_detail_info = new MLAPoseDetailInfo()
    }

    return resolved;
    }
};

// Constants for message
MLAPoseDetail.Constants = {
  MLA_POSE_DETAIL_INFO: 1,
}

module.exports = MLAPoseDetail;

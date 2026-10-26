// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MLAPoseDetailInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.is_keyframe = null;
      this.has_scale = null;
      this.pose_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('is_keyframe')) {
        this.is_keyframe = initObj.is_keyframe
      }
      else {
        this.is_keyframe = false;
      }
      if (initObj.hasOwnProperty('has_scale')) {
        this.has_scale = initObj.has_scale
      }
      else {
        this.has_scale = false;
      }
      if (initObj.hasOwnProperty('pose_type')) {
        this.pose_type = initObj.pose_type
      }
      else {
        this.pose_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAPoseDetailInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [is_keyframe]
    bufferOffset = _serializer.bool(obj.is_keyframe, buffer, bufferOffset);
    // Serialize message field [has_scale]
    bufferOffset = _serializer.bool(obj.has_scale, buffer, bufferOffset);
    // Serialize message field [pose_type]
    bufferOffset = _serializer.uint8(obj.pose_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAPoseDetailInfo
    let len;
    let data = new MLAPoseDetailInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_keyframe]
    data.is_keyframe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_scale]
    data.has_scale = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose_type]
    data.pose_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAPoseDetailInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '274119bf8783f47f15abb606e09ac47a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MLAPoseDetailInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.is_keyframe !== undefined) {
      resolved.is_keyframe = msg.is_keyframe;
    }
    else {
      resolved.is_keyframe = false
    }

    if (msg.has_scale !== undefined) {
      resolved.has_scale = msg.has_scale;
    }
    else {
      resolved.has_scale = false
    }

    if (msg.pose_type !== undefined) {
      resolved.pose_type = msg.pose_type;
    }
    else {
      resolved.pose_type = 0
    }

    return resolved;
    }
};

// Constants for message
MLAPoseDetailInfo.Constants = {
  MLA_ESTIMATION_UNKNOWN: 0,
  MLA_ESTIMATION_PER_FRAME: 1,
  MLA_ESTIMATION_WINDOW_OPT: 2,
  MLA_ESTIMATION_DR: 3,
}

module.exports = MLAPoseDetailInfo;

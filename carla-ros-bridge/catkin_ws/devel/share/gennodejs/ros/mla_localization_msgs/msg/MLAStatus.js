// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAStatusInfo = require('./MLAStatusInfo.js');

//-----------------------------------------------------------

class MLAStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.status_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('status_info')) {
        this.status_info = initObj.status_info
      }
      else {
        this.status_info = new MLAStatusInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [status_info]
    bufferOffset = MLAStatusInfo.serialize(obj.status_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAStatus
    let len;
    let data = new MLAStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status_info]
    data.status_info = MLAStatusInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '474f248c5f262aa377048e5294ddeb3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_STATUS_INFO = 1
    uint8 available
    mla_localization_msgs/MLAStatusInfo status_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAStatusInfo
    uint8 quality
    uint64 common
    uint64 extended
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.status_info !== undefined) {
      resolved.status_info = MLAStatusInfo.Resolve(msg.status_info)
    }
    else {
      resolved.status_info = new MLAStatusInfo()
    }

    return resolved;
    }
};

// Constants for message
MLAStatus.Constants = {
  MLA_STATUS_INFO: 1,
}

module.exports = MLAStatus;

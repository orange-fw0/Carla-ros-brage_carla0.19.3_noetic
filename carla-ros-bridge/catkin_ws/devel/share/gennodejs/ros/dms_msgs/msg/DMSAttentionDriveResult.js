// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSAttentionDriveTypeEnum = require('./DMSAttentionDriveTypeEnum.js');
let L2DMSAttentionDriveTypeEnum = require('./L2DMSAttentionDriveTypeEnum.js');
let L3DMSAttentionDriveTypeEnum = require('./L3DMSAttentionDriveTypeEnum.js');

//-----------------------------------------------------------

class DMSAttentionDriveResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.attention_drive_type = null;
      this.l2_attention_drive_type = null;
      this.l3_attention_drive_type = null;
      this.reserved = null;
      this.attention_sensitivity = null;
      this.attention_params = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('attention_drive_type')) {
        this.attention_drive_type = initObj.attention_drive_type
      }
      else {
        this.attention_drive_type = new DMSAttentionDriveTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_attention_drive_type')) {
        this.l2_attention_drive_type = initObj.l2_attention_drive_type
      }
      else {
        this.l2_attention_drive_type = new L2DMSAttentionDriveTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_attention_drive_type')) {
        this.l3_attention_drive_type = initObj.l3_attention_drive_type
      }
      else {
        this.l3_attention_drive_type = new L3DMSAttentionDriveTypeEnum();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
      if (initObj.hasOwnProperty('attention_sensitivity')) {
        this.attention_sensitivity = initObj.attention_sensitivity
      }
      else {
        this.attention_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('attention_params')) {
        this.attention_params = initObj.attention_params
      }
      else {
        this.attention_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSAttentionDriveResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [attention_drive_type]
    bufferOffset = DMSAttentionDriveTypeEnum.serialize(obj.attention_drive_type, buffer, bufferOffset);
    // Serialize message field [l2_attention_drive_type]
    bufferOffset = L2DMSAttentionDriveTypeEnum.serialize(obj.l2_attention_drive_type, buffer, bufferOffset);
    // Serialize message field [l3_attention_drive_type]
    bufferOffset = L3DMSAttentionDriveTypeEnum.serialize(obj.l3_attention_drive_type, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    // Serialize message field [attention_sensitivity]
    bufferOffset = _serializer.int32(obj.attention_sensitivity, buffer, bufferOffset);
    // Serialize message field [attention_params]
    bufferOffset = _serializer.string(obj.attention_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSAttentionDriveResult
    let len;
    let data = new DMSAttentionDriveResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attention_drive_type]
    data.attention_drive_type = DMSAttentionDriveTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_attention_drive_type]
    data.l2_attention_drive_type = L2DMSAttentionDriveTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_attention_drive_type]
    data.l3_attention_drive_type = L3DMSAttentionDriveTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [attention_sensitivity]
    data.attention_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [attention_params]
    data.attention_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    length += _getByteLength(object.attention_params);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSAttentionDriveResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f17195b5a45eb5fdaf7a12c5dd9a6aa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ATTENTION_DRIVE_AVAILABLE = 1
    uint8 L2_ATTENTION_DRIVE_AVAILABLE = 2
    uint8 L3_ATTENTION_DRIVE_AVAILABLE = 4
    uint8 RESERVED_AVAILABLE = 8
    uint8 available
    dms_msgs/DMSAttentionDriveTypeEnum attention_drive_type
    dms_msgs/L2DMSAttentionDriveTypeEnum l2_attention_drive_type
    dms_msgs/L3DMSAttentionDriveTypeEnum l3_attention_drive_type
    string reserved
    int32 attention_sensitivity
    string attention_params
    
    ================================================================================
    MSG: dms_msgs/DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSAttentionDriveResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.attention_drive_type !== undefined) {
      resolved.attention_drive_type = DMSAttentionDriveTypeEnum.Resolve(msg.attention_drive_type)
    }
    else {
      resolved.attention_drive_type = new DMSAttentionDriveTypeEnum()
    }

    if (msg.l2_attention_drive_type !== undefined) {
      resolved.l2_attention_drive_type = L2DMSAttentionDriveTypeEnum.Resolve(msg.l2_attention_drive_type)
    }
    else {
      resolved.l2_attention_drive_type = new L2DMSAttentionDriveTypeEnum()
    }

    if (msg.l3_attention_drive_type !== undefined) {
      resolved.l3_attention_drive_type = L3DMSAttentionDriveTypeEnum.Resolve(msg.l3_attention_drive_type)
    }
    else {
      resolved.l3_attention_drive_type = new L3DMSAttentionDriveTypeEnum()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    if (msg.attention_sensitivity !== undefined) {
      resolved.attention_sensitivity = msg.attention_sensitivity;
    }
    else {
      resolved.attention_sensitivity = 0
    }

    if (msg.attention_params !== undefined) {
      resolved.attention_params = msg.attention_params;
    }
    else {
      resolved.attention_params = ''
    }

    return resolved;
    }
};

// Constants for message
DMSAttentionDriveResult.Constants = {
  ATTENTION_DRIVE_AVAILABLE: 1,
  L2_ATTENTION_DRIVE_AVAILABLE: 2,
  L3_ATTENTION_DRIVE_AVAILABLE: 4,
  RESERVED_AVAILABLE: 8,
}

module.exports = DMSAttentionDriveResult;

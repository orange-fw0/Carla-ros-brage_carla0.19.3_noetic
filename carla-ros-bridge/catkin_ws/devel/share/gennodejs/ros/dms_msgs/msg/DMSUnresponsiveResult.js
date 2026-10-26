// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSUnresponsiveTypeEnum = require('./DMSUnresponsiveTypeEnum.js');

//-----------------------------------------------------------

class DMSUnresponsiveResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.unresponsive_type = null;
      this.roi_caused_unresponsive = null;
      this.drowsiness_caused_unresponsive = null;
      this.reserved = null;
      this.unresponsive_sensitivity = null;
      this.unresponsive_params = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('unresponsive_type')) {
        this.unresponsive_type = initObj.unresponsive_type
      }
      else {
        this.unresponsive_type = new DMSUnresponsiveTypeEnum();
      }
      if (initObj.hasOwnProperty('roi_caused_unresponsive')) {
        this.roi_caused_unresponsive = initObj.roi_caused_unresponsive
      }
      else {
        this.roi_caused_unresponsive = 0;
      }
      if (initObj.hasOwnProperty('drowsiness_caused_unresponsive')) {
        this.drowsiness_caused_unresponsive = initObj.drowsiness_caused_unresponsive
      }
      else {
        this.drowsiness_caused_unresponsive = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('unresponsive_sensitivity')) {
        this.unresponsive_sensitivity = initObj.unresponsive_sensitivity
      }
      else {
        this.unresponsive_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('unresponsive_params')) {
        this.unresponsive_params = initObj.unresponsive_params
      }
      else {
        this.unresponsive_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSUnresponsiveResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [unresponsive_type]
    bufferOffset = DMSUnresponsiveTypeEnum.serialize(obj.unresponsive_type, buffer, bufferOffset);
    // Serialize message field [roi_caused_unresponsive]
    bufferOffset = _serializer.uint8(obj.roi_caused_unresponsive, buffer, bufferOffset);
    // Serialize message field [drowsiness_caused_unresponsive]
    bufferOffset = _serializer.uint8(obj.drowsiness_caused_unresponsive, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    // Serialize message field [unresponsive_sensitivity]
    bufferOffset = _serializer.int32(obj.unresponsive_sensitivity, buffer, bufferOffset);
    // Serialize message field [unresponsive_params]
    bufferOffset = _serializer.string(obj.unresponsive_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSUnresponsiveResult
    let len;
    let data = new DMSUnresponsiveResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unresponsive_type]
    data.unresponsive_type = DMSUnresponsiveTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi_caused_unresponsive]
    data.roi_caused_unresponsive = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [drowsiness_caused_unresponsive]
    data.drowsiness_caused_unresponsive = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unresponsive_sensitivity]
    data.unresponsive_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [unresponsive_params]
    data.unresponsive_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.unresponsive_params);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSUnresponsiveResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca63b7070833fd794ace6047b622e56d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 UNRESPONSIVE_TYPE_AVAILABLE = 1
    uint8 ROI_CAUSED_UNRESPONSIVE_AVAILABLE = 2
    uint8 DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE = 4
    uint8 RESERVED = 8
    uint8 available
    dms_msgs/DMSUnresponsiveTypeEnum unresponsive_type
    uint8 roi_caused_unresponsive
    uint8 drowsiness_caused_unresponsive
    uint8 reserved
    int32 unresponsive_sensitivity
    string unresponsive_params
    
    ================================================================================
    MSG: dms_msgs/DMSUnresponsiveTypeEnum
    uint8 NORMAL_DRIVE_STATE = 0
    uint8 UNRESPONSIVE_DRIVE_STATE = 1
    uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSUnresponsiveResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.unresponsive_type !== undefined) {
      resolved.unresponsive_type = DMSUnresponsiveTypeEnum.Resolve(msg.unresponsive_type)
    }
    else {
      resolved.unresponsive_type = new DMSUnresponsiveTypeEnum()
    }

    if (msg.roi_caused_unresponsive !== undefined) {
      resolved.roi_caused_unresponsive = msg.roi_caused_unresponsive;
    }
    else {
      resolved.roi_caused_unresponsive = 0
    }

    if (msg.drowsiness_caused_unresponsive !== undefined) {
      resolved.drowsiness_caused_unresponsive = msg.drowsiness_caused_unresponsive;
    }
    else {
      resolved.drowsiness_caused_unresponsive = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.unresponsive_sensitivity !== undefined) {
      resolved.unresponsive_sensitivity = msg.unresponsive_sensitivity;
    }
    else {
      resolved.unresponsive_sensitivity = 0
    }

    if (msg.unresponsive_params !== undefined) {
      resolved.unresponsive_params = msg.unresponsive_params;
    }
    else {
      resolved.unresponsive_params = ''
    }

    return resolved;
    }
};

// Constants for message
DMSUnresponsiveResult.Constants = {
  UN_AVAILABLE: 0,
  UNRESPONSIVE_TYPE_AVAILABLE: 1,
  ROI_CAUSED_UNRESPONSIVE_AVAILABLE: 2,
  DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE: 4,
  RESERVED: 8,
}

module.exports = DMSUnresponsiveResult;

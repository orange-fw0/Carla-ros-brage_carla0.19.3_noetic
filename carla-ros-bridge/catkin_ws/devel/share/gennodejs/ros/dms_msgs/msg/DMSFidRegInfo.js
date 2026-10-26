// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RegResponseTypeEnum = require('./RegResponseTypeEnum.js');
let CancelResponseTypeEnum = require('./CancelResponseTypeEnum.js');
let RegStatusTypeEnum = require('./RegStatusTypeEnum.js');
let RegErrorTypeEnum = require('./RegErrorTypeEnum.js');

//-----------------------------------------------------------

class DMSFidRegInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.user_id = null;
      this.register_timestamp_us = null;
      this.register_cancel_timestamp_us = null;
      this.reg_response = null;
      this.cancel_response = null;
      this.reg_status = null;
      this.reg_error = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = '';
      }
      if (initObj.hasOwnProperty('register_timestamp_us')) {
        this.register_timestamp_us = initObj.register_timestamp_us
      }
      else {
        this.register_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('register_cancel_timestamp_us')) {
        this.register_cancel_timestamp_us = initObj.register_cancel_timestamp_us
      }
      else {
        this.register_cancel_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('reg_response')) {
        this.reg_response = initObj.reg_response
      }
      else {
        this.reg_response = new RegResponseTypeEnum();
      }
      if (initObj.hasOwnProperty('cancel_response')) {
        this.cancel_response = initObj.cancel_response
      }
      else {
        this.cancel_response = new CancelResponseTypeEnum();
      }
      if (initObj.hasOwnProperty('reg_status')) {
        this.reg_status = initObj.reg_status
      }
      else {
        this.reg_status = new RegStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('reg_error')) {
        this.reg_error = initObj.reg_error
      }
      else {
        this.reg_error = new RegErrorTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFidRegInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [register_timestamp_us]
    bufferOffset = _serializer.uint64(obj.register_timestamp_us, buffer, bufferOffset);
    // Serialize message field [register_cancel_timestamp_us]
    bufferOffset = _serializer.uint64(obj.register_cancel_timestamp_us, buffer, bufferOffset);
    // Serialize message field [reg_response]
    bufferOffset = RegResponseTypeEnum.serialize(obj.reg_response, buffer, bufferOffset);
    // Serialize message field [cancel_response]
    bufferOffset = CancelResponseTypeEnum.serialize(obj.cancel_response, buffer, bufferOffset);
    // Serialize message field [reg_status]
    bufferOffset = RegStatusTypeEnum.serialize(obj.reg_status, buffer, bufferOffset);
    // Serialize message field [reg_error]
    bufferOffset = RegErrorTypeEnum.serialize(obj.reg_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFidRegInfo
    let len;
    let data = new DMSFidRegInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [register_timestamp_us]
    data.register_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [register_cancel_timestamp_us]
    data.register_cancel_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reg_response]
    data.reg_response = RegResponseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [cancel_response]
    data.cancel_response = CancelResponseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reg_status]
    data.reg_status = RegStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reg_error]
    data.reg_error = RegErrorTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_id);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFidRegInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff9a6215410a19af27947d0bf3002983';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 REG_INFO_UN_AVAILABLE = 0
    uint8 REG_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 register_timestamp_us
    uint64 register_cancel_timestamp_us
    dms_msgs/RegResponseTypeEnum reg_response
    dms_msgs/CancelResponseTypeEnum cancel_response
    dms_msgs/RegStatusTypeEnum reg_status
    dms_msgs/RegErrorTypeEnum reg_error
    
    ================================================================================
    MSG: dms_msgs/RegResponseTypeEnum
    uint8 RESPOND_FAIL = 0
    uint8 RESPOND_SUCCESS = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/CancelResponseTypeEnum
    uint8 NO_ACTION = 0
    uint8 CANCEL_SUCCESS = 1
    uint8 CANCEL_FAIL = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RegStatusTypeEnum
    uint8 NO_ACTION = 0
    uint8 REGISTERING = 1
    uint8 REGISTER_SUCCESS = 2
    uint8 REGISTER_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RegErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 CAMERA_ABNORMAL = 1
    uint8 NO_FACE = 2
    uint8 LOW_FACE_QUALITY = 3
    uint8 FACE_NOT_ALIVE = 4
    uint8 LARGE_HEAD_POSE = 5
    uint8 ID_EXISTS = 6
    uint8 FACE_WRITTEN_FAIL = 7
    uint8 TIME_OUT = 8
    uint8 FACE_EXISTS = 9
    uint8 SYSTEM_ERROR = 10
    uint8 RESERVED = 11
    uint8 RESERVED1 = 12
    uint8 RESERVED2 = 13
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFidRegInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = ''
    }

    if (msg.register_timestamp_us !== undefined) {
      resolved.register_timestamp_us = msg.register_timestamp_us;
    }
    else {
      resolved.register_timestamp_us = 0
    }

    if (msg.register_cancel_timestamp_us !== undefined) {
      resolved.register_cancel_timestamp_us = msg.register_cancel_timestamp_us;
    }
    else {
      resolved.register_cancel_timestamp_us = 0
    }

    if (msg.reg_response !== undefined) {
      resolved.reg_response = RegResponseTypeEnum.Resolve(msg.reg_response)
    }
    else {
      resolved.reg_response = new RegResponseTypeEnum()
    }

    if (msg.cancel_response !== undefined) {
      resolved.cancel_response = CancelResponseTypeEnum.Resolve(msg.cancel_response)
    }
    else {
      resolved.cancel_response = new CancelResponseTypeEnum()
    }

    if (msg.reg_status !== undefined) {
      resolved.reg_status = RegStatusTypeEnum.Resolve(msg.reg_status)
    }
    else {
      resolved.reg_status = new RegStatusTypeEnum()
    }

    if (msg.reg_error !== undefined) {
      resolved.reg_error = RegErrorTypeEnum.Resolve(msg.reg_error)
    }
    else {
      resolved.reg_error = new RegErrorTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSFidRegInfo.Constants = {
  REG_INFO_UN_AVAILABLE: 0,
  REG_INFO_AVAILABLE: 1,
}

module.exports = DMSFidRegInfo;

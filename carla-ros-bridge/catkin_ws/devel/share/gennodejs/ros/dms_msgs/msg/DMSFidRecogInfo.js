// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RecogResponseTypeEnum = require('./RecogResponseTypeEnum.js');
let CancelResponseTypeEnum = require('./CancelResponseTypeEnum.js');
let RecogStatusTypeEnum = require('./RecogStatusTypeEnum.js');
let RecogErrorTypeEnum = require('./RecogErrorTypeEnum.js');

//-----------------------------------------------------------

class DMSFidRecogInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.user_id = null;
      this.recognize_timestamp_us = null;
      this.recognize_cancel_timestamp_us = null;
      this.recog_response = null;
      this.cancel_response = null;
      this.recog_status = null;
      this.recog_error = null;
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
      if (initObj.hasOwnProperty('recognize_timestamp_us')) {
        this.recognize_timestamp_us = initObj.recognize_timestamp_us
      }
      else {
        this.recognize_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('recognize_cancel_timestamp_us')) {
        this.recognize_cancel_timestamp_us = initObj.recognize_cancel_timestamp_us
      }
      else {
        this.recognize_cancel_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('recog_response')) {
        this.recog_response = initObj.recog_response
      }
      else {
        this.recog_response = new RecogResponseTypeEnum();
      }
      if (initObj.hasOwnProperty('cancel_response')) {
        this.cancel_response = initObj.cancel_response
      }
      else {
        this.cancel_response = new CancelResponseTypeEnum();
      }
      if (initObj.hasOwnProperty('recog_status')) {
        this.recog_status = initObj.recog_status
      }
      else {
        this.recog_status = new RecogStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('recog_error')) {
        this.recog_error = initObj.recog_error
      }
      else {
        this.recog_error = new RecogErrorTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFidRecogInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [recognize_timestamp_us]
    bufferOffset = _serializer.uint64(obj.recognize_timestamp_us, buffer, bufferOffset);
    // Serialize message field [recognize_cancel_timestamp_us]
    bufferOffset = _serializer.uint64(obj.recognize_cancel_timestamp_us, buffer, bufferOffset);
    // Serialize message field [recog_response]
    bufferOffset = RecogResponseTypeEnum.serialize(obj.recog_response, buffer, bufferOffset);
    // Serialize message field [cancel_response]
    bufferOffset = CancelResponseTypeEnum.serialize(obj.cancel_response, buffer, bufferOffset);
    // Serialize message field [recog_status]
    bufferOffset = RecogStatusTypeEnum.serialize(obj.recog_status, buffer, bufferOffset);
    // Serialize message field [recog_error]
    bufferOffset = RecogErrorTypeEnum.serialize(obj.recog_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFidRecogInfo
    let len;
    let data = new DMSFidRecogInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recognize_timestamp_us]
    data.recognize_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [recognize_cancel_timestamp_us]
    data.recognize_cancel_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [recog_response]
    data.recog_response = RecogResponseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [cancel_response]
    data.cancel_response = CancelResponseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [recog_status]
    data.recog_status = RecogStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [recog_error]
    data.recog_error = RecogErrorTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_id);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFidRecogInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4912ec8eff8547313caab542459893d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 REC_INFO_UN_AVAILABLE = 0
    uint8 REC_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 recognize_timestamp_us
    uint64 recognize_cancel_timestamp_us
    dms_msgs/RecogResponseTypeEnum recog_response
    dms_msgs/CancelResponseTypeEnum cancel_response
    dms_msgs/RecogStatusTypeEnum recog_status
    dms_msgs/RecogErrorTypeEnum recog_error
    
    ================================================================================
    MSG: dms_msgs/RecogResponseTypeEnum
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
    MSG: dms_msgs/RecogStatusTypeEnum
    uint8 NO_ACTION = 0
    uint8 Recognizing = 1
    uint8 Recog_SUCCESS = 2
    uint8 Recog_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RecogErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 CAMERA_ABNORMAL = 1
    uint8 NO_FACE = 2
    uint8 LOW_FACE_QUALITY = 3
    uint8 FACE_NOT_ALIVE = 4
    uint8 USER_NOT_EXIST = 5
    uint8 TIME_OUT = 6
    uint8 EMPTY_USER_LIST = 7
    uint8 SYSTEM_ERROR = 8
    uint8 RESERVED = 9
    uint8 RESERVED1 = 10
    uint8 RESERVED2 = 11
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFidRecogInfo(null);
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

    if (msg.recognize_timestamp_us !== undefined) {
      resolved.recognize_timestamp_us = msg.recognize_timestamp_us;
    }
    else {
      resolved.recognize_timestamp_us = 0
    }

    if (msg.recognize_cancel_timestamp_us !== undefined) {
      resolved.recognize_cancel_timestamp_us = msg.recognize_cancel_timestamp_us;
    }
    else {
      resolved.recognize_cancel_timestamp_us = 0
    }

    if (msg.recog_response !== undefined) {
      resolved.recog_response = RecogResponseTypeEnum.Resolve(msg.recog_response)
    }
    else {
      resolved.recog_response = new RecogResponseTypeEnum()
    }

    if (msg.cancel_response !== undefined) {
      resolved.cancel_response = CancelResponseTypeEnum.Resolve(msg.cancel_response)
    }
    else {
      resolved.cancel_response = new CancelResponseTypeEnum()
    }

    if (msg.recog_status !== undefined) {
      resolved.recog_status = RecogStatusTypeEnum.Resolve(msg.recog_status)
    }
    else {
      resolved.recog_status = new RecogStatusTypeEnum()
    }

    if (msg.recog_error !== undefined) {
      resolved.recog_error = RecogErrorTypeEnum.Resolve(msg.recog_error)
    }
    else {
      resolved.recog_error = new RecogErrorTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSFidRecogInfo.Constants = {
  REC_INFO_UN_AVAILABLE: 0,
  REC_INFO_AVAILABLE: 1,
}

module.exports = DMSFidRecogInfo;

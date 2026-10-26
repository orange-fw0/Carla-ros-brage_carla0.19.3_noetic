// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSEventTypeEnum = require('./DMSEventTypeEnum.js');

//-----------------------------------------------------------

class DMSExtCalibrationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.translation_matrix = null;
      this.rotation_matrix = null;
      this.event_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('translation_matrix')) {
        this.translation_matrix = initObj.translation_matrix
      }
      else {
        this.translation_matrix = [];
      }
      if (initObj.hasOwnProperty('rotation_matrix')) {
        this.rotation_matrix = initObj.rotation_matrix
      }
      else {
        this.rotation_matrix = [];
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = new DMSEventTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSExtCalibrationResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [translation_matrix]
    bufferOffset = _arraySerializer.float32(obj.translation_matrix, buffer, bufferOffset, null);
    // Serialize message field [rotation_matrix]
    bufferOffset = _arraySerializer.float32(obj.rotation_matrix, buffer, bufferOffset, null);
    // Serialize message field [event_type]
    bufferOffset = DMSEventTypeEnum.serialize(obj.event_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSExtCalibrationResult
    let len;
    let data = new DMSExtCalibrationResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [translation_matrix]
    data.translation_matrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rotation_matrix]
    data.rotation_matrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [event_type]
    data.event_type = DMSEventTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.translation_matrix.length;
    length += 4 * object.rotation_matrix.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSExtCalibrationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c26cfd464270b1b4d155cdea024cce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    float32[] translation_matrix
    float32[] rotation_matrix
    dms_msgs/DMSEventTypeEnum event_type
    
    ================================================================================
    MSG: dms_msgs/DMSEventTypeEnum
    uint8 DMS_EVENT_UNKNOWN = 0
    uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1
    uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2
    uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100
    uint8 DMS_EVENT_WARNING_YAWN = 101
    uint8 DMS_EVENT_WARNING_DRINK = 102
    uint8 DMS_EVENT_WARNING_PHONE_CALL = 103
    uint8 DMS_EVENT_WARNING_SMOKE = 104
    uint8 DMS_EVENT_WARNING_DROWSINESS = 105
    uint8 DMS_EVENT_DISTRACTION = 106
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112
    uint8 DMS_EVENT_HEAD_SHAKE = 109
    uint8 DMS_EVENT_HEAD_NOD = 110
    uint8 DMS_EVENT_MUTE = 111
    uint8 DMS_EVENT_RESERVED = 112
    uint8 DMS_EVENT_RESERVED1 = 113
    uint8 DMS_EVENT_RESERVED2 = 114
    uint8 DMS_EVENT_RESERVED3 = 115
    uint8 DMS_EVENT_RESERVED4 = 116
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSExtCalibrationResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.translation_matrix !== undefined) {
      resolved.translation_matrix = msg.translation_matrix;
    }
    else {
      resolved.translation_matrix = []
    }

    if (msg.rotation_matrix !== undefined) {
      resolved.rotation_matrix = msg.rotation_matrix;
    }
    else {
      resolved.rotation_matrix = []
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = DMSEventTypeEnum.Resolve(msg.event_type)
    }
    else {
      resolved.event_type = new DMSEventTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSExtCalibrationResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
}

module.exports = DMSExtCalibrationResult;

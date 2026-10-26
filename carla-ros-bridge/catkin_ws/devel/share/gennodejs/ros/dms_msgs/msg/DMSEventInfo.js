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

class DMSEventInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.event_type = null;
      this.time_start = null;
      this.time_end = null;
      this.event_desc = null;
      this.event_id = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = new DMSEventTypeEnum();
      }
      if (initObj.hasOwnProperty('time_start')) {
        this.time_start = initObj.time_start
      }
      else {
        this.time_start = 0;
      }
      if (initObj.hasOwnProperty('time_end')) {
        this.time_end = initObj.time_end
      }
      else {
        this.time_end = 0;
      }
      if (initObj.hasOwnProperty('event_desc')) {
        this.event_desc = initObj.event_desc
      }
      else {
        this.event_desc = '';
      }
      if (initObj.hasOwnProperty('event_id')) {
        this.event_id = initObj.event_id
      }
      else {
        this.event_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSEventInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = DMSEventTypeEnum.serialize(obj.event_type, buffer, bufferOffset);
    // Serialize message field [time_start]
    bufferOffset = _serializer.uint64(obj.time_start, buffer, bufferOffset);
    // Serialize message field [time_end]
    bufferOffset = _serializer.uint64(obj.time_end, buffer, bufferOffset);
    // Serialize message field [event_desc]
    bufferOffset = _serializer.string(obj.event_desc, buffer, bufferOffset);
    // Serialize message field [event_id]
    bufferOffset = _serializer.string(obj.event_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEventInfo
    let len;
    let data = new DMSEventInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = DMSEventTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_start]
    data.time_start = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [time_end]
    data.time_end = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [event_desc]
    data.event_desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event_id]
    data.event_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.event_desc);
    length += _getByteLength(object.event_id);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEventInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c277d0f695293a1e0a5af5bc5bd13fc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSEventTypeEnum event_type
    uint64 time_start
    uint64 time_end
    string event_desc
    string event_id
    
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
    const resolved = new DMSEventInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = DMSEventTypeEnum.Resolve(msg.event_type)
    }
    else {
      resolved.event_type = new DMSEventTypeEnum()
    }

    if (msg.time_start !== undefined) {
      resolved.time_start = msg.time_start;
    }
    else {
      resolved.time_start = 0
    }

    if (msg.time_end !== undefined) {
      resolved.time_end = msg.time_end;
    }
    else {
      resolved.time_end = 0
    }

    if (msg.event_desc !== undefined) {
      resolved.event_desc = msg.event_desc;
    }
    else {
      resolved.event_desc = ''
    }

    if (msg.event_id !== undefined) {
      resolved.event_id = msg.event_id;
    }
    else {
      resolved.event_id = ''
    }

    return resolved;
    }
};

// Constants for message
DMSEventInfo.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
}

module.exports = DMSEventInfo;

// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DMSEventTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSEventTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEventTypeEnum
    let len;
    let data = new DMSEventTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEventTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5853275112e4617a2e255aef5f1e0d4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DMSEventTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
DMSEventTypeEnum.Constants = {
  DMS_EVENT_UNKNOWN: 0,
  DMS_EVENT_FEATURE_EXTRACT_SUCCESS: 1,
  DMS_EVENT_FEATURE_EXTRACT_FAIL: 2,
  DMS_EVENT_WARNING_EYE_CLOSE: 100,
  DMS_EVENT_WARNING_YAWN: 101,
  DMS_EVENT_WARNING_DRINK: 102,
  DMS_EVENT_WARNING_PHONE_CALL: 103,
  DMS_EVENT_WARNING_SMOKE: 104,
  DMS_EVENT_WARNING_DROWSINESS: 105,
  DMS_EVENT_DISTRACTION: 106,
  DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS: 107,
  DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL: 108,
  DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS: 109,
  DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS: 110,
  DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS: 111,
  DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS: 112,
  DMS_EVENT_HEAD_SHAKE: 109,
  DMS_EVENT_HEAD_NOD: 110,
  DMS_EVENT_MUTE: 111,
  DMS_EVENT_RESERVED: 112,
  DMS_EVENT_RESERVED1: 113,
  DMS_EVENT_RESERVED2: 114,
  DMS_EVENT_RESERVED3: 115,
  DMS_EVENT_RESERVED4: 116,
}

module.exports = DMSEventTypeEnum;

// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FunctionModeEnum {
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
    // Serializes a message object of type FunctionModeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FunctionModeEnum
    let len;
    let data = new FunctionModeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/FunctionModeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7feadeed8d0e2eb93972f33e87ecc471';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ACC = 0
    uint8 CP = 1
    uint8 HNP = 2
    uint8 APA = 3
    uint8 SVP = 4
    uint8 PLAC = 5
    uint8 ACE = 6
    uint8 PNP = 7
    uint8 LPNP = 8
    uint8 LPNP_MAPPING = 9
    uint8 MEB = 10
    uint8 RADS = 11
    uint8 MANUAL = 12
    uint8 NRP = 13
    uint8 UNP = 14
    uint8 RPA = 15
    uint8 MANUAL_WITH_CPP = 16
    uint8 EESF = 17
    uint8 LKC = 18
    uint8 SENTRY_MODE = 20
    uint8 ECO_ASSIST = 21
    uint8 MNP = 22
    uint8 MNP_MAPPING = 23
    uint8 L3_FADEIN = 24
    uint8 MANUAL_WITH_NPP = 66
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FunctionModeEnum(null);
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
FunctionModeEnum.Constants = {
  ACC: 0,
  CP: 1,
  HNP: 2,
  APA: 3,
  SVP: 4,
  PLAC: 5,
  ACE: 6,
  PNP: 7,
  LPNP: 8,
  LPNP_MAPPING: 9,
  MEB: 10,
  RADS: 11,
  MANUAL: 12,
  NRP: 13,
  UNP: 14,
  RPA: 15,
  MANUAL_WITH_CPP: 16,
  EESF: 17,
  LKC: 18,
  SENTRY_MODE: 20,
  ECO_ASSIST: 21,
  MNP: 22,
  MNP_MAPPING: 23,
  L3_FADEIN: 24,
  MANUAL_WITH_NPP: 66,
}

module.exports = FunctionModeEnum;

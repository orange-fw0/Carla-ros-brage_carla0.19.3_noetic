// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FunctionModeEnum = require('./FunctionModeEnum.js');

//-----------------------------------------------------------

class SysAdasInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.function_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('function_mode')) {
        this.function_mode = initObj.function_mode
      }
      else {
        this.function_mode = new FunctionModeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysAdasInfo
    // Serialize message field [function_mode]
    bufferOffset = FunctionModeEnum.serialize(obj.function_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysAdasInfo
    let len;
    let data = new SysAdasInfo(null);
    // Deserialize message field [function_mode]
    data.function_mode = FunctionModeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysAdasInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d842ce5a0436db29b7d7ed80fecdf08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/FunctionModeEnum function_mode
    
    ================================================================================
    MSG: system_manager_msgs/FunctionModeEnum
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
    const resolved = new SysAdasInfo(null);
    if (msg.function_mode !== undefined) {
      resolved.function_mode = FunctionModeEnum.Resolve(msg.function_mode)
    }
    else {
      resolved.function_mode = new FunctionModeEnum()
    }

    return resolved;
    }
};

module.exports = SysAdasInfo;

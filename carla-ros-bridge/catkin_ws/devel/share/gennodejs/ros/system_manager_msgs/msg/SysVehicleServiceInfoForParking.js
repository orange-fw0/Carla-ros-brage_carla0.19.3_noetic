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

class SysVehicleServiceInfoForParking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.function_mode = null;
      this.apa_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('function_mode')) {
        this.function_mode = initObj.function_mode
      }
      else {
        this.function_mode = new FunctionModeEnum();
      }
      if (initObj.hasOwnProperty('apa_mode')) {
        this.apa_mode = initObj.apa_mode
      }
      else {
        this.apa_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysVehicleServiceInfoForParking
    // Serialize message field [function_mode]
    bufferOffset = FunctionModeEnum.serialize(obj.function_mode, buffer, bufferOffset);
    // Serialize message field [apa_mode]
    bufferOffset = _serializer.uint8(obj.apa_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysVehicleServiceInfoForParking
    let len;
    let data = new SysVehicleServiceInfoForParking(null);
    // Deserialize message field [function_mode]
    data.function_mode = FunctionModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [apa_mode]
    data.apa_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysVehicleServiceInfoForParking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ce86c98a90fb82bbfbd20feb8a58820';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FOR_APA = 0
    uint8 FOR_LPNP = 1
    uint8 FOR_PNP = 2
    system_manager_msgs/FunctionModeEnum function_mode
    uint8 apa_mode
    
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
    const resolved = new SysVehicleServiceInfoForParking(null);
    if (msg.function_mode !== undefined) {
      resolved.function_mode = FunctionModeEnum.Resolve(msg.function_mode)
    }
    else {
      resolved.function_mode = new FunctionModeEnum()
    }

    if (msg.apa_mode !== undefined) {
      resolved.apa_mode = msg.apa_mode;
    }
    else {
      resolved.apa_mode = 0
    }

    return resolved;
    }
};

// Constants for message
SysVehicleServiceInfoForParking.Constants = {
  FOR_APA: 0,
  FOR_LPNP: 1,
  FOR_PNP: 2,
}

module.exports = SysVehicleServiceInfoForParking;

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

class SsmState {
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
    // Serializes a message object of type SsmState
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SsmState
    let len;
    let data = new SsmState(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SsmState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e38500ff3e78d15e6912178d9b8134a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 255
    uint8 INIT = 0
    uint8 SHUTDOWN = 1
    uint8 MANUAL = 2
    uint8 AD = 3
    uint8 SENTINEL = 4
    uint8 PLCA = 5
    uint8 SLCA = 6
    uint8 NORMAL = 2
    uint8 CALIB_PLAC_CAMERA = 9
    uint8 CALIB_PLAC_LIDAR = 10
    uint8 CALIB_ACE_CAMERA = 11
    uint8 CALIB_ACE_LIDAR = 12
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SsmState(null);
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
SsmState.Constants = {
  NONE: 255,
  INIT: 0,
  SHUTDOWN: 1,
  MANUAL: 2,
  AD: 3,
  SENTINEL: 4,
  PLCA: 5,
  SLCA: 6,
  NORMAL: 2,
  CALIB_PLAC_CAMERA: 9,
  CALIB_PLAC_LIDAR: 10,
  CALIB_ACE_CAMERA: 11,
  CALIB_ACE_LIDAR: 12,
}

module.exports = SsmState;

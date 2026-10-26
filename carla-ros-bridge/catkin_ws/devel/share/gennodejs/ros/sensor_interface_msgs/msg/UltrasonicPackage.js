// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicBaseInfo = require('./UltrasonicBaseInfo.js');

//-----------------------------------------------------------

class UltrasonicPackage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_base_info = null;
      this.rolling_cnt = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_base_info')) {
        this.uss_base_info = initObj.uss_base_info
      }
      else {
        this.uss_base_info = [];
      }
      if (initObj.hasOwnProperty('rolling_cnt')) {
        this.rolling_cnt = initObj.rolling_cnt
      }
      else {
        this.rolling_cnt = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicPackage
    // Serialize message field [uss_base_info]
    // Serialize the length for message field [uss_base_info]
    bufferOffset = _serializer.uint32(obj.uss_base_info.length, buffer, bufferOffset);
    obj.uss_base_info.forEach((val) => {
      bufferOffset = UltrasonicBaseInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rolling_cnt]
    bufferOffset = _serializer.uint8(obj.rolling_cnt, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _arraySerializer.uint8(obj.reserved, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicPackage
    let len;
    let data = new UltrasonicPackage(null);
    // Deserialize message field [uss_base_info]
    // Deserialize array length for message field [uss_base_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_base_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_base_info[i] = UltrasonicBaseInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rolling_cnt]
    data.rolling_cnt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.uss_base_info.forEach((val) => {
      length += UltrasonicBaseInfo.getMessageSize(val);
    });
    length += object.reserved.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicPackage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42fc979e3e904aff02c78cfbb89b32b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FRONT_LEFT_SIDE = 0
    uint8 FRONT_LEFT_CORNER = 1
    uint8 FRONT_LEFT_CENTER = 2
    uint8 FRONT_RIGHT_CENTER = 3
    uint8 FRONT_RIGHT_CORNER = 4
    uint8 FRONT_RIGHT_SIDE = 5
    uint8 REAR_RIGHT_SIDE = 6
    uint8 REAR_RIGHT_CORNER = 7
    uint8 REAR_RIGHT_CENTER = 8
    uint8 REAR_LEFT_CENTER = 9
    uint8 REAR_LEFT_CORNER = 10
    uint8 REAR_LEFT_SIDE = 11
    sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info
    uint8 rolling_cnt
    uint8[] reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicBaseInfo
    sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info
    uint16 first_echo_amplitude
    int16 uss_temperature
    uint64 timestamp_us
    uint8 burst_mode
    uint8 uss_rt_width
    uint8 uss_config_status
    string reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicEhcoInfo
    float32 uss_echo_distance
    uint64 uss_echo_width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicPackage(null);
    if (msg.uss_base_info !== undefined) {
      resolved.uss_base_info = new Array(msg.uss_base_info.length);
      for (let i = 0; i < resolved.uss_base_info.length; ++i) {
        resolved.uss_base_info[i] = UltrasonicBaseInfo.Resolve(msg.uss_base_info[i]);
      }
    }
    else {
      resolved.uss_base_info = []
    }

    if (msg.rolling_cnt !== undefined) {
      resolved.rolling_cnt = msg.rolling_cnt;
    }
    else {
      resolved.rolling_cnt = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = []
    }

    return resolved;
    }
};

// Constants for message
UltrasonicPackage.Constants = {
  FRONT_LEFT_SIDE: 0,
  FRONT_LEFT_CORNER: 1,
  FRONT_LEFT_CENTER: 2,
  FRONT_RIGHT_CENTER: 3,
  FRONT_RIGHT_CORNER: 4,
  FRONT_RIGHT_SIDE: 5,
  REAR_RIGHT_SIDE: 6,
  REAR_RIGHT_CORNER: 7,
  REAR_RIGHT_CENTER: 8,
  REAR_LEFT_CENTER: 9,
  REAR_LEFT_CORNER: 10,
  REAR_LEFT_SIDE: 11,
}

module.exports = UltrasonicPackage;

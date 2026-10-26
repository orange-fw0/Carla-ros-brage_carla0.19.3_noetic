// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicEhcoInfo = require('./UltrasonicEhcoInfo.js');

//-----------------------------------------------------------

class UltrasonicBaseInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_echo_info = null;
      this.first_echo_amplitude = null;
      this.uss_temperature = null;
      this.timestamp_us = null;
      this.burst_mode = null;
      this.uss_rt_width = null;
      this.uss_config_status = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_echo_info')) {
        this.uss_echo_info = initObj.uss_echo_info
      }
      else {
        this.uss_echo_info = [];
      }
      if (initObj.hasOwnProperty('first_echo_amplitude')) {
        this.first_echo_amplitude = initObj.first_echo_amplitude
      }
      else {
        this.first_echo_amplitude = 0;
      }
      if (initObj.hasOwnProperty('uss_temperature')) {
        this.uss_temperature = initObj.uss_temperature
      }
      else {
        this.uss_temperature = 0;
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('burst_mode')) {
        this.burst_mode = initObj.burst_mode
      }
      else {
        this.burst_mode = 0;
      }
      if (initObj.hasOwnProperty('uss_rt_width')) {
        this.uss_rt_width = initObj.uss_rt_width
      }
      else {
        this.uss_rt_width = 0;
      }
      if (initObj.hasOwnProperty('uss_config_status')) {
        this.uss_config_status = initObj.uss_config_status
      }
      else {
        this.uss_config_status = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicBaseInfo
    // Serialize message field [uss_echo_info]
    // Serialize the length for message field [uss_echo_info]
    bufferOffset = _serializer.uint32(obj.uss_echo_info.length, buffer, bufferOffset);
    obj.uss_echo_info.forEach((val) => {
      bufferOffset = UltrasonicEhcoInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [first_echo_amplitude]
    bufferOffset = _serializer.uint16(obj.first_echo_amplitude, buffer, bufferOffset);
    // Serialize message field [uss_temperature]
    bufferOffset = _serializer.int16(obj.uss_temperature, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [burst_mode]
    bufferOffset = _serializer.uint8(obj.burst_mode, buffer, bufferOffset);
    // Serialize message field [uss_rt_width]
    bufferOffset = _serializer.uint8(obj.uss_rt_width, buffer, bufferOffset);
    // Serialize message field [uss_config_status]
    bufferOffset = _serializer.uint8(obj.uss_config_status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicBaseInfo
    let len;
    let data = new UltrasonicBaseInfo(null);
    // Deserialize message field [uss_echo_info]
    // Deserialize array length for message field [uss_echo_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_echo_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_echo_info[i] = UltrasonicEhcoInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [first_echo_amplitude]
    data.first_echo_amplitude = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uss_temperature]
    data.uss_temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [burst_mode]
    data.burst_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uss_rt_width]
    data.uss_rt_width = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uss_config_status]
    data.uss_config_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.uss_echo_info.length;
    length += _getByteLength(object.reserved);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicBaseInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2701173ac338dcb95699265577b91028';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UltrasonicBaseInfo(null);
    if (msg.uss_echo_info !== undefined) {
      resolved.uss_echo_info = new Array(msg.uss_echo_info.length);
      for (let i = 0; i < resolved.uss_echo_info.length; ++i) {
        resolved.uss_echo_info[i] = UltrasonicEhcoInfo.Resolve(msg.uss_echo_info[i]);
      }
    }
    else {
      resolved.uss_echo_info = []
    }

    if (msg.first_echo_amplitude !== undefined) {
      resolved.first_echo_amplitude = msg.first_echo_amplitude;
    }
    else {
      resolved.first_echo_amplitude = 0
    }

    if (msg.uss_temperature !== undefined) {
      resolved.uss_temperature = msg.uss_temperature;
    }
    else {
      resolved.uss_temperature = 0
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.burst_mode !== undefined) {
      resolved.burst_mode = msg.burst_mode;
    }
    else {
      resolved.burst_mode = 0
    }

    if (msg.uss_rt_width !== undefined) {
      resolved.uss_rt_width = msg.uss_rt_width;
    }
    else {
      resolved.uss_rt_width = 0
    }

    if (msg.uss_config_status !== undefined) {
      resolved.uss_config_status = msg.uss_config_status;
    }
    else {
      resolved.uss_config_status = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = UltrasonicBaseInfo;

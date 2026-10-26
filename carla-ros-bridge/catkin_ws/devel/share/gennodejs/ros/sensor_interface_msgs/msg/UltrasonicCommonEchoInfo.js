// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommonUssEhcoData = require('./CommonUssEhcoData.js');
let UltrasonicEchoStatus = require('./UltrasonicEchoStatus.js');

//-----------------------------------------------------------

class UltrasonicCommonEchoInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_echo_data = null;
      this.uss_echo_status = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_echo_data')) {
        this.uss_echo_data = initObj.uss_echo_data
      }
      else {
        this.uss_echo_data = [];
      }
      if (initObj.hasOwnProperty('uss_echo_status')) {
        this.uss_echo_status = initObj.uss_echo_status
      }
      else {
        this.uss_echo_status = new UltrasonicEchoStatus();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicCommonEchoInfo
    // Serialize message field [uss_echo_data]
    // Serialize the length for message field [uss_echo_data]
    bufferOffset = _serializer.uint32(obj.uss_echo_data.length, buffer, bufferOffset);
    obj.uss_echo_data.forEach((val) => {
      bufferOffset = CommonUssEhcoData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [uss_echo_status]
    bufferOffset = UltrasonicEchoStatus.serialize(obj.uss_echo_status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint64(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicCommonEchoInfo
    let len;
    let data = new UltrasonicCommonEchoInfo(null);
    // Deserialize message field [uss_echo_data]
    // Deserialize array length for message field [uss_echo_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_echo_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_echo_data[i] = CommonUssEhcoData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [uss_echo_status]
    data.uss_echo_status = UltrasonicEchoStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 49 * object.uss_echo_data.length;
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicCommonEchoInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53b64009fde5f7b2c7aaa395fdcc7b1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data
    sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status
    uint64 reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/CommonUssEhcoData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 uss_echo_distance
    float32 uss_echo_prob
    uint64 uss_echo_width
    uint16 first_echo_amplitude
    uint16 uss_rt_width
    uint16 uss_echo_quality
    uint16 echo_send_id
    uint64 reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicEchoStatus
    uint8 uss_status
    int16 uss_temperature
    uint64 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicCommonEchoInfo(null);
    if (msg.uss_echo_data !== undefined) {
      resolved.uss_echo_data = new Array(msg.uss_echo_data.length);
      for (let i = 0; i < resolved.uss_echo_data.length; ++i) {
        resolved.uss_echo_data[i] = CommonUssEhcoData.Resolve(msg.uss_echo_data[i]);
      }
    }
    else {
      resolved.uss_echo_data = []
    }

    if (msg.uss_echo_status !== undefined) {
      resolved.uss_echo_status = UltrasonicEchoStatus.Resolve(msg.uss_echo_status)
    }
    else {
      resolved.uss_echo_status = new UltrasonicEchoStatus()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = UltrasonicCommonEchoInfo;

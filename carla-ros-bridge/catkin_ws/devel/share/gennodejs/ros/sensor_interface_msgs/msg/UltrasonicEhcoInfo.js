// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UltrasonicEhcoInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_echo_distance = null;
      this.uss_echo_width = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_echo_distance')) {
        this.uss_echo_distance = initObj.uss_echo_distance
      }
      else {
        this.uss_echo_distance = 0.0;
      }
      if (initObj.hasOwnProperty('uss_echo_width')) {
        this.uss_echo_width = initObj.uss_echo_width
      }
      else {
        this.uss_echo_width = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicEhcoInfo
    // Serialize message field [uss_echo_distance]
    bufferOffset = _serializer.float32(obj.uss_echo_distance, buffer, bufferOffset);
    // Serialize message field [uss_echo_width]
    bufferOffset = _serializer.uint64(obj.uss_echo_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicEhcoInfo
    let len;
    let data = new UltrasonicEhcoInfo(null);
    // Deserialize message field [uss_echo_distance]
    data.uss_echo_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [uss_echo_width]
    data.uss_echo_width = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicEhcoInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0374e629b521929a28504f82c65b703d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 uss_echo_distance
    uint64 uss_echo_width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicEhcoInfo(null);
    if (msg.uss_echo_distance !== undefined) {
      resolved.uss_echo_distance = msg.uss_echo_distance;
    }
    else {
      resolved.uss_echo_distance = 0.0
    }

    if (msg.uss_echo_width !== undefined) {
      resolved.uss_echo_width = msg.uss_echo_width;
    }
    else {
      resolved.uss_echo_width = 0
    }

    return resolved;
    }
};

module.exports = UltrasonicEhcoInfo;

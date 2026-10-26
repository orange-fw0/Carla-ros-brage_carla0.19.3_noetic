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

class UltrasonicEchoStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_status = null;
      this.uss_temperature = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_status')) {
        this.uss_status = initObj.uss_status
      }
      else {
        this.uss_status = 0;
      }
      if (initObj.hasOwnProperty('uss_temperature')) {
        this.uss_temperature = initObj.uss_temperature
      }
      else {
        this.uss_temperature = 0;
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
    // Serializes a message object of type UltrasonicEchoStatus
    // Serialize message field [uss_status]
    bufferOffset = _serializer.uint8(obj.uss_status, buffer, bufferOffset);
    // Serialize message field [uss_temperature]
    bufferOffset = _serializer.int16(obj.uss_temperature, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint64(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicEchoStatus
    let len;
    let data = new UltrasonicEchoStatus(null);
    // Deserialize message field [uss_status]
    data.uss_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uss_temperature]
    data.uss_temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicEchoStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92066f99c351a98a053ffec5f86af339';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UltrasonicEchoStatus(null);
    if (msg.uss_status !== undefined) {
      resolved.uss_status = msg.uss_status;
    }
    else {
      resolved.uss_status = 0
    }

    if (msg.uss_temperature !== undefined) {
      resolved.uss_temperature = msg.uss_temperature;
    }
    else {
      resolved.uss_temperature = 0
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

module.exports = UltrasonicEchoStatus;

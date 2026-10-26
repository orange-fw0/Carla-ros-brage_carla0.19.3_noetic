// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');

//-----------------------------------------------------------

class UltrasonicUpaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.meta = null;
      this.upadistance = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('upadistance')) {
        this.upadistance = initObj.upadistance
      }
      else {
        this.upadistance = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicUpaData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [upadistance]
    bufferOffset = _serializer.float32(obj.upadistance, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicUpaData
    let len;
    let data = new UltrasonicUpaData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [upadistance]
    data.upadistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicUpaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32d6d66cd52cab1bd6234fade608e5f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 upadistance
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicUpaData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.upadistance !== undefined) {
      resolved.upadistance = msg.upadistance;
    }
    else {
      resolved.upadistance = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = UltrasonicUpaData;

// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DiskStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.disk_usage = null;
      this.disk_io_counters = null;
      this.reserved_info = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('health_status')) {
        this.health_status = initObj.health_status
      }
      else {
        this.health_status = 0;
      }
      if (initObj.hasOwnProperty('disk_usage')) {
        this.disk_usage = initObj.disk_usage
      }
      else {
        this.disk_usage = 0.0;
      }
      if (initObj.hasOwnProperty('disk_io_counters')) {
        this.disk_io_counters = initObj.disk_io_counters
      }
      else {
        this.disk_io_counters = '';
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [disk_usage]
    bufferOffset = _serializer.float32(obj.disk_usage, buffer, bufferOffset);
    // Serialize message field [disk_io_counters]
    bufferOffset = _serializer.string(obj.disk_io_counters, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskStatusData
    let len;
    let data = new DiskStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [disk_usage]
    data.disk_usage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_io_counters]
    data.disk_io_counters = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.disk_io_counters);
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/DiskStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14019c2aefc6eeb1fa69fe53226bbcfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    float32 disk_usage
    string disk_io_counters
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.disk_usage !== undefined) {
      resolved.disk_usage = msg.disk_usage;
    }
    else {
      resolved.disk_usage = 0.0
    }

    if (msg.disk_io_counters !== undefined) {
      resolved.disk_io_counters = msg.disk_io_counters;
    }
    else {
      resolved.disk_io_counters = ''
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
DiskStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = DiskStatusData;

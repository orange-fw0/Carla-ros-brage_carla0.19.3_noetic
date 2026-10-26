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

class MemoryStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.virtual_memory = null;
      this.swap_memory = null;
      this.top_processes = null;
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
      if (initObj.hasOwnProperty('virtual_memory')) {
        this.virtual_memory = initObj.virtual_memory
      }
      else {
        this.virtual_memory = 0.0;
      }
      if (initObj.hasOwnProperty('swap_memory')) {
        this.swap_memory = initObj.swap_memory
      }
      else {
        this.swap_memory = 0.0;
      }
      if (initObj.hasOwnProperty('top_processes')) {
        this.top_processes = initObj.top_processes
      }
      else {
        this.top_processes = [];
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
    // Serializes a message object of type MemoryStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [virtual_memory]
    bufferOffset = _serializer.float32(obj.virtual_memory, buffer, bufferOffset);
    // Serialize message field [swap_memory]
    bufferOffset = _serializer.float32(obj.swap_memory, buffer, bufferOffset);
    // Serialize message field [top_processes]
    bufferOffset = _arraySerializer.string(obj.top_processes, buffer, bufferOffset, null);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MemoryStatusData
    let len;
    let data = new MemoryStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [virtual_memory]
    data.virtual_memory = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [swap_memory]
    data.swap_memory = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [top_processes]
    data.top_processes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.top_processes.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/MemoryStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a38d78d3061e0881fd31c71772eea419';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    float32 virtual_memory
    float32 swap_memory
    string[] top_processes
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MemoryStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.virtual_memory !== undefined) {
      resolved.virtual_memory = msg.virtual_memory;
    }
    else {
      resolved.virtual_memory = 0.0
    }

    if (msg.swap_memory !== undefined) {
      resolved.swap_memory = msg.swap_memory;
    }
    else {
      resolved.swap_memory = 0.0
    }

    if (msg.top_processes !== undefined) {
      resolved.top_processes = msg.top_processes;
    }
    else {
      resolved.top_processes = []
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
MemoryStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = MemoryStatusData;

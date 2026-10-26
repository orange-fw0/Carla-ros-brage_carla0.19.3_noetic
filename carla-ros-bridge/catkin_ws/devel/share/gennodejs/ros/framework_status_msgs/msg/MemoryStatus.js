// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MemoryStatusData = require('./MemoryStatusData.js');

//-----------------------------------------------------------

class MemoryStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.memory_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('memory_status_data')) {
        this.memory_status_data = initObj.memory_status_data
      }
      else {
        this.memory_status_data = new MemoryStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MemoryStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [memory_status_data]
    bufferOffset = MemoryStatusData.serialize(obj.memory_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MemoryStatus
    let len;
    let data = new MemoryStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [memory_status_data]
    data.memory_status_data = MemoryStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MemoryStatusData.getMessageSize(object.memory_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/MemoryStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45e066a8a863afa81b1c7434ce54f1e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MEMORY_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/MemoryStatusData memory_status_data
    
    ================================================================================
    MSG: framework_status_msgs/MemoryStatusData
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
    const resolved = new MemoryStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.memory_status_data !== undefined) {
      resolved.memory_status_data = MemoryStatusData.Resolve(msg.memory_status_data)
    }
    else {
      resolved.memory_status_data = new MemoryStatusData()
    }

    return resolved;
    }
};

// Constants for message
MemoryStatus.Constants = {
  MEMORY_STATUS_DATA: 1,
}

module.exports = MemoryStatus;

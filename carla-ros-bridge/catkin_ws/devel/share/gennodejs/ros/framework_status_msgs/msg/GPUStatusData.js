// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleGPUStatus = require('./SingleGPUStatus.js');

//-----------------------------------------------------------

class GPUStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.gpu_status_list = null;
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
      if (initObj.hasOwnProperty('gpu_status_list')) {
        this.gpu_status_list = initObj.gpu_status_list
      }
      else {
        this.gpu_status_list = [];
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
    // Serializes a message object of type GPUStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [gpu_status_list]
    // Serialize the length for message field [gpu_status_list]
    bufferOffset = _serializer.uint32(obj.gpu_status_list.length, buffer, bufferOffset);
    obj.gpu_status_list.forEach((val) => {
      bufferOffset = SingleGPUStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPUStatusData
    let len;
    let data = new GPUStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpu_status_list]
    // Deserialize array length for message field [gpu_status_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gpu_status_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gpu_status_list[i] = SingleGPUStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.gpu_status_list.forEach((val) => {
      length += SingleGPUStatus.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/GPUStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf39116c8faf2b497aaedefc4d8abb33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/SingleGPUStatus[] gpu_status_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleGPUStatus
    uint8 gpu_id
    float32 gpu_current_percent
    float32 gpu_average_percent
    float32 gpu_memory_current_percent
    float32 gpu_memory_average_percent
    float32 gpu_temperature
    float32 gpu_power
    string[] top_processes
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPUStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.gpu_status_list !== undefined) {
      resolved.gpu_status_list = new Array(msg.gpu_status_list.length);
      for (let i = 0; i < resolved.gpu_status_list.length; ++i) {
        resolved.gpu_status_list[i] = SingleGPUStatus.Resolve(msg.gpu_status_list[i]);
      }
    }
    else {
      resolved.gpu_status_list = []
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
GPUStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = GPUStatusData;

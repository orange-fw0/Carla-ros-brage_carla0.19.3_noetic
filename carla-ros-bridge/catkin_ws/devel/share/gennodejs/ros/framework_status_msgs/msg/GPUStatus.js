// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPUStatusData = require('./GPUStatusData.js');

//-----------------------------------------------------------

class GPUStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gpu_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gpu_status_data')) {
        this.gpu_status_data = initObj.gpu_status_data
      }
      else {
        this.gpu_status_data = new GPUStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPUStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gpu_status_data]
    bufferOffset = GPUStatusData.serialize(obj.gpu_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPUStatus
    let len;
    let data = new GPUStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpu_status_data]
    data.gpu_status_data = GPUStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GPUStatusData.getMessageSize(object.gpu_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/GPUStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcca9a1f41861458b2ecf3b1187a3f15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GPU_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/GPUStatusData gpu_status_data
    
    ================================================================================
    MSG: framework_status_msgs/GPUStatusData
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
    const resolved = new GPUStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gpu_status_data !== undefined) {
      resolved.gpu_status_data = GPUStatusData.Resolve(msg.gpu_status_data)
    }
    else {
      resolved.gpu_status_data = new GPUStatusData()
    }

    return resolved;
    }
};

// Constants for message
GPUStatus.Constants = {
  GPU_STATUS_DATA: 1,
}

module.exports = GPUStatus;

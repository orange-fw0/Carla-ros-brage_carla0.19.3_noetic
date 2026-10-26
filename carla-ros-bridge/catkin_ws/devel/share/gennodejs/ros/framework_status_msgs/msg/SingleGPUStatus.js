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

class SingleGPUStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gpu_id = null;
      this.gpu_current_percent = null;
      this.gpu_average_percent = null;
      this.gpu_memory_current_percent = null;
      this.gpu_memory_average_percent = null;
      this.gpu_temperature = null;
      this.gpu_power = null;
      this.top_processes = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('gpu_id')) {
        this.gpu_id = initObj.gpu_id
      }
      else {
        this.gpu_id = 0;
      }
      if (initObj.hasOwnProperty('gpu_current_percent')) {
        this.gpu_current_percent = initObj.gpu_current_percent
      }
      else {
        this.gpu_current_percent = 0.0;
      }
      if (initObj.hasOwnProperty('gpu_average_percent')) {
        this.gpu_average_percent = initObj.gpu_average_percent
      }
      else {
        this.gpu_average_percent = 0.0;
      }
      if (initObj.hasOwnProperty('gpu_memory_current_percent')) {
        this.gpu_memory_current_percent = initObj.gpu_memory_current_percent
      }
      else {
        this.gpu_memory_current_percent = 0.0;
      }
      if (initObj.hasOwnProperty('gpu_memory_average_percent')) {
        this.gpu_memory_average_percent = initObj.gpu_memory_average_percent
      }
      else {
        this.gpu_memory_average_percent = 0.0;
      }
      if (initObj.hasOwnProperty('gpu_temperature')) {
        this.gpu_temperature = initObj.gpu_temperature
      }
      else {
        this.gpu_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('gpu_power')) {
        this.gpu_power = initObj.gpu_power
      }
      else {
        this.gpu_power = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleGPUStatus
    // Serialize message field [gpu_id]
    bufferOffset = _serializer.uint8(obj.gpu_id, buffer, bufferOffset);
    // Serialize message field [gpu_current_percent]
    bufferOffset = _serializer.float32(obj.gpu_current_percent, buffer, bufferOffset);
    // Serialize message field [gpu_average_percent]
    bufferOffset = _serializer.float32(obj.gpu_average_percent, buffer, bufferOffset);
    // Serialize message field [gpu_memory_current_percent]
    bufferOffset = _serializer.float32(obj.gpu_memory_current_percent, buffer, bufferOffset);
    // Serialize message field [gpu_memory_average_percent]
    bufferOffset = _serializer.float32(obj.gpu_memory_average_percent, buffer, bufferOffset);
    // Serialize message field [gpu_temperature]
    bufferOffset = _serializer.float32(obj.gpu_temperature, buffer, bufferOffset);
    // Serialize message field [gpu_power]
    bufferOffset = _serializer.float32(obj.gpu_power, buffer, bufferOffset);
    // Serialize message field [top_processes]
    bufferOffset = _arraySerializer.string(obj.top_processes, buffer, bufferOffset, null);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleGPUStatus
    let len;
    let data = new SingleGPUStatus(null);
    // Deserialize message field [gpu_id]
    data.gpu_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpu_current_percent]
    data.gpu_current_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gpu_average_percent]
    data.gpu_average_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gpu_memory_current_percent]
    data.gpu_memory_current_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gpu_memory_average_percent]
    data.gpu_memory_average_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gpu_temperature]
    data.gpu_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gpu_power]
    data.gpu_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [top_processes]
    data.top_processes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.top_processes.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.reserved_info);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/SingleGPUStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '567b4e51516174e672db45262160a686';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SingleGPUStatus(null);
    if (msg.gpu_id !== undefined) {
      resolved.gpu_id = msg.gpu_id;
    }
    else {
      resolved.gpu_id = 0
    }

    if (msg.gpu_current_percent !== undefined) {
      resolved.gpu_current_percent = msg.gpu_current_percent;
    }
    else {
      resolved.gpu_current_percent = 0.0
    }

    if (msg.gpu_average_percent !== undefined) {
      resolved.gpu_average_percent = msg.gpu_average_percent;
    }
    else {
      resolved.gpu_average_percent = 0.0
    }

    if (msg.gpu_memory_current_percent !== undefined) {
      resolved.gpu_memory_current_percent = msg.gpu_memory_current_percent;
    }
    else {
      resolved.gpu_memory_current_percent = 0.0
    }

    if (msg.gpu_memory_average_percent !== undefined) {
      resolved.gpu_memory_average_percent = msg.gpu_memory_average_percent;
    }
    else {
      resolved.gpu_memory_average_percent = 0.0
    }

    if (msg.gpu_temperature !== undefined) {
      resolved.gpu_temperature = msg.gpu_temperature;
    }
    else {
      resolved.gpu_temperature = 0.0
    }

    if (msg.gpu_power !== undefined) {
      resolved.gpu_power = msg.gpu_power;
    }
    else {
      resolved.gpu_power = 0.0
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

    return resolved;
    }
};

module.exports = SingleGPUStatus;

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

class CPUStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.cpu_count = null;
      this.cpu_current_percent = null;
      this.cpu_average_percent = null;
      this.cpu_average_load = null;
      this.cpu_average_temperature = null;
      this.cpu_average_frequency = null;
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
      if (initObj.hasOwnProperty('cpu_count')) {
        this.cpu_count = initObj.cpu_count
      }
      else {
        this.cpu_count = 0;
      }
      if (initObj.hasOwnProperty('cpu_current_percent')) {
        this.cpu_current_percent = initObj.cpu_current_percent
      }
      else {
        this.cpu_current_percent = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_average_percent')) {
        this.cpu_average_percent = initObj.cpu_average_percent
      }
      else {
        this.cpu_average_percent = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_average_load')) {
        this.cpu_average_load = initObj.cpu_average_load
      }
      else {
        this.cpu_average_load = [];
      }
      if (initObj.hasOwnProperty('cpu_average_temperature')) {
        this.cpu_average_temperature = initObj.cpu_average_temperature
      }
      else {
        this.cpu_average_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_average_frequency')) {
        this.cpu_average_frequency = initObj.cpu_average_frequency
      }
      else {
        this.cpu_average_frequency = 0.0;
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
    // Serializes a message object of type CPUStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [cpu_count]
    bufferOffset = _serializer.uint8(obj.cpu_count, buffer, bufferOffset);
    // Serialize message field [cpu_current_percent]
    bufferOffset = _serializer.float32(obj.cpu_current_percent, buffer, bufferOffset);
    // Serialize message field [cpu_average_percent]
    bufferOffset = _serializer.float32(obj.cpu_average_percent, buffer, bufferOffset);
    // Serialize message field [cpu_average_load]
    bufferOffset = _arraySerializer.float32(obj.cpu_average_load, buffer, bufferOffset, null);
    // Serialize message field [cpu_average_temperature]
    bufferOffset = _serializer.float32(obj.cpu_average_temperature, buffer, bufferOffset);
    // Serialize message field [cpu_average_frequency]
    bufferOffset = _serializer.float32(obj.cpu_average_frequency, buffer, bufferOffset);
    // Serialize message field [top_processes]
    bufferOffset = _arraySerializer.string(obj.top_processes, buffer, bufferOffset, null);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CPUStatusData
    let len;
    let data = new CPUStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cpu_count]
    data.cpu_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cpu_current_percent]
    data.cpu_current_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_average_percent]
    data.cpu_average_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_average_load]
    data.cpu_average_load = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cpu_average_temperature]
    data.cpu_average_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_average_frequency]
    data.cpu_average_frequency = _deserializer.float32(buffer, bufferOffset);
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
    length += 4 * object.cpu_average_load.length;
    object.top_processes.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/CPUStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e030de42174fd101198e334ed90191c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint8 cpu_count
    float32 cpu_current_percent
    float32 cpu_average_percent
    float32[] cpu_average_load
    float32 cpu_average_temperature
    float32 cpu_average_frequency
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
    const resolved = new CPUStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.cpu_count !== undefined) {
      resolved.cpu_count = msg.cpu_count;
    }
    else {
      resolved.cpu_count = 0
    }

    if (msg.cpu_current_percent !== undefined) {
      resolved.cpu_current_percent = msg.cpu_current_percent;
    }
    else {
      resolved.cpu_current_percent = 0.0
    }

    if (msg.cpu_average_percent !== undefined) {
      resolved.cpu_average_percent = msg.cpu_average_percent;
    }
    else {
      resolved.cpu_average_percent = 0.0
    }

    if (msg.cpu_average_load !== undefined) {
      resolved.cpu_average_load = msg.cpu_average_load;
    }
    else {
      resolved.cpu_average_load = []
    }

    if (msg.cpu_average_temperature !== undefined) {
      resolved.cpu_average_temperature = msg.cpu_average_temperature;
    }
    else {
      resolved.cpu_average_temperature = 0.0
    }

    if (msg.cpu_average_frequency !== undefined) {
      resolved.cpu_average_frequency = msg.cpu_average_frequency;
    }
    else {
      resolved.cpu_average_frequency = 0.0
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
CPUStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = CPUStatusData;

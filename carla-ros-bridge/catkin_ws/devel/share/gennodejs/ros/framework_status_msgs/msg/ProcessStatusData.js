// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleProcessStatus = require('./SingleProcessStatus.js');

//-----------------------------------------------------------

class ProcessStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.process_status_list = null;
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
      if (initObj.hasOwnProperty('process_status_list')) {
        this.process_status_list = initObj.process_status_list
      }
      else {
        this.process_status_list = [];
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
    // Serializes a message object of type ProcessStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [process_status_list]
    // Serialize the length for message field [process_status_list]
    bufferOffset = _serializer.uint32(obj.process_status_list.length, buffer, bufferOffset);
    obj.process_status_list.forEach((val) => {
      bufferOffset = SingleProcessStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessStatusData
    let len;
    let data = new ProcessStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [process_status_list]
    // Deserialize array length for message field [process_status_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.process_status_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.process_status_list[i] = SingleProcessStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.process_status_list.forEach((val) => {
      length += SingleProcessStatus.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ProcessStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6167524a80e73c4cdebc17b03657ec7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    framework_status_msgs/SingleProcessStatus[] process_status_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleProcessStatus
    string process_name
    bool is_alive
    uint8 num_threads
    float32 voluntary_ctxt_switches_rate
    float32 nonvoluntary_ctxt_switches_rate
    float32 cpu_current_percent
    float32 cpu_average_percent
    float32 memory_current_percent
    float32 memory_average_percent
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.process_status_list !== undefined) {
      resolved.process_status_list = new Array(msg.process_status_list.length);
      for (let i = 0; i < resolved.process_status_list.length; ++i) {
        resolved.process_status_list[i] = SingleProcessStatus.Resolve(msg.process_status_list[i]);
      }
    }
    else {
      resolved.process_status_list = []
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
ProcessStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = ProcessStatusData;

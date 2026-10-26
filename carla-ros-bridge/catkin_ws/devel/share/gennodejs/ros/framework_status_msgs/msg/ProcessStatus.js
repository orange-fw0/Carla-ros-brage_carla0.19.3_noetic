// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProcessStatusData = require('./ProcessStatusData.js');

//-----------------------------------------------------------

class ProcessStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.process_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('process_status_data')) {
        this.process_status_data = initObj.process_status_data
      }
      else {
        this.process_status_data = new ProcessStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [process_status_data]
    bufferOffset = ProcessStatusData.serialize(obj.process_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessStatus
    let len;
    let data = new ProcessStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [process_status_data]
    data.process_status_data = ProcessStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProcessStatusData.getMessageSize(object.process_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ProcessStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb6dd78efc43362c1ab5e180b44fffe2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PROCESS_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/ProcessStatusData process_status_data
    
    ================================================================================
    MSG: framework_status_msgs/ProcessStatusData
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
    const resolved = new ProcessStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.process_status_data !== undefined) {
      resolved.process_status_data = ProcessStatusData.Resolve(msg.process_status_data)
    }
    else {
      resolved.process_status_data = new ProcessStatusData()
    }

    return resolved;
    }
};

// Constants for message
ProcessStatus.Constants = {
  PROCESS_STATUS_DATA: 1,
}

module.exports = ProcessStatus;

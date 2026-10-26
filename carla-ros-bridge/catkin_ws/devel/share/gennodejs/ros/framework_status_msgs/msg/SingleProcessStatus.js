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

class SingleProcessStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.process_name = null;
      this.is_alive = null;
      this.num_threads = null;
      this.voluntary_ctxt_switches_rate = null;
      this.nonvoluntary_ctxt_switches_rate = null;
      this.cpu_current_percent = null;
      this.cpu_average_percent = null;
      this.memory_current_percent = null;
      this.memory_average_percent = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('process_name')) {
        this.process_name = initObj.process_name
      }
      else {
        this.process_name = '';
      }
      if (initObj.hasOwnProperty('is_alive')) {
        this.is_alive = initObj.is_alive
      }
      else {
        this.is_alive = false;
      }
      if (initObj.hasOwnProperty('num_threads')) {
        this.num_threads = initObj.num_threads
      }
      else {
        this.num_threads = 0;
      }
      if (initObj.hasOwnProperty('voluntary_ctxt_switches_rate')) {
        this.voluntary_ctxt_switches_rate = initObj.voluntary_ctxt_switches_rate
      }
      else {
        this.voluntary_ctxt_switches_rate = 0.0;
      }
      if (initObj.hasOwnProperty('nonvoluntary_ctxt_switches_rate')) {
        this.nonvoluntary_ctxt_switches_rate = initObj.nonvoluntary_ctxt_switches_rate
      }
      else {
        this.nonvoluntary_ctxt_switches_rate = 0.0;
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
      if (initObj.hasOwnProperty('memory_current_percent')) {
        this.memory_current_percent = initObj.memory_current_percent
      }
      else {
        this.memory_current_percent = 0.0;
      }
      if (initObj.hasOwnProperty('memory_average_percent')) {
        this.memory_average_percent = initObj.memory_average_percent
      }
      else {
        this.memory_average_percent = 0.0;
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
    // Serializes a message object of type SingleProcessStatus
    // Serialize message field [process_name]
    bufferOffset = _serializer.string(obj.process_name, buffer, bufferOffset);
    // Serialize message field [is_alive]
    bufferOffset = _serializer.bool(obj.is_alive, buffer, bufferOffset);
    // Serialize message field [num_threads]
    bufferOffset = _serializer.uint8(obj.num_threads, buffer, bufferOffset);
    // Serialize message field [voluntary_ctxt_switches_rate]
    bufferOffset = _serializer.float32(obj.voluntary_ctxt_switches_rate, buffer, bufferOffset);
    // Serialize message field [nonvoluntary_ctxt_switches_rate]
    bufferOffset = _serializer.float32(obj.nonvoluntary_ctxt_switches_rate, buffer, bufferOffset);
    // Serialize message field [cpu_current_percent]
    bufferOffset = _serializer.float32(obj.cpu_current_percent, buffer, bufferOffset);
    // Serialize message field [cpu_average_percent]
    bufferOffset = _serializer.float32(obj.cpu_average_percent, buffer, bufferOffset);
    // Serialize message field [memory_current_percent]
    bufferOffset = _serializer.float32(obj.memory_current_percent, buffer, bufferOffset);
    // Serialize message field [memory_average_percent]
    bufferOffset = _serializer.float32(obj.memory_average_percent, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleProcessStatus
    let len;
    let data = new SingleProcessStatus(null);
    // Deserialize message field [process_name]
    data.process_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_alive]
    data.is_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [num_threads]
    data.num_threads = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voluntary_ctxt_switches_rate]
    data.voluntary_ctxt_switches_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nonvoluntary_ctxt_switches_rate]
    data.nonvoluntary_ctxt_switches_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_current_percent]
    data.cpu_current_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_average_percent]
    data.cpu_average_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [memory_current_percent]
    data.memory_current_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [memory_average_percent]
    data.memory_average_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.process_name);
    length += _getByteLength(object.reserved_info);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/SingleProcessStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1133ed95563b8c6784551432d03b60d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SingleProcessStatus(null);
    if (msg.process_name !== undefined) {
      resolved.process_name = msg.process_name;
    }
    else {
      resolved.process_name = ''
    }

    if (msg.is_alive !== undefined) {
      resolved.is_alive = msg.is_alive;
    }
    else {
      resolved.is_alive = false
    }

    if (msg.num_threads !== undefined) {
      resolved.num_threads = msg.num_threads;
    }
    else {
      resolved.num_threads = 0
    }

    if (msg.voluntary_ctxt_switches_rate !== undefined) {
      resolved.voluntary_ctxt_switches_rate = msg.voluntary_ctxt_switches_rate;
    }
    else {
      resolved.voluntary_ctxt_switches_rate = 0.0
    }

    if (msg.nonvoluntary_ctxt_switches_rate !== undefined) {
      resolved.nonvoluntary_ctxt_switches_rate = msg.nonvoluntary_ctxt_switches_rate;
    }
    else {
      resolved.nonvoluntary_ctxt_switches_rate = 0.0
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

    if (msg.memory_current_percent !== undefined) {
      resolved.memory_current_percent = msg.memory_current_percent;
    }
    else {
      resolved.memory_current_percent = 0.0
    }

    if (msg.memory_average_percent !== undefined) {
      resolved.memory_average_percent = msg.memory_average_percent;
    }
    else {
      resolved.memory_average_percent = 0.0
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

module.exports = SingleProcessStatus;

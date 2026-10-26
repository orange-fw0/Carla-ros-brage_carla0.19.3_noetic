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

class NodeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.node_type = null;
      this.task_type = null;
      this.status = null;
      this.detail_status = null;
      this.detail_value = null;
      this.reserved_info = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('node_type')) {
        this.node_type = initObj.node_type
      }
      else {
        this.node_type = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('detail_status')) {
        this.detail_status = initObj.detail_status
      }
      else {
        this.detail_status = 0;
      }
      if (initObj.hasOwnProperty('detail_value')) {
        this.detail_value = initObj.detail_value
      }
      else {
        this.detail_value = 0.0;
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
    // Serializes a message object of type NodeStatus
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [node_type]
    bufferOffset = _serializer.uint16(obj.node_type, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.uint16(obj.task_type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [detail_status]
    bufferOffset = _serializer.uint16(obj.detail_status, buffer, bufferOffset);
    // Serialize message field [detail_value]
    bufferOffset = _serializer.float32(obj.detail_value, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeStatus
    let len;
    let data = new NodeStatus(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [node_type]
    data.node_type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [detail_status]
    data.detail_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [detail_value]
    data.detail_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/NodeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '580ffc7c921cc1df477098522067b6c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    uint16 node_type
    uint16 task_type
    uint16 status
    uint16 detail_status
    float32 detail_value
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeStatus(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.node_type !== undefined) {
      resolved.node_type = msg.node_type;
    }
    else {
      resolved.node_type = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.detail_status !== undefined) {
      resolved.detail_status = msg.detail_status;
    }
    else {
      resolved.detail_status = 0
    }

    if (msg.detail_value !== undefined) {
      resolved.detail_value = msg.detail_value;
    }
    else {
      resolved.detail_value = 0.0
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

module.exports = NodeStatus;

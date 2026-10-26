// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StatisticValue = require('./StatisticValue.js');

//-----------------------------------------------------------

class SingleMessageStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.name = null;
      this.start_timestamp_us = null;
      this.end_timestamp_us = null;
      this.frame_rate = null;
      this.standard_frame_rate = null;
      this.interval_ms = null;
      this.header_delay_ms = null;
      this.current_loss_frame_count = null;
      this.total_loss_frame_count = null;
      this.in_order = null;
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
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('start_timestamp_us')) {
        this.start_timestamp_us = initObj.start_timestamp_us
      }
      else {
        this.start_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('end_timestamp_us')) {
        this.end_timestamp_us = initObj.end_timestamp_us
      }
      else {
        this.end_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('frame_rate')) {
        this.frame_rate = initObj.frame_rate
      }
      else {
        this.frame_rate = 0.0;
      }
      if (initObj.hasOwnProperty('standard_frame_rate')) {
        this.standard_frame_rate = initObj.standard_frame_rate
      }
      else {
        this.standard_frame_rate = 0.0;
      }
      if (initObj.hasOwnProperty('interval_ms')) {
        this.interval_ms = initObj.interval_ms
      }
      else {
        this.interval_ms = new StatisticValue();
      }
      if (initObj.hasOwnProperty('header_delay_ms')) {
        this.header_delay_ms = initObj.header_delay_ms
      }
      else {
        this.header_delay_ms = new StatisticValue();
      }
      if (initObj.hasOwnProperty('current_loss_frame_count')) {
        this.current_loss_frame_count = initObj.current_loss_frame_count
      }
      else {
        this.current_loss_frame_count = 0;
      }
      if (initObj.hasOwnProperty('total_loss_frame_count')) {
        this.total_loss_frame_count = initObj.total_loss_frame_count
      }
      else {
        this.total_loss_frame_count = 0;
      }
      if (initObj.hasOwnProperty('in_order')) {
        this.in_order = initObj.in_order
      }
      else {
        this.in_order = false;
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
    // Serializes a message object of type SingleMessageStatus
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [start_timestamp_us]
    bufferOffset = _serializer.uint64(obj.start_timestamp_us, buffer, bufferOffset);
    // Serialize message field [end_timestamp_us]
    bufferOffset = _serializer.uint64(obj.end_timestamp_us, buffer, bufferOffset);
    // Serialize message field [frame_rate]
    bufferOffset = _serializer.float32(obj.frame_rate, buffer, bufferOffset);
    // Serialize message field [standard_frame_rate]
    bufferOffset = _serializer.float32(obj.standard_frame_rate, buffer, bufferOffset);
    // Serialize message field [interval_ms]
    bufferOffset = StatisticValue.serialize(obj.interval_ms, buffer, bufferOffset);
    // Serialize message field [header_delay_ms]
    bufferOffset = StatisticValue.serialize(obj.header_delay_ms, buffer, bufferOffset);
    // Serialize message field [current_loss_frame_count]
    bufferOffset = _serializer.uint32(obj.current_loss_frame_count, buffer, bufferOffset);
    // Serialize message field [total_loss_frame_count]
    bufferOffset = _serializer.uint32(obj.total_loss_frame_count, buffer, bufferOffset);
    // Serialize message field [in_order]
    bufferOffset = _serializer.bool(obj.in_order, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleMessageStatus
    let len;
    let data = new SingleMessageStatus(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_timestamp_us]
    data.start_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [end_timestamp_us]
    data.end_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [frame_rate]
    data.frame_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_frame_rate]
    data.standard_frame_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interval_ms]
    data.interval_ms = StatisticValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [header_delay_ms]
    data.header_delay_ms = StatisticValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_loss_frame_count]
    data.current_loss_frame_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [total_loss_frame_count]
    data.total_loss_frame_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [in_order]
    data.in_order = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += StatisticValue.getMessageSize(object.interval_ms);
    length += StatisticValue.getMessageSize(object.header_delay_ms);
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/SingleMessageStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b58f7eccb3c47ab12531866eb61deccf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    string name
    uint64 start_timestamp_us
    uint64 end_timestamp_us
    float32 frame_rate
    float32 standard_frame_rate
    framework_status_msgs/StatisticValue interval_ms
    framework_status_msgs/StatisticValue header_delay_ms
    uint32 current_loss_frame_count
    uint32 total_loss_frame_count
    bool in_order
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/StatisticValue
    float32 average
    float32 standard_deviation
    float32 max_value
    float32 min_value
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleMessageStatus(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.start_timestamp_us !== undefined) {
      resolved.start_timestamp_us = msg.start_timestamp_us;
    }
    else {
      resolved.start_timestamp_us = 0
    }

    if (msg.end_timestamp_us !== undefined) {
      resolved.end_timestamp_us = msg.end_timestamp_us;
    }
    else {
      resolved.end_timestamp_us = 0
    }

    if (msg.frame_rate !== undefined) {
      resolved.frame_rate = msg.frame_rate;
    }
    else {
      resolved.frame_rate = 0.0
    }

    if (msg.standard_frame_rate !== undefined) {
      resolved.standard_frame_rate = msg.standard_frame_rate;
    }
    else {
      resolved.standard_frame_rate = 0.0
    }

    if (msg.interval_ms !== undefined) {
      resolved.interval_ms = StatisticValue.Resolve(msg.interval_ms)
    }
    else {
      resolved.interval_ms = new StatisticValue()
    }

    if (msg.header_delay_ms !== undefined) {
      resolved.header_delay_ms = StatisticValue.Resolve(msg.header_delay_ms)
    }
    else {
      resolved.header_delay_ms = new StatisticValue()
    }

    if (msg.current_loss_frame_count !== undefined) {
      resolved.current_loss_frame_count = msg.current_loss_frame_count;
    }
    else {
      resolved.current_loss_frame_count = 0
    }

    if (msg.total_loss_frame_count !== undefined) {
      resolved.total_loss_frame_count = msg.total_loss_frame_count;
    }
    else {
      resolved.total_loss_frame_count = 0
    }

    if (msg.in_order !== undefined) {
      resolved.in_order = msg.in_order;
    }
    else {
      resolved.in_order = false
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
SingleMessageStatus.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = SingleMessageStatus;

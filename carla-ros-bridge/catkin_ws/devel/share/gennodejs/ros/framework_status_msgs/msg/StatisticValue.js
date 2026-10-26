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

class StatisticValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.average = null;
      this.standard_deviation = null;
      this.max_value = null;
      this.min_value = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('average')) {
        this.average = initObj.average
      }
      else {
        this.average = 0.0;
      }
      if (initObj.hasOwnProperty('standard_deviation')) {
        this.standard_deviation = initObj.standard_deviation
      }
      else {
        this.standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('max_value')) {
        this.max_value = initObj.max_value
      }
      else {
        this.max_value = 0.0;
      }
      if (initObj.hasOwnProperty('min_value')) {
        this.min_value = initObj.min_value
      }
      else {
        this.min_value = 0.0;
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
    // Serializes a message object of type StatisticValue
    // Serialize message field [average]
    bufferOffset = _serializer.float32(obj.average, buffer, bufferOffset);
    // Serialize message field [standard_deviation]
    bufferOffset = _serializer.float32(obj.standard_deviation, buffer, bufferOffset);
    // Serialize message field [max_value]
    bufferOffset = _serializer.float32(obj.max_value, buffer, bufferOffset);
    // Serialize message field [min_value]
    bufferOffset = _serializer.float32(obj.min_value, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatisticValue
    let len;
    let data = new StatisticValue(null);
    // Deserialize message field [average]
    data.average = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_deviation]
    data.standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_value]
    data.max_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_value]
    data.min_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/StatisticValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0580c594ccf54ba77b24de03f364ba5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new StatisticValue(null);
    if (msg.average !== undefined) {
      resolved.average = msg.average;
    }
    else {
      resolved.average = 0.0
    }

    if (msg.standard_deviation !== undefined) {
      resolved.standard_deviation = msg.standard_deviation;
    }
    else {
      resolved.standard_deviation = 0.0
    }

    if (msg.max_value !== undefined) {
      resolved.max_value = msg.max_value;
    }
    else {
      resolved.max_value = 0.0
    }

    if (msg.min_value !== undefined) {
      resolved.min_value = msg.min_value;
    }
    else {
      resolved.min_value = 0.0
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

module.exports = StatisticValue;

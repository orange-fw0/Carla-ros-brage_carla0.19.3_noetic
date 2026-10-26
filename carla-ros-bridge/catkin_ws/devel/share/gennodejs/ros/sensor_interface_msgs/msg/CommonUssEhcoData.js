// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');

//-----------------------------------------------------------

class CommonUssEhcoData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.meta = null;
      this.uss_echo_distance = null;
      this.uss_echo_prob = null;
      this.uss_echo_width = null;
      this.first_echo_amplitude = null;
      this.uss_rt_width = null;
      this.uss_echo_quality = null;
      this.echo_send_id = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('uss_echo_distance')) {
        this.uss_echo_distance = initObj.uss_echo_distance
      }
      else {
        this.uss_echo_distance = 0.0;
      }
      if (initObj.hasOwnProperty('uss_echo_prob')) {
        this.uss_echo_prob = initObj.uss_echo_prob
      }
      else {
        this.uss_echo_prob = 0.0;
      }
      if (initObj.hasOwnProperty('uss_echo_width')) {
        this.uss_echo_width = initObj.uss_echo_width
      }
      else {
        this.uss_echo_width = 0;
      }
      if (initObj.hasOwnProperty('first_echo_amplitude')) {
        this.first_echo_amplitude = initObj.first_echo_amplitude
      }
      else {
        this.first_echo_amplitude = 0;
      }
      if (initObj.hasOwnProperty('uss_rt_width')) {
        this.uss_rt_width = initObj.uss_rt_width
      }
      else {
        this.uss_rt_width = 0;
      }
      if (initObj.hasOwnProperty('uss_echo_quality')) {
        this.uss_echo_quality = initObj.uss_echo_quality
      }
      else {
        this.uss_echo_quality = 0;
      }
      if (initObj.hasOwnProperty('echo_send_id')) {
        this.echo_send_id = initObj.echo_send_id
      }
      else {
        this.echo_send_id = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonUssEhcoData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [uss_echo_distance]
    bufferOffset = _serializer.float32(obj.uss_echo_distance, buffer, bufferOffset);
    // Serialize message field [uss_echo_prob]
    bufferOffset = _serializer.float32(obj.uss_echo_prob, buffer, bufferOffset);
    // Serialize message field [uss_echo_width]
    bufferOffset = _serializer.uint64(obj.uss_echo_width, buffer, bufferOffset);
    // Serialize message field [first_echo_amplitude]
    bufferOffset = _serializer.uint16(obj.first_echo_amplitude, buffer, bufferOffset);
    // Serialize message field [uss_rt_width]
    bufferOffset = _serializer.uint16(obj.uss_rt_width, buffer, bufferOffset);
    // Serialize message field [uss_echo_quality]
    bufferOffset = _serializer.uint16(obj.uss_echo_quality, buffer, bufferOffset);
    // Serialize message field [echo_send_id]
    bufferOffset = _serializer.uint16(obj.echo_send_id, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint64(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonUssEhcoData
    let len;
    let data = new CommonUssEhcoData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_echo_distance]
    data.uss_echo_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [uss_echo_prob]
    data.uss_echo_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [uss_echo_width]
    data.uss_echo_width = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [first_echo_amplitude]
    data.first_echo_amplitude = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uss_rt_width]
    data.uss_rt_width = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uss_echo_quality]
    data.uss_echo_quality = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [echo_send_id]
    data.echo_send_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/CommonUssEhcoData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8040a35339c7a69a482519e4981d6c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 uss_echo_distance
    float32 uss_echo_prob
    uint64 uss_echo_width
    uint16 first_echo_amplitude
    uint16 uss_rt_width
    uint16 uss_echo_quality
    uint16 echo_send_id
    uint64 reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommonUssEhcoData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.uss_echo_distance !== undefined) {
      resolved.uss_echo_distance = msg.uss_echo_distance;
    }
    else {
      resolved.uss_echo_distance = 0.0
    }

    if (msg.uss_echo_prob !== undefined) {
      resolved.uss_echo_prob = msg.uss_echo_prob;
    }
    else {
      resolved.uss_echo_prob = 0.0
    }

    if (msg.uss_echo_width !== undefined) {
      resolved.uss_echo_width = msg.uss_echo_width;
    }
    else {
      resolved.uss_echo_width = 0
    }

    if (msg.first_echo_amplitude !== undefined) {
      resolved.first_echo_amplitude = msg.first_echo_amplitude;
    }
    else {
      resolved.first_echo_amplitude = 0
    }

    if (msg.uss_rt_width !== undefined) {
      resolved.uss_rt_width = msg.uss_rt_width;
    }
    else {
      resolved.uss_rt_width = 0
    }

    if (msg.uss_echo_quality !== undefined) {
      resolved.uss_echo_quality = msg.uss_echo_quality;
    }
    else {
      resolved.uss_echo_quality = 0
    }

    if (msg.echo_send_id !== undefined) {
      resolved.echo_send_id = msg.echo_send_id;
    }
    else {
      resolved.echo_send_id = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = CommonUssEhcoData;

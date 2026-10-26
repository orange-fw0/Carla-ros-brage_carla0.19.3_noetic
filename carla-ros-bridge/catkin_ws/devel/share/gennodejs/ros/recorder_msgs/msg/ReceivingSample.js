// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ReceivingSample {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.interval = null;
      this.data_rate = null;
      this.topics = null;
      this.data_types = null;
      this.msg_counts = null;
      this.msg_rates = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('data_rate')) {
        this.data_rate = initObj.data_rate
      }
      else {
        this.data_rate = 0.0;
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('data_types')) {
        this.data_types = initObj.data_types
      }
      else {
        this.data_types = [];
      }
      if (initObj.hasOwnProperty('msg_counts')) {
        this.msg_counts = initObj.msg_counts
      }
      else {
        this.msg_counts = [];
      }
      if (initObj.hasOwnProperty('msg_rates')) {
        this.msg_rates = initObj.msg_rates
      }
      else {
        this.msg_rates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReceivingSample
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [interval]
    bufferOffset = _serializer.duration(obj.interval, buffer, bufferOffset);
    // Serialize message field [data_rate]
    bufferOffset = _serializer.float64(obj.data_rate, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [data_types]
    bufferOffset = _arraySerializer.string(obj.data_types, buffer, bufferOffset, null);
    // Serialize message field [msg_counts]
    bufferOffset = _arraySerializer.uint32(obj.msg_counts, buffer, bufferOffset, null);
    // Serialize message field [msg_rates]
    bufferOffset = _arraySerializer.float32(obj.msg_rates, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReceivingSample
    let len;
    let data = new ReceivingSample(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [interval]
    data.interval = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [data_rate]
    data.data_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [data_types]
    data.data_types = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [msg_counts]
    data.msg_counts = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [msg_rates]
    data.msg_rates = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.data_types.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.msg_counts.length;
    length += 4 * object.msg_rates.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/ReceivingSample';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9210a6278e54f51ea79ea819ee852ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    duration interval
    float64 data_rate
    string[] topics
    string[] data_types
    uint32[] msg_counts
    float32[] msg_rates
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReceivingSample(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = {secs: 0, nsecs: 0}
    }

    if (msg.data_rate !== undefined) {
      resolved.data_rate = msg.data_rate;
    }
    else {
      resolved.data_rate = 0.0
    }

    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.data_types !== undefined) {
      resolved.data_types = msg.data_types;
    }
    else {
      resolved.data_types = []
    }

    if (msg.msg_counts !== undefined) {
      resolved.msg_counts = msg.msg_counts;
    }
    else {
      resolved.msg_counts = []
    }

    if (msg.msg_rates !== undefined) {
      resolved.msg_rates = msg.msg_rates;
    }
    else {
      resolved.msg_rates = []
    }

    return resolved;
    }
};

module.exports = ReceivingSample;

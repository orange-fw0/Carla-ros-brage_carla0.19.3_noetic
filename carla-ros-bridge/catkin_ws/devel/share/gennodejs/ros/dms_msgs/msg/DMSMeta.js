// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DMSMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.frame_id = null;
      this.timestamp_us = null;
      this.delay_timestamp_us = null;
      this.consumption_time_us = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('delay_timestamp_us')) {
        this.delay_timestamp_us = initObj.delay_timestamp_us
      }
      else {
        this.delay_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('consumption_time_us')) {
        this.consumption_time_us = initObj.consumption_time_us
      }
      else {
        this.consumption_time_us = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSMeta
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint64(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [delay_timestamp_us]
    bufferOffset = _serializer.uint64(obj.delay_timestamp_us, buffer, bufferOffset);
    // Serialize message field [consumption_time_us]
    bufferOffset = _serializer.uint64(obj.consumption_time_us, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSMeta
    let len;
    let data = new DMSMeta(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [delay_timestamp_us]
    data.delay_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [consumption_time_us]
    data.consumption_time_us = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08a1c8c7562788c33afc722fd4b5bc1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 FRAME_RESULT_AVAILABLE = 1
    uint16 EVENT_RESULT_AVAILABLE = 2
    uint16 FUSA_RESULT_AVAILABLE = 4
    uint16 RESERVED = 8
    uint16 RESERVED2 = 16
    uint16 available
    uint64 frame_id
    uint64 timestamp_us
    uint64 delay_timestamp_us
    uint64 consumption_time_us
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSMeta(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.delay_timestamp_us !== undefined) {
      resolved.delay_timestamp_us = msg.delay_timestamp_us;
    }
    else {
      resolved.delay_timestamp_us = 0
    }

    if (msg.consumption_time_us !== undefined) {
      resolved.consumption_time_us = msg.consumption_time_us;
    }
    else {
      resolved.consumption_time_us = 0
    }

    return resolved;
    }
};

// Constants for message
DMSMeta.Constants = {
  FRAME_RESULT_AVAILABLE: 1,
  EVENT_RESULT_AVAILABLE: 2,
  FUSA_RESULT_AVAILABLE: 4,
  RESERVED: 8,
  RESERVED2: 16,
}

module.exports = DMSMeta;

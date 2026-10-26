// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FusionAPAMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.pipeline_start_timestamp_us = null;
      this.pipeline_finish_timestamp_us = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('pipeline_start_timestamp_us')) {
        this.pipeline_start_timestamp_us = initObj.pipeline_start_timestamp_us
      }
      else {
        this.pipeline_start_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('pipeline_finish_timestamp_us')) {
        this.pipeline_finish_timestamp_us = initObj.pipeline_finish_timestamp_us
      }
      else {
        this.pipeline_finish_timestamp_us = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionAPAMeta
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_start_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_start_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_finish_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_finish_timestamp_us, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionAPAMeta
    let len;
    let data = new FusionAPAMeta(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_start_timestamp_us]
    data.pipeline_start_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_finish_timestamp_us]
    data.pipeline_finish_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/FusionAPAMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31c194913ed8a92c5988ed26f06b7127';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionAPAMeta(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.pipeline_start_timestamp_us !== undefined) {
      resolved.pipeline_start_timestamp_us = msg.pipeline_start_timestamp_us;
    }
    else {
      resolved.pipeline_start_timestamp_us = 0
    }

    if (msg.pipeline_finish_timestamp_us !== undefined) {
      resolved.pipeline_finish_timestamp_us = msg.pipeline_finish_timestamp_us;
    }
    else {
      resolved.pipeline_finish_timestamp_us = 0
    }

    return resolved;
    }
};

module.exports = FusionAPAMeta;

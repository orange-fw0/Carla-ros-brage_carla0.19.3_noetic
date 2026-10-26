// Auto-generated. Do not edit!

// (in-package sensor_adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AdasMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_timestamp_us = null;
      this.pipeline_start_timestamp_us = null;
      this.pipeline_finish_timestamp_us = null;
      this.seq = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_timestamp_us')) {
        this.sensor_timestamp_us = initObj.sensor_timestamp_us
      }
      else {
        this.sensor_timestamp_us = 0;
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
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdasMeta
    // Serialize message field [sensor_timestamp_us]
    bufferOffset = _serializer.uint64(obj.sensor_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_start_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_start_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_finish_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_finish_timestamp_us, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint64(obj.seq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdasMeta
    let len;
    let data = new AdasMeta(null);
    // Deserialize message field [sensor_timestamp_us]
    data.sensor_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_start_timestamp_us]
    data.pipeline_start_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_finish_timestamp_us]
    data.pipeline_finish_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/AdasMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90ac8b382a8b0741e8ef56a3e4d296a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdasMeta(null);
    if (msg.sensor_timestamp_us !== undefined) {
      resolved.sensor_timestamp_us = msg.sensor_timestamp_us;
    }
    else {
      resolved.sensor_timestamp_us = 0
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

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    return resolved;
    }
};

module.exports = AdasMeta;

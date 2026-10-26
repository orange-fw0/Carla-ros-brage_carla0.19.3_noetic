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

class PredictionResultMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_timestamp_us = null;
      this.pipeline_start_timestamp_us = null;
      this.pipeline_finish_timestamp_us = null;
      this.frame_id = null;
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
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionResultMeta
    // Serialize message field [sensor_timestamp_us]
    bufferOffset = _serializer.uint64(obj.sensor_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_start_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_start_timestamp_us, buffer, bufferOffset);
    // Serialize message field [pipeline_finish_timestamp_us]
    bufferOffset = _serializer.uint64(obj.pipeline_finish_timestamp_us, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionResultMeta
    let len;
    let data = new PredictionResultMeta(null);
    // Deserialize message field [sensor_timestamp_us]
    data.sensor_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_start_timestamp_us]
    data.pipeline_start_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pipeline_finish_timestamp_us]
    data.pipeline_finish_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/PredictionResultMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca1db8fdea922c3985c22426c44ba00c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionResultMeta(null);
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

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    return resolved;
    }
};

module.exports = PredictionResultMeta;

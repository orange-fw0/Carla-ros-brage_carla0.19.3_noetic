// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PredictionDisplayConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prediction_topic = null;
      this.judge_topic = null;
      this.track_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('prediction_topic')) {
        this.prediction_topic = initObj.prediction_topic
      }
      else {
        this.prediction_topic = '';
      }
      if (initObj.hasOwnProperty('judge_topic')) {
        this.judge_topic = initObj.judge_topic
      }
      else {
        this.judge_topic = '';
      }
      if (initObj.hasOwnProperty('track_ids')) {
        this.track_ids = initObj.track_ids
      }
      else {
        this.track_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionDisplayConfig
    // Serialize message field [prediction_topic]
    bufferOffset = _serializer.string(obj.prediction_topic, buffer, bufferOffset);
    // Serialize message field [judge_topic]
    bufferOffset = _serializer.string(obj.judge_topic, buffer, bufferOffset);
    // Serialize message field [track_ids]
    bufferOffset = _arraySerializer.uint64(obj.track_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionDisplayConfig
    let len;
    let data = new PredictionDisplayConfig(null);
    // Deserialize message field [prediction_topic]
    data.prediction_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [judge_topic]
    data.judge_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [track_ids]
    data.track_ids = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prediction_topic);
    length += _getByteLength(object.judge_topic);
    length += 8 * object.track_ids.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionDisplayConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '032ecc8c884a3b0f29ba4bf908dd506a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prediction_topic
    string judge_topic
    uint64[] track_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionDisplayConfig(null);
    if (msg.prediction_topic !== undefined) {
      resolved.prediction_topic = msg.prediction_topic;
    }
    else {
      resolved.prediction_topic = ''
    }

    if (msg.judge_topic !== undefined) {
      resolved.judge_topic = msg.judge_topic;
    }
    else {
      resolved.judge_topic = ''
    }

    if (msg.track_ids !== undefined) {
      resolved.track_ids = msg.track_ids;
    }
    else {
      resolved.track_ids = []
    }

    return resolved;
    }
};

module.exports = PredictionDisplayConfig;

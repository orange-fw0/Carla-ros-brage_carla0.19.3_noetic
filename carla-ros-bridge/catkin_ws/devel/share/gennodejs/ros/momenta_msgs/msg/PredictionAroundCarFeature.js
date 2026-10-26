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

class PredictionAroundCarFeature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relative_s = null;
      this.relative_r = null;
      this.relative_v = null;
    }
    else {
      if (initObj.hasOwnProperty('relative_s')) {
        this.relative_s = initObj.relative_s
      }
      else {
        this.relative_s = 0.0;
      }
      if (initObj.hasOwnProperty('relative_r')) {
        this.relative_r = initObj.relative_r
      }
      else {
        this.relative_r = 0.0;
      }
      if (initObj.hasOwnProperty('relative_v')) {
        this.relative_v = initObj.relative_v
      }
      else {
        this.relative_v = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionAroundCarFeature
    // Serialize message field [relative_s]
    bufferOffset = _serializer.float32(obj.relative_s, buffer, bufferOffset);
    // Serialize message field [relative_r]
    bufferOffset = _serializer.float32(obj.relative_r, buffer, bufferOffset);
    // Serialize message field [relative_v]
    bufferOffset = _serializer.float32(obj.relative_v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionAroundCarFeature
    let len;
    let data = new PredictionAroundCarFeature(null);
    // Deserialize message field [relative_s]
    data.relative_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_r]
    data.relative_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_v]
    data.relative_v = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionAroundCarFeature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2769a394a3978c8fd6423b3f867021d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 relative_s
    float32 relative_r
    float32 relative_v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionAroundCarFeature(null);
    if (msg.relative_s !== undefined) {
      resolved.relative_s = msg.relative_s;
    }
    else {
      resolved.relative_s = 0.0
    }

    if (msg.relative_r !== undefined) {
      resolved.relative_r = msg.relative_r;
    }
    else {
      resolved.relative_r = 0.0
    }

    if (msg.relative_v !== undefined) {
      resolved.relative_v = msg.relative_v;
    }
    else {
      resolved.relative_v = 0.0
    }

    return resolved;
    }
};

module.exports = PredictionAroundCarFeature;

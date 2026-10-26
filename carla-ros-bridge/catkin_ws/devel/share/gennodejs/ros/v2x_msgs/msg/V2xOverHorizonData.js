// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class V2xOverHorizonData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intersection_id = null;
      this.video_url = null;
    }
    else {
      if (initObj.hasOwnProperty('intersection_id')) {
        this.intersection_id = initObj.intersection_id
      }
      else {
        this.intersection_id = 0;
      }
      if (initObj.hasOwnProperty('video_url')) {
        this.video_url = initObj.video_url
      }
      else {
        this.video_url = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xOverHorizonData
    // Serialize message field [intersection_id]
    bufferOffset = _serializer.int32(obj.intersection_id, buffer, bufferOffset);
    // Serialize message field [video_url]
    bufferOffset = _serializer.string(obj.video_url, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xOverHorizonData
    let len;
    let data = new V2xOverHorizonData(null);
    // Deserialize message field [intersection_id]
    data.intersection_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [video_url]
    data.video_url = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.video_url);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xOverHorizonData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0568ea9f09ca526eab90db6b4cab22a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 intersection_id
    string video_url
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xOverHorizonData(null);
    if (msg.intersection_id !== undefined) {
      resolved.intersection_id = msg.intersection_id;
    }
    else {
      resolved.intersection_id = 0
    }

    if (msg.video_url !== undefined) {
      resolved.video_url = msg.video_url;
    }
    else {
      resolved.video_url = ''
    }

    return resolved;
    }
};

module.exports = V2xOverHorizonData;

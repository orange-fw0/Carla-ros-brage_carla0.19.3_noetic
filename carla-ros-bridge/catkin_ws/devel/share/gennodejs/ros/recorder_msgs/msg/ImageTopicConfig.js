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

class ImageTopicConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_topics = null;
      this.in_transport = null;
      this.in_suffix = null;
      this.out_transport = null;
      this.out_suffix = null;
      this.out_params = null;
    }
    else {
      if (initObj.hasOwnProperty('base_topics')) {
        this.base_topics = initObj.base_topics
      }
      else {
        this.base_topics = [];
      }
      if (initObj.hasOwnProperty('in_transport')) {
        this.in_transport = initObj.in_transport
      }
      else {
        this.in_transport = '';
      }
      if (initObj.hasOwnProperty('in_suffix')) {
        this.in_suffix = initObj.in_suffix
      }
      else {
        this.in_suffix = '';
      }
      if (initObj.hasOwnProperty('out_transport')) {
        this.out_transport = initObj.out_transport
      }
      else {
        this.out_transport = '';
      }
      if (initObj.hasOwnProperty('out_suffix')) {
        this.out_suffix = initObj.out_suffix
      }
      else {
        this.out_suffix = '';
      }
      if (initObj.hasOwnProperty('out_params')) {
        this.out_params = initObj.out_params
      }
      else {
        this.out_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageTopicConfig
    // Serialize message field [base_topics]
    bufferOffset = _arraySerializer.string(obj.base_topics, buffer, bufferOffset, null);
    // Serialize message field [in_transport]
    bufferOffset = _serializer.string(obj.in_transport, buffer, bufferOffset);
    // Serialize message field [in_suffix]
    bufferOffset = _serializer.string(obj.in_suffix, buffer, bufferOffset);
    // Serialize message field [out_transport]
    bufferOffset = _serializer.string(obj.out_transport, buffer, bufferOffset);
    // Serialize message field [out_suffix]
    bufferOffset = _serializer.string(obj.out_suffix, buffer, bufferOffset);
    // Serialize message field [out_params]
    bufferOffset = _serializer.string(obj.out_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageTopicConfig
    let len;
    let data = new ImageTopicConfig(null);
    // Deserialize message field [base_topics]
    data.base_topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [in_transport]
    data.in_transport = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [in_suffix]
    data.in_suffix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [out_transport]
    data.out_transport = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [out_suffix]
    data.out_suffix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [out_params]
    data.out_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.base_topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.in_transport);
    length += _getByteLength(object.in_suffix);
    length += _getByteLength(object.out_transport);
    length += _getByteLength(object.out_suffix);
    length += _getByteLength(object.out_params);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/ImageTopicConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '012b848787541c6ee8f6c96e1e8a1d52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] base_topics
    string in_transport
    string in_suffix
    string out_transport
    string out_suffix
    string out_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageTopicConfig(null);
    if (msg.base_topics !== undefined) {
      resolved.base_topics = msg.base_topics;
    }
    else {
      resolved.base_topics = []
    }

    if (msg.in_transport !== undefined) {
      resolved.in_transport = msg.in_transport;
    }
    else {
      resolved.in_transport = ''
    }

    if (msg.in_suffix !== undefined) {
      resolved.in_suffix = msg.in_suffix;
    }
    else {
      resolved.in_suffix = ''
    }

    if (msg.out_transport !== undefined) {
      resolved.out_transport = msg.out_transport;
    }
    else {
      resolved.out_transport = ''
    }

    if (msg.out_suffix !== undefined) {
      resolved.out_suffix = msg.out_suffix;
    }
    else {
      resolved.out_suffix = ''
    }

    if (msg.out_params !== undefined) {
      resolved.out_params = msg.out_params;
    }
    else {
      resolved.out_params = ''
    }

    return resolved;
    }
};

module.exports = ImageTopicConfig;

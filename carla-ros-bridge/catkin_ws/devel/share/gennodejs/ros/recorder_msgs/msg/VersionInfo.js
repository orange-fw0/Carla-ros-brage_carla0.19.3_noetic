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

class VersionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_version = null;
      this.recorder_version = null;
      this.config_variant = null;
      this.config_version = null;
      this.format_version = null;
    }
    else {
      if (initObj.hasOwnProperty('image_version')) {
        this.image_version = initObj.image_version
      }
      else {
        this.image_version = '';
      }
      if (initObj.hasOwnProperty('recorder_version')) {
        this.recorder_version = initObj.recorder_version
      }
      else {
        this.recorder_version = '';
      }
      if (initObj.hasOwnProperty('config_variant')) {
        this.config_variant = initObj.config_variant
      }
      else {
        this.config_variant = '';
      }
      if (initObj.hasOwnProperty('config_version')) {
        this.config_version = initObj.config_version
      }
      else {
        this.config_version = '';
      }
      if (initObj.hasOwnProperty('format_version')) {
        this.format_version = initObj.format_version
      }
      else {
        this.format_version = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionInfo
    // Serialize message field [image_version]
    bufferOffset = _serializer.string(obj.image_version, buffer, bufferOffset);
    // Serialize message field [recorder_version]
    bufferOffset = _serializer.string(obj.recorder_version, buffer, bufferOffset);
    // Serialize message field [config_variant]
    bufferOffset = _serializer.string(obj.config_variant, buffer, bufferOffset);
    // Serialize message field [config_version]
    bufferOffset = _serializer.string(obj.config_version, buffer, bufferOffset);
    // Serialize message field [format_version]
    bufferOffset = _serializer.string(obj.format_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionInfo
    let len;
    let data = new VersionInfo(null);
    // Deserialize message field [image_version]
    data.image_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recorder_version]
    data.recorder_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [config_variant]
    data.config_variant = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [config_version]
    data.config_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [format_version]
    data.format_version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.image_version);
    length += _getByteLength(object.recorder_version);
    length += _getByteLength(object.config_variant);
    length += _getByteLength(object.config_version);
    length += _getByteLength(object.format_version);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/VersionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e09ede7bc4c80cfdd9e0db7c9c6fad1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string image_version
    string recorder_version
    string config_variant
    string config_version
    string format_version
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionInfo(null);
    if (msg.image_version !== undefined) {
      resolved.image_version = msg.image_version;
    }
    else {
      resolved.image_version = ''
    }

    if (msg.recorder_version !== undefined) {
      resolved.recorder_version = msg.recorder_version;
    }
    else {
      resolved.recorder_version = ''
    }

    if (msg.config_variant !== undefined) {
      resolved.config_variant = msg.config_variant;
    }
    else {
      resolved.config_variant = ''
    }

    if (msg.config_version !== undefined) {
      resolved.config_version = msg.config_version;
    }
    else {
      resolved.config_version = ''
    }

    if (msg.format_version !== undefined) {
      resolved.format_version = msg.format_version;
    }
    else {
      resolved.format_version = ''
    }

    return resolved;
    }
};

module.exports = VersionInfo;

// Auto-generated. Do not edit!

// (in-package recorder_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class VersionInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionInfoRequest
    let len;
    let data = new VersionInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/VersionInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionInfoRequest(null);
    return resolved;
    }
};

class VersionInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_version = null;
      this.recorder_version = null;
      this.config_variant = null;
      this.config_version = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionInfoResponse
    // Serialize message field [image_version]
    bufferOffset = _serializer.string(obj.image_version, buffer, bufferOffset);
    // Serialize message field [recorder_version]
    bufferOffset = _serializer.string(obj.recorder_version, buffer, bufferOffset);
    // Serialize message field [config_variant]
    bufferOffset = _serializer.string(obj.config_variant, buffer, bufferOffset);
    // Serialize message field [config_version]
    bufferOffset = _serializer.string(obj.config_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionInfoResponse
    let len;
    let data = new VersionInfoResponse(null);
    // Deserialize message field [image_version]
    data.image_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recorder_version]
    data.recorder_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [config_variant]
    data.config_variant = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [config_version]
    data.config_version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.image_version);
    length += _getByteLength(object.recorder_version);
    length += _getByteLength(object.config_variant);
    length += _getByteLength(object.config_version);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/VersionInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd39f792ca7afbba66af9d8c790664401';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string image_version
    string recorder_version
    string config_variant
    string config_version
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionInfoResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: VersionInfoRequest,
  Response: VersionInfoResponse,
  md5sum() { return 'd39f792ca7afbba66af9d8c790664401'; },
  datatype() { return 'recorder_srvs/VersionInfo'; }
};

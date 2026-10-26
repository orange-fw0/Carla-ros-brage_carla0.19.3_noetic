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

class DiskEjectV2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sn = null;
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskEjectV2Request
    // Serialize message field [sn]
    bufferOffset = _serializer.string(obj.sn, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.bool(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskEjectV2Request
    let len;
    let data = new DiskEjectV2Request(null);
    // Deserialize message field [sn]
    data.sn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sn);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskEjectV2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9964f540f2aadf300467ac6e0969f7f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sn
    bool force
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskEjectV2Request(null);
    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = ''
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = false
    }

    return resolved;
    }
};

class DiskEjectV2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskEjectV2Response
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskEjectV2Response
    let len;
    let data = new DiskEjectV2Response(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/DiskEjectV2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskEjectV2Response(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DiskEjectV2Request,
  Response: DiskEjectV2Response,
  md5sum() { return '74a6c99860ac86d7f9d587acb4f9c2f8'; },
  datatype() { return 'recorder_srvs/DiskEjectV2'; }
};

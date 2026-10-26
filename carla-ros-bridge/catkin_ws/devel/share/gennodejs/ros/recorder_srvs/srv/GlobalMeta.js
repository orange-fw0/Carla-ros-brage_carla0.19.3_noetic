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

class GlobalMetaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
      this.plate = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = false;
      }
      if (initObj.hasOwnProperty('plate')) {
        this.plate = initObj.plate
      }
      else {
        this.plate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalMetaRequest
    // Serialize message field [set]
    bufferOffset = _serializer.bool(obj.set, buffer, bufferOffset);
    // Serialize message field [plate]
    bufferOffset = _serializer.string(obj.plate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalMetaRequest
    let len;
    let data = new GlobalMetaRequest(null);
    // Deserialize message field [set]
    data.set = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [plate]
    data.plate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.plate);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/GlobalMetaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08094a2c8ca4e5636d3bb031fbeb5b4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set
    string plate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalMetaRequest(null);
    if (msg.set !== undefined) {
      resolved.set = msg.set;
    }
    else {
      resolved.set = false
    }

    if (msg.plate !== undefined) {
      resolved.plate = msg.plate;
    }
    else {
      resolved.plate = ''
    }

    return resolved;
    }
};

class GlobalMetaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.plate = null;
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
      if (initObj.hasOwnProperty('plate')) {
        this.plate = initObj.plate
      }
      else {
        this.plate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalMetaResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [plate]
    bufferOffset = _serializer.string(obj.plate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalMetaResponse
    let len;
    let data = new GlobalMetaResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plate]
    data.plate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += _getByteLength(object.plate);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/GlobalMetaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8c86d507fb5f978ce1e5a4457a6b79e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    string plate
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalMetaResponse(null);
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

    if (msg.plate !== undefined) {
      resolved.plate = msg.plate;
    }
    else {
      resolved.plate = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GlobalMetaRequest,
  Response: GlobalMetaResponse,
  md5sum() { return 'd449fcba9f0a70668686aea20985eb3c'; },
  datatype() { return 'recorder_srvs/GlobalMeta'; }
};

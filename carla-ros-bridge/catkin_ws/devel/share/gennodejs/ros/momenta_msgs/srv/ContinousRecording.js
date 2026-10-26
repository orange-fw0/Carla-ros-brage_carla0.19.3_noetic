// Auto-generated. Do not edit!

// (in-package momenta_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ContinousRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.record = null;
    }
    else {
      if (initObj.hasOwnProperty('record')) {
        this.record = initObj.record
      }
      else {
        this.record = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContinousRecordingRequest
    // Serialize message field [record]
    bufferOffset = _serializer.int8(obj.record, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContinousRecordingRequest
    let len;
    let data = new ContinousRecordingRequest(null);
    // Deserialize message field [record]
    data.record = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/ContinousRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cff3d64bcad970c17652dc0d3a7be29e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 record
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContinousRecordingRequest(null);
    if (msg.record !== undefined) {
      resolved.record = msg.record;
    }
    else {
      resolved.record = 0
    }

    return resolved;
    }
};

class ContinousRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp = null;
    }
    else {
      if (initObj.hasOwnProperty('resp')) {
        this.resp = initObj.resp
      }
      else {
        this.resp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContinousRecordingResponse
    // Serialize message field [resp]
    bufferOffset = _serializer.int8(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContinousRecordingResponse
    let len;
    let data = new ContinousRecordingResponse(null);
    // Deserialize message field [resp]
    data.resp = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'momenta_msgs/ContinousRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '718e1398690403ff822e32a07f70e40e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 resp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContinousRecordingResponse(null);
    if (msg.resp !== undefined) {
      resolved.resp = msg.resp;
    }
    else {
      resolved.resp = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ContinousRecordingRequest,
  Response: ContinousRecordingResponse,
  md5sum() { return '73923246d4a24d5573712c46b4095644'; },
  datatype() { return 'momenta_msgs/ContinousRecording'; }
};

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

class CheckRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckRecordingRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckRecordingRequest
    let len;
    let data = new CheckRecordingRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/CheckRecordingRequest';
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
    const resolved = new CheckRecordingRequest(null);
    return resolved;
    }
};

class CheckRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collection_disk_recording = null;
      this.export_disk_recording = null;
      this.any_disk_recording = null;
    }
    else {
      if (initObj.hasOwnProperty('collection_disk_recording')) {
        this.collection_disk_recording = initObj.collection_disk_recording
      }
      else {
        this.collection_disk_recording = false;
      }
      if (initObj.hasOwnProperty('export_disk_recording')) {
        this.export_disk_recording = initObj.export_disk_recording
      }
      else {
        this.export_disk_recording = false;
      }
      if (initObj.hasOwnProperty('any_disk_recording')) {
        this.any_disk_recording = initObj.any_disk_recording
      }
      else {
        this.any_disk_recording = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckRecordingResponse
    // Serialize message field [collection_disk_recording]
    bufferOffset = _serializer.bool(obj.collection_disk_recording, buffer, bufferOffset);
    // Serialize message field [export_disk_recording]
    bufferOffset = _serializer.bool(obj.export_disk_recording, buffer, bufferOffset);
    // Serialize message field [any_disk_recording]
    bufferOffset = _serializer.bool(obj.any_disk_recording, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckRecordingResponse
    let len;
    let data = new CheckRecordingResponse(null);
    // Deserialize message field [collection_disk_recording]
    data.collection_disk_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [export_disk_recording]
    data.export_disk_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [any_disk_recording]
    data.any_disk_recording = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/CheckRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea026e75492e2a1c9737acaad829aeb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool collection_disk_recording
    bool export_disk_recording
    bool any_disk_recording
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckRecordingResponse(null);
    if (msg.collection_disk_recording !== undefined) {
      resolved.collection_disk_recording = msg.collection_disk_recording;
    }
    else {
      resolved.collection_disk_recording = false
    }

    if (msg.export_disk_recording !== undefined) {
      resolved.export_disk_recording = msg.export_disk_recording;
    }
    else {
      resolved.export_disk_recording = false
    }

    if (msg.any_disk_recording !== undefined) {
      resolved.any_disk_recording = msg.any_disk_recording;
    }
    else {
      resolved.any_disk_recording = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckRecordingRequest,
  Response: CheckRecordingResponse,
  md5sum() { return 'ea026e75492e2a1c9737acaad829aeb2'; },
  datatype() { return 'recorder_srvs/CheckRecording'; }
};

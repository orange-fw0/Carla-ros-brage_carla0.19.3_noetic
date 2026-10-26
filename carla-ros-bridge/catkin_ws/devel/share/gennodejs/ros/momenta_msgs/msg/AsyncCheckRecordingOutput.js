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

class AsyncCheckRecordingOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_num = null;
      this.service_response = null;
      this.collection_disk_recording = null;
      this.export_disk_recording = null;
      this.any_disk_recording = null;
    }
    else {
      if (initObj.hasOwnProperty('key_num')) {
        this.key_num = initObj.key_num
      }
      else {
        this.key_num = 0;
      }
      if (initObj.hasOwnProperty('service_response')) {
        this.service_response = initObj.service_response
      }
      else {
        this.service_response = false;
      }
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
    // Serializes a message object of type AsyncCheckRecordingOutput
    // Serialize message field [key_num]
    bufferOffset = _serializer.int64(obj.key_num, buffer, bufferOffset);
    // Serialize message field [service_response]
    bufferOffset = _serializer.bool(obj.service_response, buffer, bufferOffset);
    // Serialize message field [collection_disk_recording]
    bufferOffset = _serializer.bool(obj.collection_disk_recording, buffer, bufferOffset);
    // Serialize message field [export_disk_recording]
    bufferOffset = _serializer.bool(obj.export_disk_recording, buffer, bufferOffset);
    // Serialize message field [any_disk_recording]
    bufferOffset = _serializer.bool(obj.any_disk_recording, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsyncCheckRecordingOutput
    let len;
    let data = new AsyncCheckRecordingOutput(null);
    // Deserialize message field [key_num]
    data.key_num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [service_response]
    data.service_response = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collection_disk_recording]
    data.collection_disk_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [export_disk_recording]
    data.export_disk_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [any_disk_recording]
    data.any_disk_recording = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AsyncCheckRecordingOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '139a52bcb58adb276452c2e48ad73665';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 key_num
    bool service_response
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
    const resolved = new AsyncCheckRecordingOutput(null);
    if (msg.key_num !== undefined) {
      resolved.key_num = msg.key_num;
    }
    else {
      resolved.key_num = 0
    }

    if (msg.service_response !== undefined) {
      resolved.service_response = msg.service_response;
    }
    else {
      resolved.service_response = false
    }

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

module.exports = AsyncCheckRecordingOutput;

// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let recorder_msgs = _finder('recorder_msgs');

//-----------------------------------------------------------

class AsyncExportDetailsV2Output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_num = null;
      this.service_response = null;
      this.success = null;
      this.message = null;
      this.export_jobs = null;
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
      if (initObj.hasOwnProperty('export_jobs')) {
        this.export_jobs = initObj.export_jobs
      }
      else {
        this.export_jobs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsyncExportDetailsV2Output
    // Serialize message field [key_num]
    bufferOffset = _serializer.int64(obj.key_num, buffer, bufferOffset);
    // Serialize message field [service_response]
    bufferOffset = _serializer.bool(obj.service_response, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [export_jobs]
    // Serialize the length for message field [export_jobs]
    bufferOffset = _serializer.uint32(obj.export_jobs.length, buffer, bufferOffset);
    obj.export_jobs.forEach((val) => {
      bufferOffset = recorder_msgs.msg.ExportJobInfoV2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsyncExportDetailsV2Output
    let len;
    let data = new AsyncExportDetailsV2Output(null);
    // Deserialize message field [key_num]
    data.key_num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [service_response]
    data.service_response = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [export_jobs]
    // Deserialize array length for message field [export_jobs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.export_jobs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.export_jobs[i] = recorder_msgs.msg.ExportJobInfoV2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.export_jobs.forEach((val) => {
      length += recorder_msgs.msg.ExportJobInfoV2.getMessageSize(val);
    });
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AsyncExportDetailsV2Output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55e66f17f259470d222c44e96f547934';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 key_num
    bool service_response
    bool success
    string message
    recorder_msgs/ExportJobInfoV2[] export_jobs
    
    ================================================================================
    MSG: recorder_msgs/ExportJobInfoV2
    int32 sequence
    time stamp
    string collect_type
    string name
    string export_type
    string status
    string reason
    EventParamV2[] event_param
    RecordingParamV2[] recording_param
    FilterParamV2[] filter_param
    ================================================================================
    MSG: recorder_msgs/EventParamV2
    bool sticky
    duration before
    duration after
    string[] topics
    string[] tags
    ================================================================================
    MSG: recorder_msgs/RecordingParamV2
    bool start
    string[] topics
    string[] tags
    ================================================================================
    MSG: recorder_msgs/FilterParamV2
    string[] topics
    string[] aliases
    time[] stamps
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsyncExportDetailsV2Output(null);
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

    if (msg.export_jobs !== undefined) {
      resolved.export_jobs = new Array(msg.export_jobs.length);
      for (let i = 0; i < resolved.export_jobs.length; ++i) {
        resolved.export_jobs[i] = recorder_msgs.msg.ExportJobInfoV2.Resolve(msg.export_jobs[i]);
      }
    }
    else {
      resolved.export_jobs = []
    }

    return resolved;
    }
};

module.exports = AsyncExportDetailsV2Output;

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

let recorder_msgs = _finder('recorder_msgs');

//-----------------------------------------------------------

class ExportDetailsV3Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collect_type = null;
      this.name = null;
      this.export_type = null;
      this.status = null;
      this.since = null;
      this.latest = null;
    }
    else {
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('export_type')) {
        this.export_type = initObj.export_type
      }
      else {
        this.export_type = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('since')) {
        this.since = initObj.since
      }
      else {
        this.since = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('latest')) {
        this.latest = initObj.latest
      }
      else {
        this.latest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExportDetailsV3Request
    // Serialize message field [collect_type]
    bufferOffset = _arraySerializer.string(obj.collect_type, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [export_type]
    bufferOffset = _arraySerializer.string(obj.export_type, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.string(obj.status, buffer, bufferOffset, null);
    // Serialize message field [since]
    bufferOffset = _serializer.time(obj.since, buffer, bufferOffset);
    // Serialize message field [latest]
    bufferOffset = _serializer.uint32(obj.latest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportDetailsV3Request
    let len;
    let data = new ExportDetailsV3Request(null);
    // Deserialize message field [collect_type]
    data.collect_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [export_type]
    data.export_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [since]
    data.since = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [latest]
    data.latest = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.collect_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.export_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.status.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExportDetailsV3Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c608d45499a0a9b72093c782a4abf73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] collect_type
    string[] name
    string[] export_type
    string[] status
    time since
    uint32 latest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExportDetailsV3Request(null);
    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.export_type !== undefined) {
      resolved.export_type = msg.export_type;
    }
    else {
      resolved.export_type = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    if (msg.since !== undefined) {
      resolved.since = msg.since;
    }
    else {
      resolved.since = {secs: 0, nsecs: 0}
    }

    if (msg.latest !== undefined) {
      resolved.latest = msg.latest;
    }
    else {
      resolved.latest = 0
    }

    return resolved;
    }
};

class ExportDetailsV3Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.export_jobs = null;
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
      if (initObj.hasOwnProperty('export_jobs')) {
        this.export_jobs = initObj.export_jobs
      }
      else {
        this.export_jobs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExportDetailsV3Response
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
    //deserializes a message object of type ExportDetailsV3Response
    let len;
    let data = new ExportDetailsV3Response(null);
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
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExportDetailsV3Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa2a9ef20ea4b3c3f3a7b034b11cfa56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ExportDetailsV3Response(null);
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

module.exports = {
  Request: ExportDetailsV3Request,
  Response: ExportDetailsV3Response,
  md5sum() { return '42419de6e8ab7617303ec62107d49cf1'; },
  datatype() { return 'recorder_srvs/ExportDetailsV3'; }
};

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

class ExportDetailsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.since = null;
      this.latest = null;
    }
    else {
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
    // Serializes a message object of type ExportDetailsRequest
    // Serialize message field [since]
    bufferOffset = _serializer.time(obj.since, buffer, bufferOffset);
    // Serialize message field [latest]
    bufferOffset = _serializer.uint32(obj.latest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportDetailsRequest
    let len;
    let data = new ExportDetailsRequest(null);
    // Deserialize message field [since]
    data.since = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [latest]
    data.latest = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExportDetailsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05031fe53ed96d86bef148828c4fa789';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time since
    uint32 latest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExportDetailsRequest(null);
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

class ExportDetailsResponse {
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
    // Serializes a message object of type ExportDetailsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [export_jobs]
    // Serialize the length for message field [export_jobs]
    bufferOffset = _serializer.uint32(obj.export_jobs.length, buffer, bufferOffset);
    obj.export_jobs.forEach((val) => {
      bufferOffset = recorder_msgs.msg.ExportJobInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportDetailsResponse
    let len;
    let data = new ExportDetailsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [export_jobs]
    // Deserialize array length for message field [export_jobs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.export_jobs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.export_jobs[i] = recorder_msgs.msg.ExportJobInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.export_jobs.forEach((val) => {
      length += recorder_msgs.msg.ExportJobInfo.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ExportDetailsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dc17b6452286ea80184647b86c5156d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    recorder_msgs/ExportJobInfo[] export_jobs
    
    ================================================================================
    MSG: recorder_msgs/ExportJobInfo
    time stamp
    string type
    string status
    string name
    BagInfo[] bag_info
    
    ================================================================================
    MSG: recorder_msgs/BagInfo
    uint32 index
    string filename
    float64 start_time
    float64 end_time
    uint64 size
    uint32 message_cnt
    string[] topic_name
    string[] topic_date_type
    uint32[] topic_message_cnt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExportDetailsResponse(null);
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
        resolved.export_jobs[i] = recorder_msgs.msg.ExportJobInfo.Resolve(msg.export_jobs[i]);
      }
    }
    else {
      resolved.export_jobs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ExportDetailsRequest,
  Response: ExportDetailsResponse,
  md5sum() { return 'b5312a6f562c0a005af6a6b1c14fb760'; },
  datatype() { return 'recorder_srvs/ExportDetails'; }
};

// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EventParamV2 = require('./EventParamV2.js');
let RecordingParamV2 = require('./RecordingParamV2.js');
let FilterParamV2 = require('./FilterParamV2.js');

//-----------------------------------------------------------

class ExportJobInfoV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence = null;
      this.stamp = null;
      this.collect_type = null;
      this.name = null;
      this.export_type = null;
      this.status = null;
      this.reason = null;
      this.event_param = null;
      this.recording_param = null;
      this.filter_param = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('export_type')) {
        this.export_type = initObj.export_type
      }
      else {
        this.export_type = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = '';
      }
      if (initObj.hasOwnProperty('event_param')) {
        this.event_param = initObj.event_param
      }
      else {
        this.event_param = [];
      }
      if (initObj.hasOwnProperty('recording_param')) {
        this.recording_param = initObj.recording_param
      }
      else {
        this.recording_param = [];
      }
      if (initObj.hasOwnProperty('filter_param')) {
        this.filter_param = initObj.filter_param
      }
      else {
        this.filter_param = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExportJobInfoV2
    // Serialize message field [sequence]
    bufferOffset = _serializer.int32(obj.sequence, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [collect_type]
    bufferOffset = _serializer.string(obj.collect_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [export_type]
    bufferOffset = _serializer.string(obj.export_type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    // Serialize message field [event_param]
    // Serialize the length for message field [event_param]
    bufferOffset = _serializer.uint32(obj.event_param.length, buffer, bufferOffset);
    obj.event_param.forEach((val) => {
      bufferOffset = EventParamV2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [recording_param]
    // Serialize the length for message field [recording_param]
    bufferOffset = _serializer.uint32(obj.recording_param.length, buffer, bufferOffset);
    obj.recording_param.forEach((val) => {
      bufferOffset = RecordingParamV2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [filter_param]
    // Serialize the length for message field [filter_param]
    bufferOffset = _serializer.uint32(obj.filter_param.length, buffer, bufferOffset);
    obj.filter_param.forEach((val) => {
      bufferOffset = FilterParamV2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportJobInfoV2
    let len;
    let data = new ExportJobInfoV2(null);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [collect_type]
    data.collect_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [export_type]
    data.export_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event_param]
    // Deserialize array length for message field [event_param]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.event_param = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.event_param[i] = EventParamV2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [recording_param]
    // Deserialize array length for message field [recording_param]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.recording_param = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.recording_param[i] = RecordingParamV2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [filter_param]
    // Deserialize array length for message field [filter_param]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.filter_param = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.filter_param[i] = FilterParamV2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.collect_type);
    length += _getByteLength(object.name);
    length += _getByteLength(object.export_type);
    length += _getByteLength(object.status);
    length += _getByteLength(object.reason);
    object.event_param.forEach((val) => {
      length += EventParamV2.getMessageSize(val);
    });
    object.recording_param.forEach((val) => {
      length += RecordingParamV2.getMessageSize(val);
    });
    object.filter_param.forEach((val) => {
      length += FilterParamV2.getMessageSize(val);
    });
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/ExportJobInfoV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ca7ac9c5f53979466ccbe47da2a8b4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ExportJobInfoV2(null);
    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.export_type !== undefined) {
      resolved.export_type = msg.export_type;
    }
    else {
      resolved.export_type = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = ''
    }

    if (msg.event_param !== undefined) {
      resolved.event_param = new Array(msg.event_param.length);
      for (let i = 0; i < resolved.event_param.length; ++i) {
        resolved.event_param[i] = EventParamV2.Resolve(msg.event_param[i]);
      }
    }
    else {
      resolved.event_param = []
    }

    if (msg.recording_param !== undefined) {
      resolved.recording_param = new Array(msg.recording_param.length);
      for (let i = 0; i < resolved.recording_param.length; ++i) {
        resolved.recording_param[i] = RecordingParamV2.Resolve(msg.recording_param[i]);
      }
    }
    else {
      resolved.recording_param = []
    }

    if (msg.filter_param !== undefined) {
      resolved.filter_param = new Array(msg.filter_param.length);
      for (let i = 0; i < resolved.filter_param.length; ++i) {
        resolved.filter_param[i] = FilterParamV2.Resolve(msg.filter_param[i]);
      }
    }
    else {
      resolved.filter_param = []
    }

    return resolved;
    }
};

module.exports = ExportJobInfoV2;

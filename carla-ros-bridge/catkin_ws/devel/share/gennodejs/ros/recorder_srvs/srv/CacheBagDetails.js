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

class CacheBagDetailsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.since = null;
      this.until = null;
    }
    else {
      if (initObj.hasOwnProperty('since')) {
        this.since = initObj.since
      }
      else {
        this.since = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('until')) {
        this.until = initObj.until
      }
      else {
        this.until = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CacheBagDetailsRequest
    // Serialize message field [since]
    bufferOffset = _serializer.time(obj.since, buffer, bufferOffset);
    // Serialize message field [until]
    bufferOffset = _serializer.time(obj.until, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CacheBagDetailsRequest
    let len;
    let data = new CacheBagDetailsRequest(null);
    // Deserialize message field [since]
    data.since = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [until]
    data.until = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/CacheBagDetailsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14f0c65c44258f8b4cf2eb6d2f546442';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time since
    time until
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CacheBagDetailsRequest(null);
    if (msg.since !== undefined) {
      resolved.since = msg.since;
    }
    else {
      resolved.since = {secs: 0, nsecs: 0}
    }

    if (msg.until !== undefined) {
      resolved.until = msg.until;
    }
    else {
      resolved.until = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class CacheBagDetailsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.bags_info = null;
      this.start_time = null;
      this.end_time = null;
      this.duration = null;
      this.topics_info = null;
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
      if (initObj.hasOwnProperty('bags_info')) {
        this.bags_info = initObj.bags_info
      }
      else {
        this.bags_info = [];
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0.0;
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('topics_info')) {
        this.topics_info = initObj.topics_info
      }
      else {
        this.topics_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CacheBagDetailsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [bags_info]
    // Serialize the length for message field [bags_info]
    bufferOffset = _serializer.uint32(obj.bags_info.length, buffer, bufferOffset);
    obj.bags_info.forEach((val) => {
      bufferOffset = recorder_msgs.msg.BagInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start_time]
    bufferOffset = _serializer.float64(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.float64(obj.end_time, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    // Serialize message field [topics_info]
    // Serialize the length for message field [topics_info]
    bufferOffset = _serializer.uint32(obj.topics_info.length, buffer, bufferOffset);
    obj.topics_info.forEach((val) => {
      bufferOffset = recorder_msgs.msg.TopicInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CacheBagDetailsResponse
    let len;
    let data = new CacheBagDetailsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bags_info]
    // Deserialize array length for message field [bags_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bags_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bags_info[i] = recorder_msgs.msg.BagInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start_time]
    data.start_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [topics_info]
    // Deserialize array length for message field [topics_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.topics_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.topics_info[i] = recorder_msgs.msg.TopicInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.bags_info.forEach((val) => {
      length += recorder_msgs.msg.BagInfo.getMessageSize(val);
    });
    object.topics_info.forEach((val) => {
      length += recorder_msgs.msg.TopicInfo.getMessageSize(val);
    });
    return length + 37;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/CacheBagDetailsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1487709c8ca13dfb6a7f32d09ec23296';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    recorder_msgs/BagInfo[] bags_info
    float64 start_time
    float64 end_time
    float64 duration
    recorder_msgs/TopicInfo[] topics_info
    
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
    
    
    ================================================================================
    MSG: recorder_msgs/TopicInfo
    string topic_name
    string topic_date_type
    uint32 topic_message_cnt
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CacheBagDetailsResponse(null);
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

    if (msg.bags_info !== undefined) {
      resolved.bags_info = new Array(msg.bags_info.length);
      for (let i = 0; i < resolved.bags_info.length; ++i) {
        resolved.bags_info[i] = recorder_msgs.msg.BagInfo.Resolve(msg.bags_info[i]);
      }
    }
    else {
      resolved.bags_info = []
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0.0
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = msg.end_time;
    }
    else {
      resolved.end_time = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.topics_info !== undefined) {
      resolved.topics_info = new Array(msg.topics_info.length);
      for (let i = 0; i < resolved.topics_info.length; ++i) {
        resolved.topics_info[i] = recorder_msgs.msg.TopicInfo.Resolve(msg.topics_info[i]);
      }
    }
    else {
      resolved.topics_info = []
    }

    return resolved;
    }
};

module.exports = {
  Request: CacheBagDetailsRequest,
  Response: CacheBagDetailsResponse,
  md5sum() { return 'f5f1198d0d264dd461d59b1d040ba963'; },
  datatype() { return 'recorder_srvs/CacheBagDetails'; }
};

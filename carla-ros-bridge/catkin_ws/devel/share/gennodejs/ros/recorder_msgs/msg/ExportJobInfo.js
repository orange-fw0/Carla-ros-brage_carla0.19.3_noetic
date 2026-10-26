// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BagInfo = require('./BagInfo.js');

//-----------------------------------------------------------

class ExportJobInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.type = null;
      this.status = null;
      this.name = null;
      this.bag_info = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('bag_info')) {
        this.bag_info = initObj.bag_info
      }
      else {
        this.bag_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExportJobInfo
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [bag_info]
    // Serialize the length for message field [bag_info]
    bufferOffset = _serializer.uint32(obj.bag_info.length, buffer, bufferOffset);
    obj.bag_info.forEach((val) => {
      bufferOffset = BagInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExportJobInfo
    let len;
    let data = new ExportJobInfo(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bag_info]
    // Deserialize array length for message field [bag_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bag_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bag_info[i] = BagInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.status);
    length += _getByteLength(object.name);
    object.bag_info.forEach((val) => {
      length += BagInfo.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/ExportJobInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '326e53405a4a51fbf22218e373082fa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ExportJobInfo(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.bag_info !== undefined) {
      resolved.bag_info = new Array(msg.bag_info.length);
      for (let i = 0; i < resolved.bag_info.length; ++i) {
        resolved.bag_info[i] = BagInfo.Resolve(msg.bag_info[i]);
      }
    }
    else {
      resolved.bag_info = []
    }

    return resolved;
    }
};

module.exports = ExportJobInfo;

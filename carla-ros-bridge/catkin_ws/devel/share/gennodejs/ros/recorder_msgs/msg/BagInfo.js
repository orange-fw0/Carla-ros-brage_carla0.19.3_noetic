// Auto-generated. Do not edit!

// (in-package recorder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BagInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.filename = null;
      this.start_time = null;
      this.end_time = null;
      this.size = null;
      this.message_cnt = null;
      this.topic_name = null;
      this.topic_date_type = null;
      this.topic_message_cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
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
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('message_cnt')) {
        this.message_cnt = initObj.message_cnt
      }
      else {
        this.message_cnt = 0;
      }
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = [];
      }
      if (initObj.hasOwnProperty('topic_date_type')) {
        this.topic_date_type = initObj.topic_date_type
      }
      else {
        this.topic_date_type = [];
      }
      if (initObj.hasOwnProperty('topic_message_cnt')) {
        this.topic_message_cnt = initObj.topic_message_cnt
      }
      else {
        this.topic_message_cnt = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BagInfo
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.float64(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.float64(obj.end_time, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint64(obj.size, buffer, bufferOffset);
    // Serialize message field [message_cnt]
    bufferOffset = _serializer.uint32(obj.message_cnt, buffer, bufferOffset);
    // Serialize message field [topic_name]
    bufferOffset = _arraySerializer.string(obj.topic_name, buffer, bufferOffset, null);
    // Serialize message field [topic_date_type]
    bufferOffset = _arraySerializer.string(obj.topic_date_type, buffer, bufferOffset, null);
    // Serialize message field [topic_message_cnt]
    bufferOffset = _arraySerializer.uint32(obj.topic_message_cnt, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BagInfo
    let len;
    let data = new BagInfo(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [message_cnt]
    data.message_cnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [topic_name]
    data.topic_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [topic_date_type]
    data.topic_date_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [topic_message_cnt]
    data.topic_message_cnt = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    object.topic_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.topic_date_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.topic_message_cnt.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/BagInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f13529155e16c696c2fd4cf7f1997c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BagInfo(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
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

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.message_cnt !== undefined) {
      resolved.message_cnt = msg.message_cnt;
    }
    else {
      resolved.message_cnt = 0
    }

    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = []
    }

    if (msg.topic_date_type !== undefined) {
      resolved.topic_date_type = msg.topic_date_type;
    }
    else {
      resolved.topic_date_type = []
    }

    if (msg.topic_message_cnt !== undefined) {
      resolved.topic_message_cnt = msg.topic_message_cnt;
    }
    else {
      resolved.topic_message_cnt = []
    }

    return resolved;
    }
};

module.exports = BagInfo;

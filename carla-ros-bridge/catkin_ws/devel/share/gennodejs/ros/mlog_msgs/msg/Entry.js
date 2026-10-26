// Auto-generated. Do not edit!

// (in-package mlog_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Entry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Entry
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Entry
    let len;
    let data = new Entry(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mlog_msgs/Entry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76a913180710d6f3d98ec82c1323494a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DATA_TYPE_NORMAL = 0
    uint8 DATA_TYPE_MSG_TIMESTAMP = 1
    uint8 DATA_TYPE_MSG_RELATION = 2
    uint8 type
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Entry(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

// Constants for message
Entry.Constants = {
  DATA_TYPE_NORMAL: 0,
  DATA_TYPE_MSG_TIMESTAMP: 1,
  DATA_TYPE_MSG_RELATION: 2,
}

module.exports = Entry;

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

class EventParamV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sticky = null;
      this.before = null;
      this.after = null;
      this.topics = null;
      this.tags = null;
    }
    else {
      if (initObj.hasOwnProperty('sticky')) {
        this.sticky = initObj.sticky
      }
      else {
        this.sticky = false;
      }
      if (initObj.hasOwnProperty('before')) {
        this.before = initObj.before
      }
      else {
        this.before = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('after')) {
        this.after = initObj.after
      }
      else {
        this.after = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventParamV2
    // Serialize message field [sticky]
    bufferOffset = _serializer.bool(obj.sticky, buffer, bufferOffset);
    // Serialize message field [before]
    bufferOffset = _serializer.duration(obj.before, buffer, bufferOffset);
    // Serialize message field [after]
    bufferOffset = _serializer.duration(obj.after, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventParamV2
    let len;
    let data = new EventParamV2(null);
    // Deserialize message field [sticky]
    data.sticky = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [before]
    data.before = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [after]
    data.after = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/EventParamV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e586290b71dcaddce3425d17e7715b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool sticky
    duration before
    duration after
    string[] topics
    string[] tags
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventParamV2(null);
    if (msg.sticky !== undefined) {
      resolved.sticky = msg.sticky;
    }
    else {
      resolved.sticky = false
    }

    if (msg.before !== undefined) {
      resolved.before = msg.before;
    }
    else {
      resolved.before = {secs: 0, nsecs: 0}
    }

    if (msg.after !== undefined) {
      resolved.after = msg.after;
    }
    else {
      resolved.after = {secs: 0, nsecs: 0}
    }

    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    return resolved;
    }
};

module.exports = EventParamV2;

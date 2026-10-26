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

class FilterParamV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topics = null;
      this.aliases = null;
      this.stamps = null;
    }
    else {
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('aliases')) {
        this.aliases = initObj.aliases
      }
      else {
        this.aliases = [];
      }
      if (initObj.hasOwnProperty('stamps')) {
        this.stamps = initObj.stamps
      }
      else {
        this.stamps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterParamV2
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [aliases]
    bufferOffset = _arraySerializer.string(obj.aliases, buffer, bufferOffset, null);
    // Serialize message field [stamps]
    bufferOffset = _arraySerializer.time(obj.stamps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterParamV2
    let len;
    let data = new FilterParamV2(null);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [aliases]
    data.aliases = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [stamps]
    data.stamps = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.aliases.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.stamps.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'recorder_msgs/FilterParamV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a517833533f9534bdfeb0cdd5fbda90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FilterParamV2(null);
    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.aliases !== undefined) {
      resolved.aliases = msg.aliases;
    }
    else {
      resolved.aliases = []
    }

    if (msg.stamps !== undefined) {
      resolved.stamps = msg.stamps;
    }
    else {
      resolved.stamps = []
    }

    return resolved;
    }
};

module.exports = FilterParamV2;

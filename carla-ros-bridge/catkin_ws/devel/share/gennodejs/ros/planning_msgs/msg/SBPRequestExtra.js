// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SBPRequestExtra {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.json = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('json')) {
        this.json = initObj.json
      }
      else {
        this.json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SBPRequestExtra
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [json]
    bufferOffset = _serializer.string(obj.json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SBPRequestExtra
    let len;
    let data = new SBPRequestExtra(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [json]
    data.json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.json);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/SBPRequestExtra';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e548927e18008b822eac38074c080e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 JSON = 1
    uint8 available
    string json
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SBPRequestExtra(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.json !== undefined) {
      resolved.json = msg.json;
    }
    else {
      resolved.json = ''
    }

    return resolved;
    }
};

// Constants for message
SBPRequestExtra.Constants = {
  JSON: 1,
}

module.exports = SBPRequestExtra;

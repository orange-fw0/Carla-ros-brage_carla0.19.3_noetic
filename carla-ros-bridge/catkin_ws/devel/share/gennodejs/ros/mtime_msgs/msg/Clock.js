// Auto-generated. Do not edit!

// (in-package mtime_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Clock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock = null;
    }
    else {
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Clock
    // Serialize message field [clock]
    bufferOffset = _serializer.uint64(obj.clock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Clock
    let len;
    let data = new Clock(null);
    // Deserialize message field [clock]
    data.clock = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mtime_msgs/Clock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b5fa56644cb06ad9ca849c85532e41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 clock
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Clock(null);
    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = 0
    }

    return resolved;
    }
};

module.exports = Clock;

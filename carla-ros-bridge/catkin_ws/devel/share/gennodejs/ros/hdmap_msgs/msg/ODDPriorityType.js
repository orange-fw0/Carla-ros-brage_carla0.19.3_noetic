// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ODDPriorityType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ODDPriorityType
    // Serialize message field [priority]
    bufferOffset = _serializer.uint8(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODDPriorityType
    let len;
    let data = new ODDPriorityType(null);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/ODDPriorityType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfd45b92a1de6f3374867ccaf1e52c8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 HDMAP_PRIORITY = 1
    uint8 NO_HDMAP_PRIORITY = 2
    uint8 priority
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ODDPriorityType(null);
    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

// Constants for message
ODDPriorityType.Constants = {
  UNKNOWN: 0,
  HDMAP_PRIORITY: 1,
  NO_HDMAP_PRIORITY: 2,
}

module.exports = ODDPriorityType;

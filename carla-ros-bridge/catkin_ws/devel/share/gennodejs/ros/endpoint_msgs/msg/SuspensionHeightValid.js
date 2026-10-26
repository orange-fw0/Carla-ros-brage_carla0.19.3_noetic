// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SuspensionHeightValid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_left = null;
      this.front_right = null;
      this.rear_left = null;
      this.rear_right = null;
    }
    else {
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = false;
      }
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = false;
      }
      if (initObj.hasOwnProperty('rear_left')) {
        this.rear_left = initObj.rear_left
      }
      else {
        this.rear_left = false;
      }
      if (initObj.hasOwnProperty('rear_right')) {
        this.rear_right = initObj.rear_right
      }
      else {
        this.rear_right = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuspensionHeightValid
    // Serialize message field [front_left]
    bufferOffset = _serializer.bool(obj.front_left, buffer, bufferOffset);
    // Serialize message field [front_right]
    bufferOffset = _serializer.bool(obj.front_right, buffer, bufferOffset);
    // Serialize message field [rear_left]
    bufferOffset = _serializer.bool(obj.rear_left, buffer, bufferOffset);
    // Serialize message field [rear_right]
    bufferOffset = _serializer.bool(obj.rear_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionHeightValid
    let len;
    let data = new SuspensionHeightValid(null);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_left]
    data.rear_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_right]
    data.rear_right = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionHeightValid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '463c10ee21ee0ccee80e4d06b1d4c100';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool front_left
    bool front_right
    bool rear_left
    bool rear_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionHeightValid(null);
    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = false
    }

    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = false
    }

    if (msg.rear_left !== undefined) {
      resolved.rear_left = msg.rear_left;
    }
    else {
      resolved.rear_left = false
    }

    if (msg.rear_right !== undefined) {
      resolved.rear_right = msg.rear_right;
    }
    else {
      resolved.rear_right = false
    }

    return resolved;
    }
};

module.exports = SuspensionHeightValid;

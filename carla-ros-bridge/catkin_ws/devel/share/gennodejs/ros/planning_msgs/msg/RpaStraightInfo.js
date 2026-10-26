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

class RpaStraightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.forward_distance = null;
      this.backward_distance = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('forward_distance')) {
        this.forward_distance = initObj.forward_distance
      }
      else {
        this.forward_distance = 0.0;
      }
      if (initObj.hasOwnProperty('backward_distance')) {
        this.backward_distance = initObj.backward_distance
      }
      else {
        this.backward_distance = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RpaStraightInfo
    // Serialize message field [forward_distance]
    bufferOffset = _serializer.float32(obj.forward_distance, buffer, bufferOffset);
    // Serialize message field [backward_distance]
    bufferOffset = _serializer.float32(obj.backward_distance, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RpaStraightInfo
    let len;
    let data = new RpaStraightInfo(null);
    // Deserialize message field [forward_distance]
    data.forward_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [backward_distance]
    data.backward_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/RpaStraightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70c1a54230781c274779bd2179bf4210';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 forward_distance
    float32 backward_distance
    string reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RpaStraightInfo(null);
    if (msg.forward_distance !== undefined) {
      resolved.forward_distance = msg.forward_distance;
    }
    else {
      resolved.forward_distance = 0.0
    }

    if (msg.backward_distance !== undefined) {
      resolved.backward_distance = msg.backward_distance;
    }
    else {
      resolved.backward_distance = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = RpaStraightInfo;

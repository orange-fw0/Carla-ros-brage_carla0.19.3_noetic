// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FusionTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern = null;
      this.status = null;
      this.duration = null;
      this.remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('remaining')) {
        this.remaining = initObj.remaining
      }
      else {
        this.remaining = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionTrafficLight
    // Serialize message field [pattern]
    bufferOffset = _serializer.int32(obj.pattern, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    // Serialize message field [remaining]
    bufferOffset = _serializer.float64(obj.remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionTrafficLight
    let len;
    let data = new FusionTrafficLight(null);
    // Deserialize message field [pattern]
    data.pattern = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining]
    data.remaining = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/FusionTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa96d0110452b1942c6d5c75952b2771';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pattern
    int32 status
    float64 duration
    float64 remaining
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionTrafficLight(null);
    if (msg.pattern !== undefined) {
      resolved.pattern = msg.pattern;
    }
    else {
      resolved.pattern = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.remaining !== undefined) {
      resolved.remaining = msg.remaining;
    }
    else {
      resolved.remaining = 0.0
    }

    return resolved;
    }
};

module.exports = FusionTrafficLight;

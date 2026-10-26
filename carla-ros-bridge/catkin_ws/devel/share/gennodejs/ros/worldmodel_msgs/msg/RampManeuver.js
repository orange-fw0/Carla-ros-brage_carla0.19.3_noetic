// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RampManeuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dis_to_ramp = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('dis_to_ramp')) {
        this.dis_to_ramp = initObj.dis_to_ramp
      }
      else {
        this.dis_to_ramp = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RampManeuver
    // Serialize message field [dis_to_ramp]
    bufferOffset = _serializer.float32(obj.dis_to_ramp, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RampManeuver
    let len;
    let data = new RampManeuver(null);
    // Deserialize message field [dis_to_ramp]
    data.dis_to_ramp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/RampManeuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7913c40c76e8a83a94a1b0721d5aae93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dis_to_ramp
    float32 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RampManeuver(null);
    if (msg.dis_to_ramp !== undefined) {
      resolved.dis_to_ramp = msg.dis_to_ramp;
    }
    else {
      resolved.dis_to_ramp = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = RampManeuver;

// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HDMapIntersectionStopLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_to_stop_line = null;
      this.distance_buffer = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_to_stop_line')) {
        this.distance_to_stop_line = initObj.distance_to_stop_line
      }
      else {
        this.distance_to_stop_line = 0.0;
      }
      if (initObj.hasOwnProperty('distance_buffer')) {
        this.distance_buffer = initObj.distance_buffer
      }
      else {
        this.distance_buffer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapIntersectionStopLine
    // Serialize message field [distance_to_stop_line]
    bufferOffset = _serializer.float64(obj.distance_to_stop_line, buffer, bufferOffset);
    // Serialize message field [distance_buffer]
    bufferOffset = _serializer.float64(obj.distance_buffer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapIntersectionStopLine
    let len;
    let data = new HDMapIntersectionStopLine(null);
    // Deserialize message field [distance_to_stop_line]
    data.distance_to_stop_line = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_buffer]
    data.distance_buffer = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/HDMapIntersectionStopLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63b4138b35d12a34bf5c6ed6e21df141';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_to_stop_line
    float64 distance_buffer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDMapIntersectionStopLine(null);
    if (msg.distance_to_stop_line !== undefined) {
      resolved.distance_to_stop_line = msg.distance_to_stop_line;
    }
    else {
      resolved.distance_to_stop_line = 0.0
    }

    if (msg.distance_buffer !== undefined) {
      resolved.distance_buffer = msg.distance_buffer;
    }
    else {
      resolved.distance_buffer = 0.0
    }

    return resolved;
    }
};

module.exports = HDMapIntersectionStopLine;

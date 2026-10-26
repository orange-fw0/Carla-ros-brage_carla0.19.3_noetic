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

class LaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_marks = null;
      this.lane_type = null;
      this.lane_boundary_existence = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_marks')) {
        this.lane_marks = initObj.lane_marks
      }
      else {
        this.lane_marks = [];
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = 0;
      }
      if (initObj.hasOwnProperty('lane_boundary_existence')) {
        this.lane_boundary_existence = initObj.lane_boundary_existence
      }
      else {
        this.lane_boundary_existence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneInfo
    // Serialize message field [lane_marks]
    bufferOffset = _arraySerializer.uint8(obj.lane_marks, buffer, bufferOffset, null);
    // Serialize message field [lane_type]
    bufferOffset = _serializer.uint8(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [lane_boundary_existence]
    bufferOffset = _serializer.uint8(obj.lane_boundary_existence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneInfo
    let len;
    let data = new LaneInfo(null);
    // Deserialize message field [lane_marks]
    data.lane_marks = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lane_type]
    data.lane_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_boundary_existence]
    data.lane_boundary_existence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lane_marks.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/LaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c59f8ac75f1757f3c6b3e220548ca78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] lane_marks
    uint8 lane_type
    uint8 lane_boundary_existence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneInfo(null);
    if (msg.lane_marks !== undefined) {
      resolved.lane_marks = msg.lane_marks;
    }
    else {
      resolved.lane_marks = []
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = msg.lane_type;
    }
    else {
      resolved.lane_type = 0
    }

    if (msg.lane_boundary_existence !== undefined) {
      resolved.lane_boundary_existence = msg.lane_boundary_existence;
    }
    else {
      resolved.lane_boundary_existence = 0
    }

    return resolved;
    }
};

module.exports = LaneInfo;

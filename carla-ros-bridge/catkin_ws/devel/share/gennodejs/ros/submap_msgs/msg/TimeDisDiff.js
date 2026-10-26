// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimeDisDiff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dis_idff = null;
      this.time_diff = null;
      this.last_pose_timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dis_idff')) {
        this.dis_idff = initObj.dis_idff
      }
      else {
        this.dis_idff = 0.0;
      }
      if (initObj.hasOwnProperty('time_diff')) {
        this.time_diff = initObj.time_diff
      }
      else {
        this.time_diff = 0.0;
      }
      if (initObj.hasOwnProperty('last_pose_timestamp')) {
        this.last_pose_timestamp = initObj.last_pose_timestamp
      }
      else {
        this.last_pose_timestamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeDisDiff
    // Serialize message field [dis_idff]
    bufferOffset = _serializer.float64(obj.dis_idff, buffer, bufferOffset);
    // Serialize message field [time_diff]
    bufferOffset = _serializer.float64(obj.time_diff, buffer, bufferOffset);
    // Serialize message field [last_pose_timestamp]
    bufferOffset = _serializer.float64(obj.last_pose_timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeDisDiff
    let len;
    let data = new TimeDisDiff(null);
    // Deserialize message field [dis_idff]
    data.dis_idff = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_diff]
    data.time_diff = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [last_pose_timestamp]
    data.last_pose_timestamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/TimeDisDiff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11dbd45c27d3191660eff904bf844836';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 dis_idff
    float64 time_diff
    float64 last_pose_timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeDisDiff(null);
    if (msg.dis_idff !== undefined) {
      resolved.dis_idff = msg.dis_idff;
    }
    else {
      resolved.dis_idff = 0.0
    }

    if (msg.time_diff !== undefined) {
      resolved.time_diff = msg.time_diff;
    }
    else {
      resolved.time_diff = 0.0
    }

    if (msg.last_pose_timestamp !== undefined) {
      resolved.last_pose_timestamp = msg.last_pose_timestamp;
    }
    else {
      resolved.last_pose_timestamp = 0.0
    }

    return resolved;
    }
};

module.exports = TimeDisDiff;

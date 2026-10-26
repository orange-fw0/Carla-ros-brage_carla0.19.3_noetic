// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneCenterOffset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.track_frames_count = null;
      this.accumulative_offset = null;
      this.relative_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('track_frames_count')) {
        this.track_frames_count = initObj.track_frames_count
      }
      else {
        this.track_frames_count = 0;
      }
      if (initObj.hasOwnProperty('accumulative_offset')) {
        this.accumulative_offset = initObj.accumulative_offset
      }
      else {
        this.accumulative_offset = 0.0;
      }
      if (initObj.hasOwnProperty('relative_offset')) {
        this.relative_offset = initObj.relative_offset
      }
      else {
        this.relative_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterOffset
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [track_frames_count]
    bufferOffset = _serializer.uint64(obj.track_frames_count, buffer, bufferOffset);
    // Serialize message field [accumulative_offset]
    bufferOffset = _serializer.float32(obj.accumulative_offset, buffer, bufferOffset);
    // Serialize message field [relative_offset]
    bufferOffset = _serializer.float32(obj.relative_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterOffset
    let len;
    let data = new LaneCenterOffset(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [track_frames_count]
    data.track_frames_count = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [accumulative_offset]
    data.accumulative_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_offset]
    data.relative_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterOffset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01c833d8de1057736d9a8b42605167bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
    uint64 track_frames_count
    float32 accumulative_offset
    float32 relative_offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneCenterOffset(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.track_frames_count !== undefined) {
      resolved.track_frames_count = msg.track_frames_count;
    }
    else {
      resolved.track_frames_count = 0
    }

    if (msg.accumulative_offset !== undefined) {
      resolved.accumulative_offset = msg.accumulative_offset;
    }
    else {
      resolved.accumulative_offset = 0.0
    }

    if (msg.relative_offset !== undefined) {
      resolved.relative_offset = msg.relative_offset;
    }
    else {
      resolved.relative_offset = 0.0
    }

    return resolved;
    }
};

module.exports = LaneCenterOffset;

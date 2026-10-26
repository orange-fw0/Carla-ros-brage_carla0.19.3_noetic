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

class ObjectTrackInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.track_times = null;
      this.age_in_seconds = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('track_times')) {
        this.track_times = initObj.track_times
      }
      else {
        this.track_times = 0;
      }
      if (initObj.hasOwnProperty('age_in_seconds')) {
        this.age_in_seconds = initObj.age_in_seconds
      }
      else {
        this.age_in_seconds = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectTrackInfo
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [track_times]
    bufferOffset = _serializer.uint64(obj.track_times, buffer, bufferOffset);
    // Serialize message field [age_in_seconds]
    bufferOffset = _serializer.float32(obj.age_in_seconds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectTrackInfo
    let len;
    let data = new ObjectTrackInfo(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [track_times]
    data.track_times = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [age_in_seconds]
    data.age_in_seconds = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ObjectTrackInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d42038cbaad464379e51e22de977155';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
    uint64 track_times
    float32 age_in_seconds
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectTrackInfo(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.track_times !== undefined) {
      resolved.track_times = msg.track_times;
    }
    else {
      resolved.track_times = 0
    }

    if (msg.age_in_seconds !== undefined) {
      resolved.age_in_seconds = msg.age_in_seconds;
    }
    else {
      resolved.age_in_seconds = 0.0
    }

    return resolved;
    }
};

module.exports = ObjectTrackInfo;

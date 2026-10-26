// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MDKDiRoadId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tile_id = null;
      this.road_count = null;
      this.dir_reversed = null;
    }
    else {
      if (initObj.hasOwnProperty('tile_id')) {
        this.tile_id = initObj.tile_id
      }
      else {
        this.tile_id = 0;
      }
      if (initObj.hasOwnProperty('road_count')) {
        this.road_count = initObj.road_count
      }
      else {
        this.road_count = 0;
      }
      if (initObj.hasOwnProperty('dir_reversed')) {
        this.dir_reversed = initObj.dir_reversed
      }
      else {
        this.dir_reversed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MDKDiRoadId
    // Serialize message field [tile_id]
    bufferOffset = _serializer.int64(obj.tile_id, buffer, bufferOffset);
    // Serialize message field [road_count]
    bufferOffset = _serializer.int64(obj.road_count, buffer, bufferOffset);
    // Serialize message field [dir_reversed]
    bufferOffset = _serializer.bool(obj.dir_reversed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MDKDiRoadId
    let len;
    let data = new MDKDiRoadId(null);
    // Deserialize message field [tile_id]
    data.tile_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [road_count]
    data.road_count = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dir_reversed]
    data.dir_reversed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/MDKDiRoadId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cd02c3e1caee2c32fb2bfa11a15f76a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 tile_id
    int64 road_count
    bool dir_reversed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MDKDiRoadId(null);
    if (msg.tile_id !== undefined) {
      resolved.tile_id = msg.tile_id;
    }
    else {
      resolved.tile_id = 0
    }

    if (msg.road_count !== undefined) {
      resolved.road_count = msg.road_count;
    }
    else {
      resolved.road_count = 0
    }

    if (msg.dir_reversed !== undefined) {
      resolved.dir_reversed = msg.dir_reversed;
    }
    else {
      resolved.dir_reversed = false
    }

    return resolved;
    }
};

module.exports = MDKDiRoadId;

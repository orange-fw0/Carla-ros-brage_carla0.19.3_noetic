// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PNPRoadId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ur_id = null;
      this.tile_id = null;
      this.road_count = null;
    }
    else {
      if (initObj.hasOwnProperty('ur_id')) {
        this.ur_id = initObj.ur_id
      }
      else {
        this.ur_id = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPRoadId
    // Serialize message field [ur_id]
    bufferOffset = _serializer.uint16(obj.ur_id, buffer, bufferOffset);
    // Serialize message field [tile_id]
    bufferOffset = _serializer.uint32(obj.tile_id, buffer, bufferOffset);
    // Serialize message field [road_count]
    bufferOffset = _serializer.uint32(obj.road_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPRoadId
    let len;
    let data = new PNPRoadId(null);
    // Deserialize message field [ur_id]
    data.ur_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tile_id]
    data.tile_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_count]
    data.road_count = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/PNPRoadId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6681541bf2891e198304585bc835f2da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPRoadId(null);
    if (msg.ur_id !== undefined) {
      resolved.ur_id = msg.ur_id;
    }
    else {
      resolved.ur_id = 0
    }

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

    return resolved;
    }
};

module.exports = PNPRoadId;

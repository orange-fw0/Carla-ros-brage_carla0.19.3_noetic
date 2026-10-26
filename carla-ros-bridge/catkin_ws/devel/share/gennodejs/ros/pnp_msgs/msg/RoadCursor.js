// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IdxRoadId = require('./IdxRoadId.js');

//-----------------------------------------------------------

class RoadCursor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index_road_id = null;
      this.offset = null;
    }
    else {
      if (initObj.hasOwnProperty('index_road_id')) {
        this.index_road_id = initObj.index_road_id
      }
      else {
        this.index_road_id = new IdxRoadId();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadCursor
    // Serialize message field [index_road_id]
    bufferOffset = IdxRoadId.serialize(obj.index_road_id, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadCursor
    let len;
    let data = new RoadCursor(null);
    // Deserialize message field [index_road_id]
    data.index_road_id = IdxRoadId.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/RoadCursor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c09786282442e47082f1f0889cfb709';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pnp_msgs/IdxRoadId index_road_id
    float32 offset
    
    ================================================================================
    MSG: pnp_msgs/IdxRoadId
    pnp_msgs/PNPRoadId road_id
    uint32 index_at_tour
    
    ================================================================================
    MSG: pnp_msgs/PNPRoadId
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
    const resolved = new RoadCursor(null);
    if (msg.index_road_id !== undefined) {
      resolved.index_road_id = IdxRoadId.Resolve(msg.index_road_id)
    }
    else {
      resolved.index_road_id = new IdxRoadId()
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    return resolved;
    }
};

module.exports = RoadCursor;

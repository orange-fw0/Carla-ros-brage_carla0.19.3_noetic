// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PNPRoadId = require('./PNPRoadId.js');

//-----------------------------------------------------------

class IdxRoadId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_id = null;
      this.index_at_tour = null;
    }
    else {
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = new PNPRoadId();
      }
      if (initObj.hasOwnProperty('index_at_tour')) {
        this.index_at_tour = initObj.index_at_tour
      }
      else {
        this.index_at_tour = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IdxRoadId
    // Serialize message field [road_id]
    bufferOffset = PNPRoadId.serialize(obj.road_id, buffer, bufferOffset);
    // Serialize message field [index_at_tour]
    bufferOffset = _serializer.uint32(obj.index_at_tour, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IdxRoadId
    let len;
    let data = new IdxRoadId(null);
    // Deserialize message field [road_id]
    data.road_id = PNPRoadId.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_at_tour]
    data.index_at_tour = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/IdxRoadId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12ff52ec238991bbda25eb6597018335';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new IdxRoadId(null);
    if (msg.road_id !== undefined) {
      resolved.road_id = PNPRoadId.Resolve(msg.road_id)
    }
    else {
      resolved.road_id = new PNPRoadId()
    }

    if (msg.index_at_tour !== undefined) {
      resolved.index_at_tour = msg.index_at_tour;
    }
    else {
      resolved.index_at_tour = 0
    }

    return resolved;
    }
};

module.exports = IdxRoadId;

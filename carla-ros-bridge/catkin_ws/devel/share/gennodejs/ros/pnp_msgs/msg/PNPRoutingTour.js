// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Path = require('./Path.js');

//-----------------------------------------------------------

class PNPRoutingTour {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tour_id = null;
      this.path_list = null;
      this.total_length = null;
    }
    else {
      if (initObj.hasOwnProperty('tour_id')) {
        this.tour_id = initObj.tour_id
      }
      else {
        this.tour_id = 0;
      }
      if (initObj.hasOwnProperty('path_list')) {
        this.path_list = initObj.path_list
      }
      else {
        this.path_list = [];
      }
      if (initObj.hasOwnProperty('total_length')) {
        this.total_length = initObj.total_length
      }
      else {
        this.total_length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPRoutingTour
    // Serialize message field [tour_id]
    bufferOffset = _serializer.uint64(obj.tour_id, buffer, bufferOffset);
    // Serialize message field [path_list]
    // Serialize the length for message field [path_list]
    bufferOffset = _serializer.uint32(obj.path_list.length, buffer, bufferOffset);
    obj.path_list.forEach((val) => {
      bufferOffset = Path.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [total_length]
    bufferOffset = _serializer.float32(obj.total_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPRoutingTour
    let len;
    let data = new PNPRoutingTour(null);
    // Deserialize message field [tour_id]
    data.tour_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [path_list]
    // Deserialize array length for message field [path_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_list[i] = Path.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [total_length]
    data.total_length = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.path_list.forEach((val) => {
      length += Path.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/PNPRoutingTour';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db0d664e7963e96b65058e7cc852ff1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 tour_id
    pnp_msgs/Path[] path_list
    float32 total_length
    
    ================================================================================
    MSG: pnp_msgs/Path
    pnp_msgs/IdxRoadId[] road_list
    float32 length
    pnp_msgs/RoadCursor start_road_cursor
    pnp_msgs/RoadCursor end_road_cursor
    
    ================================================================================
    MSG: pnp_msgs/IdxRoadId
    pnp_msgs/PNPRoadId road_id
    uint32 index_at_tour
    
    ================================================================================
    MSG: pnp_msgs/PNPRoadId
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    
    ================================================================================
    MSG: pnp_msgs/RoadCursor
    pnp_msgs/IdxRoadId index_road_id
    float32 offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPRoutingTour(null);
    if (msg.tour_id !== undefined) {
      resolved.tour_id = msg.tour_id;
    }
    else {
      resolved.tour_id = 0
    }

    if (msg.path_list !== undefined) {
      resolved.path_list = new Array(msg.path_list.length);
      for (let i = 0; i < resolved.path_list.length; ++i) {
        resolved.path_list[i] = Path.Resolve(msg.path_list[i]);
      }
    }
    else {
      resolved.path_list = []
    }

    if (msg.total_length !== undefined) {
      resolved.total_length = msg.total_length;
    }
    else {
      resolved.total_length = 0.0
    }

    return resolved;
    }
};

module.exports = PNPRoutingTour;

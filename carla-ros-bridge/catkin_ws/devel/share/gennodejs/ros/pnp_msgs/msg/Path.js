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
let RoadCursor = require('./RoadCursor.js');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_list = null;
      this.length = null;
      this.start_road_cursor = null;
      this.end_road_cursor = null;
    }
    else {
      if (initObj.hasOwnProperty('road_list')) {
        this.road_list = initObj.road_list
      }
      else {
        this.road_list = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('start_road_cursor')) {
        this.start_road_cursor = initObj.start_road_cursor
      }
      else {
        this.start_road_cursor = new RoadCursor();
      }
      if (initObj.hasOwnProperty('end_road_cursor')) {
        this.end_road_cursor = initObj.end_road_cursor
      }
      else {
        this.end_road_cursor = new RoadCursor();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [road_list]
    // Serialize the length for message field [road_list]
    bufferOffset = _serializer.uint32(obj.road_list.length, buffer, bufferOffset);
    obj.road_list.forEach((val) => {
      bufferOffset = IdxRoadId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [start_road_cursor]
    bufferOffset = RoadCursor.serialize(obj.start_road_cursor, buffer, bufferOffset);
    // Serialize message field [end_road_cursor]
    bufferOffset = RoadCursor.serialize(obj.end_road_cursor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [road_list]
    // Deserialize array length for message field [road_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_list[i] = IdxRoadId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_road_cursor]
    data.start_road_cursor = RoadCursor.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_road_cursor]
    data.end_road_cursor = RoadCursor.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 14 * object.road_list.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c01d05a883772b4391b9f6c23cd5e00c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Path(null);
    if (msg.road_list !== undefined) {
      resolved.road_list = new Array(msg.road_list.length);
      for (let i = 0; i < resolved.road_list.length; ++i) {
        resolved.road_list[i] = IdxRoadId.Resolve(msg.road_list[i]);
      }
    }
    else {
      resolved.road_list = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.start_road_cursor !== undefined) {
      resolved.start_road_cursor = RoadCursor.Resolve(msg.start_road_cursor)
    }
    else {
      resolved.start_road_cursor = new RoadCursor()
    }

    if (msg.end_road_cursor !== undefined) {
      resolved.end_road_cursor = RoadCursor.Resolve(msg.end_road_cursor)
    }
    else {
      resolved.end_road_cursor = new RoadCursor()
    }

    return resolved;
    }
};

module.exports = Path;

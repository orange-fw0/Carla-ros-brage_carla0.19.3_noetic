// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackId = require('./TrackId.js');

//-----------------------------------------------------------

class LaneIdWithOnRouteInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.on_route_info = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = new TrackId();
      }
      if (initObj.hasOwnProperty('on_route_info')) {
        this.on_route_info = initObj.on_route_info
      }
      else {
        this.on_route_info = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneIdWithOnRouteInfo
    // Serialize message field [lane_id]
    bufferOffset = TrackId.serialize(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [on_route_info]
    bufferOffset = _serializer.uint8(obj.on_route_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneIdWithOnRouteInfo
    let len;
    let data = new LaneIdWithOnRouteInfo(null);
    // Deserialize message field [lane_id]
    data.lane_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [on_route_info]
    data.on_route_info = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneIdWithOnRouteInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abb747e6f87d7fd6d3abcadf1ba5cd36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 ON_ROUTE = 1
    uint8 OFF_ROUTE = 2
    landmark_msgs/TrackId lane_id
    uint8 on_route_info
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneIdWithOnRouteInfo(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = TrackId.Resolve(msg.lane_id)
    }
    else {
      resolved.lane_id = new TrackId()
    }

    if (msg.on_route_info !== undefined) {
      resolved.on_route_info = msg.on_route_info;
    }
    else {
      resolved.on_route_info = 0
    }

    return resolved;
    }
};

// Constants for message
LaneIdWithOnRouteInfo.Constants = {
  UNKNOWN: 0,
  ON_ROUTE: 1,
  OFF_ROUTE: 2,
}

module.exports = LaneIdWithOnRouteInfo;

// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LanePoint = require('./LanePoint.js');

//-----------------------------------------------------------

class MapLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane = null;
      this.cur_idx = null;
      this.global_idx = null;
    }
    else {
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = [];
      }
      if (initObj.hasOwnProperty('cur_idx')) {
        this.cur_idx = initObj.cur_idx
      }
      else {
        this.cur_idx = 0;
      }
      if (initObj.hasOwnProperty('global_idx')) {
        this.global_idx = initObj.global_idx
      }
      else {
        this.global_idx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLane
    // Serialize message field [lane]
    // Serialize the length for message field [lane]
    bufferOffset = _serializer.uint32(obj.lane.length, buffer, bufferOffset);
    obj.lane.forEach((val) => {
      bufferOffset = LanePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cur_idx]
    bufferOffset = _serializer.uint32(obj.cur_idx, buffer, bufferOffset);
    // Serialize message field [global_idx]
    bufferOffset = _serializer.uint32(obj.global_idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLane
    let len;
    let data = new MapLane(null);
    // Deserialize message field [lane]
    // Deserialize array length for message field [lane]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane[i] = LanePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cur_idx]
    data.cur_idx = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [global_idx]
    data.global_idx = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 38 * object.lane.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b043baf328728e593b5f2c33290b355';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    momenta_msgs/LanePoint[] lane
    uint32 cur_idx
    uint32 global_idx
    
    ================================================================================
    MSG: momenta_msgs/LanePoint
    geometry_msgs/Pose2D pose
    float32 vel_limit
    float32 width_left
    bool is_left_cross
    float32 width_right
    bool is_right_cross
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLane(null);
    if (msg.lane !== undefined) {
      resolved.lane = new Array(msg.lane.length);
      for (let i = 0; i < resolved.lane.length; ++i) {
        resolved.lane[i] = LanePoint.Resolve(msg.lane[i]);
      }
    }
    else {
      resolved.lane = []
    }

    if (msg.cur_idx !== undefined) {
      resolved.cur_idx = msg.cur_idx;
    }
    else {
      resolved.cur_idx = 0
    }

    if (msg.global_idx !== undefined) {
      resolved.global_idx = msg.global_idx;
    }
    else {
      resolved.global_idx = 0
    }

    return resolved;
    }
};

module.exports = MapLane;

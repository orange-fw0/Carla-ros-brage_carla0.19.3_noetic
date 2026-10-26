// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapLane = require('./MapLane.js');
let Mdf = require('./Mdf.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapLanes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lanes = null;
      this.cur_lane_id = null;
      this.next_mdf = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
      if (initObj.hasOwnProperty('cur_lane_id')) {
        this.cur_lane_id = initObj.cur_lane_id
      }
      else {
        this.cur_lane_id = 0;
      }
      if (initObj.hasOwnProperty('next_mdf')) {
        this.next_mdf = initObj.next_mdf
      }
      else {
        this.next_mdf = new Mdf();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLanes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = MapLane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cur_lane_id]
    bufferOffset = _serializer.int32(obj.cur_lane_id, buffer, bufferOffset);
    // Serialize message field [next_mdf]
    bufferOffset = Mdf.serialize(obj.next_mdf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLanes
    let len;
    let data = new MapLanes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = MapLane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cur_lane_id]
    data.cur_lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [next_mdf]
    data.next_mdf = Mdf.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lanes.forEach((val) => {
      length += MapLane.getMessageSize(val);
    });
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapLanes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ced4682f20293b07d646ed602171e3a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/MapLane[] lanes
    int32 cur_lane_id
    momenta_msgs/Mdf next_mdf
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: momenta_msgs/MapLane
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
    
    ================================================================================
    MSG: momenta_msgs/Mdf
    int32 id
    int32 idx
    float32 speed_limit
    int32 p1
    int32 p2
    bool traffic_light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLanes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = MapLane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    if (msg.cur_lane_id !== undefined) {
      resolved.cur_lane_id = msg.cur_lane_id;
    }
    else {
      resolved.cur_lane_id = 0
    }

    if (msg.next_mdf !== undefined) {
      resolved.next_mdf = Mdf.Resolve(msg.next_mdf)
    }
    else {
      resolved.next_mdf = new Mdf()
    }

    return resolved;
    }
};

module.exports = MapLanes;

// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaneArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lane_array = null;
      this.current_lane_idx = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lane_array')) {
        this.lane_array = initObj.lane_array
      }
      else {
        this.lane_array = [];
      }
      if (initObj.hasOwnProperty('current_lane_idx')) {
        this.current_lane_idx = initObj.current_lane_idx
      }
      else {
        this.current_lane_idx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lane_array]
    // Serialize the length for message field [lane_array]
    bufferOffset = _serializer.uint32(obj.lane_array.length, buffer, bufferOffset);
    obj.lane_array.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_lane_idx]
    bufferOffset = _serializer.uint8(obj.current_lane_idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneArray
    let len;
    let data = new LaneArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_array]
    // Deserialize array length for message field [lane_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_array[i] = Lane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_lane_idx]
    data.current_lane_idx = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lane_array.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/LaneArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c2fe9b8bba839e0239dd165bdce006c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/Lane[] lane_array
    uint8 current_lane_idx
    
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
    MSG: momenta_msgs/Lane
    std_msgs/Header header
    momenta_msgs/Lanemark left_lanemark
    momenta_msgs/Lanemark right_lanemark
    momenta_msgs/Line mid_line
    float32 width
    
    ================================================================================
    MSG: momenta_msgs/Lanemark
    uint32 id
    float32 prob
    bool is_solid
    bool is_boundary
    uint8 color
    bool is_Yline
    bool is_biline
    geometry_msgs/Pose2D[] pts_on_img
    geometry_msgs/Pose2D[] pts_on_bv
    
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
    MSG: momenta_msgs/Line
    geometry_msgs/Pose2D[] pose_array
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lane_array !== undefined) {
      resolved.lane_array = new Array(msg.lane_array.length);
      for (let i = 0; i < resolved.lane_array.length; ++i) {
        resolved.lane_array[i] = Lane.Resolve(msg.lane_array[i]);
      }
    }
    else {
      resolved.lane_array = []
    }

    if (msg.current_lane_idx !== undefined) {
      resolved.current_lane_idx = msg.current_lane_idx;
    }
    else {
      resolved.current_lane_idx = 0
    }

    return resolved;
    }
};

module.exports = LaneArray;

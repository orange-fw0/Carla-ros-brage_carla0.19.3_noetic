// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Line = require('./Line.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path = null;
      this.vel_array = null;
      this.curvature = null;
      this.accleration = null;
      this.s = null;
      this.relative_time = null;
      this.is_replan = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new Line();
      }
      if (initObj.hasOwnProperty('vel_array')) {
        this.vel_array = initObj.vel_array
      }
      else {
        this.vel_array = [];
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = [];
      }
      if (initObj.hasOwnProperty('accleration')) {
        this.accleration = initObj.accleration
      }
      else {
        this.accleration = [];
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = [];
      }
      if (initObj.hasOwnProperty('relative_time')) {
        this.relative_time = initObj.relative_time
      }
      else {
        this.relative_time = [];
      }
      if (initObj.hasOwnProperty('is_replan')) {
        this.is_replan = initObj.is_replan
      }
      else {
        this.is_replan = false;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = Line.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [vel_array]
    bufferOffset = _arraySerializer.float32(obj.vel_array, buffer, bufferOffset, null);
    // Serialize message field [curvature]
    bufferOffset = _arraySerializer.float32(obj.curvature, buffer, bufferOffset, null);
    // Serialize message field [accleration]
    bufferOffset = _arraySerializer.float32(obj.accleration, buffer, bufferOffset, null);
    // Serialize message field [s]
    bufferOffset = _arraySerializer.float32(obj.s, buffer, bufferOffset, null);
    // Serialize message field [relative_time]
    bufferOffset = _arraySerializer.float32(obj.relative_time, buffer, bufferOffset, null);
    // Serialize message field [is_replan]
    bufferOffset = _serializer.bool(obj.is_replan, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = Line.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_array]
    data.vel_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [curvature]
    data.curvature = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [accleration]
    data.accleration = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [s]
    data.s = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [relative_time]
    data.relative_time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [is_replan]
    data.is_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Line.getMessageSize(object.path);
    length += 4 * object.vel_array.length;
    length += 4 * object.curvature.length;
    length += 4 * object.accleration.length;
    length += 4 * object.s.length;
    length += 4 * object.relative_time.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f56d7780cca9f3f4654351edab447c5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/Line path
    float32[] vel_array
    float32[] curvature
    float32[] accleration
    float32[] s
    float32[] relative_time
    bool is_replan
    int32 type
    
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
    MSG: momenta_msgs/Line
    geometry_msgs/Pose2D[] pose_array
    
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
    const resolved = new Trajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path !== undefined) {
      resolved.path = Line.Resolve(msg.path)
    }
    else {
      resolved.path = new Line()
    }

    if (msg.vel_array !== undefined) {
      resolved.vel_array = msg.vel_array;
    }
    else {
      resolved.vel_array = []
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = []
    }

    if (msg.accleration !== undefined) {
      resolved.accleration = msg.accleration;
    }
    else {
      resolved.accleration = []
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = []
    }

    if (msg.relative_time !== undefined) {
      resolved.relative_time = msg.relative_time;
    }
    else {
      resolved.relative_time = []
    }

    if (msg.is_replan !== undefined) {
      resolved.is_replan = msg.is_replan;
    }
    else {
      resolved.is_replan = false
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = Trajectory;

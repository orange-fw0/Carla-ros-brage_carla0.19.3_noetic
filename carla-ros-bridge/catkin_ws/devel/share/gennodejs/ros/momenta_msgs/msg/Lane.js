// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lanemark = require('./Lanemark.js');
let Line = require('./Line.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_lanemark = null;
      this.right_lanemark = null;
      this.mid_line = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_lanemark')) {
        this.left_lanemark = initObj.left_lanemark
      }
      else {
        this.left_lanemark = new Lanemark();
      }
      if (initObj.hasOwnProperty('right_lanemark')) {
        this.right_lanemark = initObj.right_lanemark
      }
      else {
        this.right_lanemark = new Lanemark();
      }
      if (initObj.hasOwnProperty('mid_line')) {
        this.mid_line = initObj.mid_line
      }
      else {
        this.mid_line = new Line();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_lanemark]
    bufferOffset = Lanemark.serialize(obj.left_lanemark, buffer, bufferOffset);
    // Serialize message field [right_lanemark]
    bufferOffset = Lanemark.serialize(obj.right_lanemark, buffer, bufferOffset);
    // Serialize message field [mid_line]
    bufferOffset = Line.serialize(obj.mid_line, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_lanemark]
    data.left_lanemark = Lanemark.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_lanemark]
    data.right_lanemark = Lanemark.deserialize(buffer, bufferOffset);
    // Deserialize message field [mid_line]
    data.mid_line = Line.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Lanemark.getMessageSize(object.left_lanemark);
    length += Lanemark.getMessageSize(object.right_lanemark);
    length += Line.getMessageSize(object.mid_line);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d382b3275ac23c4c0868787de279d0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/Lanemark left_lanemark
    momenta_msgs/Lanemark right_lanemark
    momenta_msgs/Line mid_line
    float32 width
    
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
    const resolved = new Lane(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_lanemark !== undefined) {
      resolved.left_lanemark = Lanemark.Resolve(msg.left_lanemark)
    }
    else {
      resolved.left_lanemark = new Lanemark()
    }

    if (msg.right_lanemark !== undefined) {
      resolved.right_lanemark = Lanemark.Resolve(msg.right_lanemark)
    }
    else {
      resolved.right_lanemark = new Lanemark()
    }

    if (msg.mid_line !== undefined) {
      resolved.mid_line = Line.Resolve(msg.mid_line)
    }
    else {
      resolved.mid_line = new Line()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;

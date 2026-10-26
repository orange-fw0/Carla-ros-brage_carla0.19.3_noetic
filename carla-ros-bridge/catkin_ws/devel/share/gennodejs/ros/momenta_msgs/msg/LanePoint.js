// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LanePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.vel_limit = null;
      this.width_left = null;
      this.is_left_cross = null;
      this.width_right = null;
      this.is_right_cross = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('vel_limit')) {
        this.vel_limit = initObj.vel_limit
      }
      else {
        this.vel_limit = 0.0;
      }
      if (initObj.hasOwnProperty('width_left')) {
        this.width_left = initObj.width_left
      }
      else {
        this.width_left = 0.0;
      }
      if (initObj.hasOwnProperty('is_left_cross')) {
        this.is_left_cross = initObj.is_left_cross
      }
      else {
        this.is_left_cross = false;
      }
      if (initObj.hasOwnProperty('width_right')) {
        this.width_right = initObj.width_right
      }
      else {
        this.width_right = 0.0;
      }
      if (initObj.hasOwnProperty('is_right_cross')) {
        this.is_right_cross = initObj.is_right_cross
      }
      else {
        this.is_right_cross = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LanePoint
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [vel_limit]
    bufferOffset = _serializer.float32(obj.vel_limit, buffer, bufferOffset);
    // Serialize message field [width_left]
    bufferOffset = _serializer.float32(obj.width_left, buffer, bufferOffset);
    // Serialize message field [is_left_cross]
    bufferOffset = _serializer.bool(obj.is_left_cross, buffer, bufferOffset);
    // Serialize message field [width_right]
    bufferOffset = _serializer.float32(obj.width_right, buffer, bufferOffset);
    // Serialize message field [is_right_cross]
    bufferOffset = _serializer.bool(obj.is_right_cross, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LanePoint
    let len;
    let data = new LanePoint(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_limit]
    data.vel_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width_left]
    data.width_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_left_cross]
    data.is_left_cross = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [width_right]
    data.width_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_right_cross]
    data.is_right_cross = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/LanePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2daab4136f40fcf33a0568ccb1b336b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LanePoint(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.vel_limit !== undefined) {
      resolved.vel_limit = msg.vel_limit;
    }
    else {
      resolved.vel_limit = 0.0
    }

    if (msg.width_left !== undefined) {
      resolved.width_left = msg.width_left;
    }
    else {
      resolved.width_left = 0.0
    }

    if (msg.is_left_cross !== undefined) {
      resolved.is_left_cross = msg.is_left_cross;
    }
    else {
      resolved.is_left_cross = false
    }

    if (msg.width_right !== undefined) {
      resolved.width_right = msg.width_right;
    }
    else {
      resolved.width_right = 0.0
    }

    if (msg.is_right_cross !== undefined) {
      resolved.is_right_cross = msg.is_right_cross;
    }
    else {
      resolved.is_right_cross = false
    }

    return resolved;
    }
};

module.exports = LanePoint;

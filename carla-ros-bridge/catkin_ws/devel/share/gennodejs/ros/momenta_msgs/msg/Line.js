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

class Line {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_array = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_array')) {
        this.pose_array = initObj.pose_array
      }
      else {
        this.pose_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Line
    // Serialize message field [pose_array]
    // Serialize the length for message field [pose_array]
    bufferOffset = _serializer.uint32(obj.pose_array.length, buffer, bufferOffset);
    obj.pose_array.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Line
    let len;
    let data = new Line(null);
    // Deserialize message field [pose_array]
    // Deserialize array length for message field [pose_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_array[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pose_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Line';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f78f94d848ebec9305f12de2f0673e6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Line(null);
    if (msg.pose_array !== undefined) {
      resolved.pose_array = new Array(msg.pose_array.length);
      for (let i = 0; i < resolved.pose_array.length; ++i) {
        resolved.pose_array[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pose_array[i]);
      }
    }
    else {
      resolved.pose_array = []
    }

    return resolved;
    }
};

module.exports = Line;

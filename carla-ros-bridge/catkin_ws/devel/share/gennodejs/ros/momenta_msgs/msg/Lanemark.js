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

class Lanemark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.prob = null;
      this.is_solid = null;
      this.is_boundary = null;
      this.color = null;
      this.is_Yline = null;
      this.is_biline = null;
      this.pts_on_img = null;
      this.pts_on_bv = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
      if (initObj.hasOwnProperty('is_solid')) {
        this.is_solid = initObj.is_solid
      }
      else {
        this.is_solid = false;
      }
      if (initObj.hasOwnProperty('is_boundary')) {
        this.is_boundary = initObj.is_boundary
      }
      else {
        this.is_boundary = false;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('is_Yline')) {
        this.is_Yline = initObj.is_Yline
      }
      else {
        this.is_Yline = false;
      }
      if (initObj.hasOwnProperty('is_biline')) {
        this.is_biline = initObj.is_biline
      }
      else {
        this.is_biline = false;
      }
      if (initObj.hasOwnProperty('pts_on_img')) {
        this.pts_on_img = initObj.pts_on_img
      }
      else {
        this.pts_on_img = [];
      }
      if (initObj.hasOwnProperty('pts_on_bv')) {
        this.pts_on_bv = initObj.pts_on_bv
      }
      else {
        this.pts_on_bv = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lanemark
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    // Serialize message field [is_solid]
    bufferOffset = _serializer.bool(obj.is_solid, buffer, bufferOffset);
    // Serialize message field [is_boundary]
    bufferOffset = _serializer.bool(obj.is_boundary, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [is_Yline]
    bufferOffset = _serializer.bool(obj.is_Yline, buffer, bufferOffset);
    // Serialize message field [is_biline]
    bufferOffset = _serializer.bool(obj.is_biline, buffer, bufferOffset);
    // Serialize message field [pts_on_img]
    // Serialize the length for message field [pts_on_img]
    bufferOffset = _serializer.uint32(obj.pts_on_img.length, buffer, bufferOffset);
    obj.pts_on_img.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pts_on_bv]
    // Serialize the length for message field [pts_on_bv]
    bufferOffset = _serializer.uint32(obj.pts_on_bv.length, buffer, bufferOffset);
    obj.pts_on_bv.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lanemark
    let len;
    let data = new Lanemark(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_solid]
    data.is_solid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_boundary]
    data.is_boundary = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_Yline]
    data.is_Yline = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_biline]
    data.is_biline = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pts_on_img]
    // Deserialize array length for message field [pts_on_img]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_on_img = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_on_img[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pts_on_bv]
    // Deserialize array length for message field [pts_on_bv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_on_bv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_on_bv[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pts_on_img.length;
    length += 24 * object.pts_on_bv.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Lanemark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91f7d0e27c50ffe0b860a789237c5ad2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lanemark(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    if (msg.is_solid !== undefined) {
      resolved.is_solid = msg.is_solid;
    }
    else {
      resolved.is_solid = false
    }

    if (msg.is_boundary !== undefined) {
      resolved.is_boundary = msg.is_boundary;
    }
    else {
      resolved.is_boundary = false
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.is_Yline !== undefined) {
      resolved.is_Yline = msg.is_Yline;
    }
    else {
      resolved.is_Yline = false
    }

    if (msg.is_biline !== undefined) {
      resolved.is_biline = msg.is_biline;
    }
    else {
      resolved.is_biline = false
    }

    if (msg.pts_on_img !== undefined) {
      resolved.pts_on_img = new Array(msg.pts_on_img.length);
      for (let i = 0; i < resolved.pts_on_img.length; ++i) {
        resolved.pts_on_img[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pts_on_img[i]);
      }
    }
    else {
      resolved.pts_on_img = []
    }

    if (msg.pts_on_bv !== undefined) {
      resolved.pts_on_bv = new Array(msg.pts_on_bv.length);
      for (let i = 0; i < resolved.pts_on_bv.length; ++i) {
        resolved.pts_on_bv[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pts_on_bv[i]);
      }
    }
    else {
      resolved.pts_on_bv = []
    }

    return resolved;
    }
};

module.exports = Lanemark;

// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RefPointInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.x = null;
      this.y = null;
      this.curvature = null;
      this.current_lane_width = null;
      this.left_lane_width = null;
      this.right_lane_width = null;
      this.left_lane_border = null;
      this.right_lane_border = null;
      this.left_road_border = null;
      this.right_road_border = null;
      this.theta_ref = null;
      this.cos_theta_ref = null;
      this.sin_theta_ref = null;
      this.left_road_border_type = null;
      this.right_road_border_type = null;
      this.left_lane_border_type = null;
      this.right_lane_border_type = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('current_lane_width')) {
        this.current_lane_width = initObj.current_lane_width
      }
      else {
        this.current_lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('left_lane_width')) {
        this.left_lane_width = initObj.left_lane_width
      }
      else {
        this.left_lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('right_lane_width')) {
        this.right_lane_width = initObj.right_lane_width
      }
      else {
        this.right_lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('left_lane_border')) {
        this.left_lane_border = initObj.left_lane_border
      }
      else {
        this.left_lane_border = 0.0;
      }
      if (initObj.hasOwnProperty('right_lane_border')) {
        this.right_lane_border = initObj.right_lane_border
      }
      else {
        this.right_lane_border = 0.0;
      }
      if (initObj.hasOwnProperty('left_road_border')) {
        this.left_road_border = initObj.left_road_border
      }
      else {
        this.left_road_border = 0.0;
      }
      if (initObj.hasOwnProperty('right_road_border')) {
        this.right_road_border = initObj.right_road_border
      }
      else {
        this.right_road_border = 0.0;
      }
      if (initObj.hasOwnProperty('theta_ref')) {
        this.theta_ref = initObj.theta_ref
      }
      else {
        this.theta_ref = 0.0;
      }
      if (initObj.hasOwnProperty('cos_theta_ref')) {
        this.cos_theta_ref = initObj.cos_theta_ref
      }
      else {
        this.cos_theta_ref = 0.0;
      }
      if (initObj.hasOwnProperty('sin_theta_ref')) {
        this.sin_theta_ref = initObj.sin_theta_ref
      }
      else {
        this.sin_theta_ref = 0.0;
      }
      if (initObj.hasOwnProperty('left_road_border_type')) {
        this.left_road_border_type = initObj.left_road_border_type
      }
      else {
        this.left_road_border_type = 0;
      }
      if (initObj.hasOwnProperty('right_road_border_type')) {
        this.right_road_border_type = initObj.right_road_border_type
      }
      else {
        this.right_road_border_type = 0;
      }
      if (initObj.hasOwnProperty('left_lane_border_type')) {
        this.left_lane_border_type = initObj.left_lane_border_type
      }
      else {
        this.left_lane_border_type = 0;
      }
      if (initObj.hasOwnProperty('right_lane_border_type')) {
        this.right_lane_border_type = initObj.right_lane_border_type
      }
      else {
        this.right_lane_border_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefPointInfo
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float64(obj.curvature, buffer, bufferOffset);
    // Serialize message field [current_lane_width]
    bufferOffset = _serializer.float64(obj.current_lane_width, buffer, bufferOffset);
    // Serialize message field [left_lane_width]
    bufferOffset = _serializer.float64(obj.left_lane_width, buffer, bufferOffset);
    // Serialize message field [right_lane_width]
    bufferOffset = _serializer.float64(obj.right_lane_width, buffer, bufferOffset);
    // Serialize message field [left_lane_border]
    bufferOffset = _serializer.float64(obj.left_lane_border, buffer, bufferOffset);
    // Serialize message field [right_lane_border]
    bufferOffset = _serializer.float64(obj.right_lane_border, buffer, bufferOffset);
    // Serialize message field [left_road_border]
    bufferOffset = _serializer.float64(obj.left_road_border, buffer, bufferOffset);
    // Serialize message field [right_road_border]
    bufferOffset = _serializer.float64(obj.right_road_border, buffer, bufferOffset);
    // Serialize message field [theta_ref]
    bufferOffset = _serializer.float64(obj.theta_ref, buffer, bufferOffset);
    // Serialize message field [cos_theta_ref]
    bufferOffset = _serializer.float64(obj.cos_theta_ref, buffer, bufferOffset);
    // Serialize message field [sin_theta_ref]
    bufferOffset = _serializer.float64(obj.sin_theta_ref, buffer, bufferOffset);
    // Serialize message field [left_road_border_type]
    bufferOffset = _serializer.int32(obj.left_road_border_type, buffer, bufferOffset);
    // Serialize message field [right_road_border_type]
    bufferOffset = _serializer.int32(obj.right_road_border_type, buffer, bufferOffset);
    // Serialize message field [left_lane_border_type]
    bufferOffset = _serializer.int32(obj.left_lane_border_type, buffer, bufferOffset);
    // Serialize message field [right_lane_border_type]
    bufferOffset = _serializer.int32(obj.right_lane_border_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefPointInfo
    let len;
    let data = new RefPointInfo(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_lane_width]
    data.current_lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_lane_width]
    data.left_lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_lane_width]
    data.right_lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_lane_border]
    data.left_lane_border = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_lane_border]
    data.right_lane_border = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_road_border]
    data.left_road_border = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_road_border]
    data.right_road_border = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_ref]
    data.theta_ref = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cos_theta_ref]
    data.cos_theta_ref = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sin_theta_ref]
    data.sin_theta_ref = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_road_border_type]
    data.left_road_border_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_road_border_type]
    data.right_road_border_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_lane_border_type]
    data.left_lane_border_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_lane_border_type]
    data.right_lane_border_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/RefPointInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9f90b313e4d20a00e3e615dc12ba380';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    float64 x
    float64 y
    float64 curvature
    float64 current_lane_width
    float64 left_lane_width
    float64 right_lane_width
    float64 left_lane_border
    float64 right_lane_border
    float64 left_road_border
    float64 right_road_border
    float64 theta_ref
    float64 cos_theta_ref
    float64 sin_theta_ref
    int32 left_road_border_type
    int32 right_road_border_type
    int32 left_lane_border_type
    int32 right_lane_border_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefPointInfo(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.current_lane_width !== undefined) {
      resolved.current_lane_width = msg.current_lane_width;
    }
    else {
      resolved.current_lane_width = 0.0
    }

    if (msg.left_lane_width !== undefined) {
      resolved.left_lane_width = msg.left_lane_width;
    }
    else {
      resolved.left_lane_width = 0.0
    }

    if (msg.right_lane_width !== undefined) {
      resolved.right_lane_width = msg.right_lane_width;
    }
    else {
      resolved.right_lane_width = 0.0
    }

    if (msg.left_lane_border !== undefined) {
      resolved.left_lane_border = msg.left_lane_border;
    }
    else {
      resolved.left_lane_border = 0.0
    }

    if (msg.right_lane_border !== undefined) {
      resolved.right_lane_border = msg.right_lane_border;
    }
    else {
      resolved.right_lane_border = 0.0
    }

    if (msg.left_road_border !== undefined) {
      resolved.left_road_border = msg.left_road_border;
    }
    else {
      resolved.left_road_border = 0.0
    }

    if (msg.right_road_border !== undefined) {
      resolved.right_road_border = msg.right_road_border;
    }
    else {
      resolved.right_road_border = 0.0
    }

    if (msg.theta_ref !== undefined) {
      resolved.theta_ref = msg.theta_ref;
    }
    else {
      resolved.theta_ref = 0.0
    }

    if (msg.cos_theta_ref !== undefined) {
      resolved.cos_theta_ref = msg.cos_theta_ref;
    }
    else {
      resolved.cos_theta_ref = 0.0
    }

    if (msg.sin_theta_ref !== undefined) {
      resolved.sin_theta_ref = msg.sin_theta_ref;
    }
    else {
      resolved.sin_theta_ref = 0.0
    }

    if (msg.left_road_border_type !== undefined) {
      resolved.left_road_border_type = msg.left_road_border_type;
    }
    else {
      resolved.left_road_border_type = 0
    }

    if (msg.right_road_border_type !== undefined) {
      resolved.right_road_border_type = msg.right_road_border_type;
    }
    else {
      resolved.right_road_border_type = 0
    }

    if (msg.left_lane_border_type !== undefined) {
      resolved.left_lane_border_type = msg.left_lane_border_type;
    }
    else {
      resolved.left_lane_border_type = 0
    }

    if (msg.right_lane_border_type !== undefined) {
      resolved.right_lane_border_type = msg.right_lane_border_type;
    }
    else {
      resolved.right_lane_border_type = 0
    }

    return resolved;
    }
};

module.exports = RefPointInfo;

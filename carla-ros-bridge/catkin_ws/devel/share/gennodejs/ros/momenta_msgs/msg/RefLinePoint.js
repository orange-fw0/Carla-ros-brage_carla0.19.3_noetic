// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RefLinePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.curvature = null;
      this.yaw = null;
      this.left_road_border_distance = null;
      this.right_road_border_distance = null;
      this.left_lane_border_distance = null;
      this.right_lane_border_distance = null;
      this.left_obstacle_distance = null;
      this.right_obstacle_distance = null;
      this.lane_width = null;
      this.speed_limit = null;
      this.track_id = null;
    }
    else {
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
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('left_road_border_distance')) {
        this.left_road_border_distance = initObj.left_road_border_distance
      }
      else {
        this.left_road_border_distance = 0.0;
      }
      if (initObj.hasOwnProperty('right_road_border_distance')) {
        this.right_road_border_distance = initObj.right_road_border_distance
      }
      else {
        this.right_road_border_distance = 0.0;
      }
      if (initObj.hasOwnProperty('left_lane_border_distance')) {
        this.left_lane_border_distance = initObj.left_lane_border_distance
      }
      else {
        this.left_lane_border_distance = 0.0;
      }
      if (initObj.hasOwnProperty('right_lane_border_distance')) {
        this.right_lane_border_distance = initObj.right_lane_border_distance
      }
      else {
        this.right_lane_border_distance = 0.0;
      }
      if (initObj.hasOwnProperty('left_obstacle_distance')) {
        this.left_obstacle_distance = initObj.left_obstacle_distance
      }
      else {
        this.left_obstacle_distance = 0.0;
      }
      if (initObj.hasOwnProperty('right_obstacle_distance')) {
        this.right_obstacle_distance = initObj.right_obstacle_distance
      }
      else {
        this.right_obstacle_distance = 0.0;
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefLinePoint
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float64(obj.curvature, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [left_road_border_distance]
    bufferOffset = _serializer.float64(obj.left_road_border_distance, buffer, bufferOffset);
    // Serialize message field [right_road_border_distance]
    bufferOffset = _serializer.float64(obj.right_road_border_distance, buffer, bufferOffset);
    // Serialize message field [left_lane_border_distance]
    bufferOffset = _serializer.float64(obj.left_lane_border_distance, buffer, bufferOffset);
    // Serialize message field [right_lane_border_distance]
    bufferOffset = _serializer.float64(obj.right_lane_border_distance, buffer, bufferOffset);
    // Serialize message field [left_obstacle_distance]
    bufferOffset = _serializer.float64(obj.left_obstacle_distance, buffer, bufferOffset);
    // Serialize message field [right_obstacle_distance]
    bufferOffset = _serializer.float64(obj.right_obstacle_distance, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float64(obj.lane_width, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float64(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.string(obj.track_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefLinePoint
    let len;
    let data = new RefLinePoint(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_road_border_distance]
    data.left_road_border_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_road_border_distance]
    data.right_road_border_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_lane_border_distance]
    data.left_lane_border_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_lane_border_distance]
    data.right_lane_border_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_obstacle_distance]
    data.left_obstacle_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_obstacle_distance]
    data.right_obstacle_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.track_id);
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/RefLinePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6d3ed5196752014aedf09ac2b7a58f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 curvature
    float64 yaw
    float64 left_road_border_distance
    float64 right_road_border_distance
    float64 left_lane_border_distance
    float64 right_lane_border_distance
    float64 left_obstacle_distance
    float64 right_obstacle_distance
    float64 lane_width
    float64 speed_limit
    string track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefLinePoint(null);
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

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.left_road_border_distance !== undefined) {
      resolved.left_road_border_distance = msg.left_road_border_distance;
    }
    else {
      resolved.left_road_border_distance = 0.0
    }

    if (msg.right_road_border_distance !== undefined) {
      resolved.right_road_border_distance = msg.right_road_border_distance;
    }
    else {
      resolved.right_road_border_distance = 0.0
    }

    if (msg.left_lane_border_distance !== undefined) {
      resolved.left_lane_border_distance = msg.left_lane_border_distance;
    }
    else {
      resolved.left_lane_border_distance = 0.0
    }

    if (msg.right_lane_border_distance !== undefined) {
      resolved.right_lane_border_distance = msg.right_lane_border_distance;
    }
    else {
      resolved.right_lane_border_distance = 0.0
    }

    if (msg.left_obstacle_distance !== undefined) {
      resolved.left_obstacle_distance = msg.left_obstacle_distance;
    }
    else {
      resolved.left_obstacle_distance = 0.0
    }

    if (msg.right_obstacle_distance !== undefined) {
      resolved.right_obstacle_distance = msg.right_obstacle_distance;
    }
    else {
      resolved.right_obstacle_distance = 0.0
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = ''
    }

    return resolved;
    }
};

module.exports = RefLinePoint;

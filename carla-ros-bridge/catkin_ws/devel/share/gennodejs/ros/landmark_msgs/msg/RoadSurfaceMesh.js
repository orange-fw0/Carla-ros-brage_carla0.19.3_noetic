// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoadSurfaceMesh {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score_map = null;
      this.bev_h = null;
      this.bev_w = null;
      this.x_bound_min = null;
      this.x_bound_max = null;
      this.y_bound_min = null;
      this.y_bound_max = null;
      this.meter_per_pixel_x = null;
      this.meter_per_pixel_y = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('score_map')) {
        this.score_map = initObj.score_map
      }
      else {
        this.score_map = [];
      }
      if (initObj.hasOwnProperty('bev_h')) {
        this.bev_h = initObj.bev_h
      }
      else {
        this.bev_h = 0;
      }
      if (initObj.hasOwnProperty('bev_w')) {
        this.bev_w = initObj.bev_w
      }
      else {
        this.bev_w = 0;
      }
      if (initObj.hasOwnProperty('x_bound_min')) {
        this.x_bound_min = initObj.x_bound_min
      }
      else {
        this.x_bound_min = 0.0;
      }
      if (initObj.hasOwnProperty('x_bound_max')) {
        this.x_bound_max = initObj.x_bound_max
      }
      else {
        this.x_bound_max = 0.0;
      }
      if (initObj.hasOwnProperty('y_bound_min')) {
        this.y_bound_min = initObj.y_bound_min
      }
      else {
        this.y_bound_min = 0.0;
      }
      if (initObj.hasOwnProperty('y_bound_max')) {
        this.y_bound_max = initObj.y_bound_max
      }
      else {
        this.y_bound_max = 0.0;
      }
      if (initObj.hasOwnProperty('meter_per_pixel_x')) {
        this.meter_per_pixel_x = initObj.meter_per_pixel_x
      }
      else {
        this.meter_per_pixel_x = 0.0;
      }
      if (initObj.hasOwnProperty('meter_per_pixel_y')) {
        this.meter_per_pixel_y = initObj.meter_per_pixel_y
      }
      else {
        this.meter_per_pixel_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadSurfaceMesh
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [score_map]
    bufferOffset = _arraySerializer.uint8(obj.score_map, buffer, bufferOffset, null);
    // Serialize message field [bev_h]
    bufferOffset = _serializer.uint16(obj.bev_h, buffer, bufferOffset);
    // Serialize message field [bev_w]
    bufferOffset = _serializer.uint16(obj.bev_w, buffer, bufferOffset);
    // Serialize message field [x_bound_min]
    bufferOffset = _serializer.float32(obj.x_bound_min, buffer, bufferOffset);
    // Serialize message field [x_bound_max]
    bufferOffset = _serializer.float32(obj.x_bound_max, buffer, bufferOffset);
    // Serialize message field [y_bound_min]
    bufferOffset = _serializer.float32(obj.y_bound_min, buffer, bufferOffset);
    // Serialize message field [y_bound_max]
    bufferOffset = _serializer.float32(obj.y_bound_max, buffer, bufferOffset);
    // Serialize message field [meter_per_pixel_x]
    bufferOffset = _serializer.float32(obj.meter_per_pixel_x, buffer, bufferOffset);
    // Serialize message field [meter_per_pixel_y]
    bufferOffset = _serializer.float32(obj.meter_per_pixel_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadSurfaceMesh
    let len;
    let data = new RoadSurfaceMesh(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score_map]
    data.score_map = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [bev_h]
    data.bev_h = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [bev_w]
    data.bev_w = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [x_bound_min]
    data.x_bound_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_bound_max]
    data.x_bound_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_bound_min]
    data.y_bound_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_bound_max]
    data.y_bound_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [meter_per_pixel_x]
    data.meter_per_pixel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [meter_per_pixel_y]
    data.meter_per_pixel_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.score_map.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadSurfaceMesh';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '434e68323d7f85a51e6378c55a1151ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SCORE_MAP_VALID = 1
    uint8 available
    uint8[] score_map
    uint16 bev_h
    uint16 bev_w
    float32 x_bound_min
    float32 x_bound_max
    float32 y_bound_min
    float32 y_bound_max
    float32 meter_per_pixel_x
    float32 meter_per_pixel_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadSurfaceMesh(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.score_map !== undefined) {
      resolved.score_map = msg.score_map;
    }
    else {
      resolved.score_map = []
    }

    if (msg.bev_h !== undefined) {
      resolved.bev_h = msg.bev_h;
    }
    else {
      resolved.bev_h = 0
    }

    if (msg.bev_w !== undefined) {
      resolved.bev_w = msg.bev_w;
    }
    else {
      resolved.bev_w = 0
    }

    if (msg.x_bound_min !== undefined) {
      resolved.x_bound_min = msg.x_bound_min;
    }
    else {
      resolved.x_bound_min = 0.0
    }

    if (msg.x_bound_max !== undefined) {
      resolved.x_bound_max = msg.x_bound_max;
    }
    else {
      resolved.x_bound_max = 0.0
    }

    if (msg.y_bound_min !== undefined) {
      resolved.y_bound_min = msg.y_bound_min;
    }
    else {
      resolved.y_bound_min = 0.0
    }

    if (msg.y_bound_max !== undefined) {
      resolved.y_bound_max = msg.y_bound_max;
    }
    else {
      resolved.y_bound_max = 0.0
    }

    if (msg.meter_per_pixel_x !== undefined) {
      resolved.meter_per_pixel_x = msg.meter_per_pixel_x;
    }
    else {
      resolved.meter_per_pixel_x = 0.0
    }

    if (msg.meter_per_pixel_y !== undefined) {
      resolved.meter_per_pixel_y = msg.meter_per_pixel_y;
    }
    else {
      resolved.meter_per_pixel_y = 0.0
    }

    return resolved;
    }
};

// Constants for message
RoadSurfaceMesh.Constants = {
  SCORE_MAP_VALID: 1,
}

module.exports = RoadSurfaceMesh;

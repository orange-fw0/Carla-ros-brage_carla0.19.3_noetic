// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VectorElementTypeEnum = require('./VectorElementTypeEnum.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class VectorElement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.score = null;
      this.slide_distance = null;
      this.center = null;
      this.center_point = null;
      this.points = null;
      this.points_local = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new VectorElementTypeEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('slide_distance')) {
        this.slide_distance = initObj.slide_distance
      }
      else {
        this.slide_distance = 0.0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('points_local')) {
        this.points_local = initObj.points_local
      }
      else {
        this.points_local = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VectorElement
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = VectorElementTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [slide_distance]
    bufferOffset = _serializer.float32(obj.slide_distance, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [center_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_local]
    // Serialize the length for message field [points_local]
    bufferOffset = _serializer.uint32(obj.points_local.length, buffer, bufferOffset);
    obj.points_local.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VectorElement
    let len;
    let data = new VectorElement(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = VectorElementTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slide_distance]
    data.slide_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_point]
    data.center_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_local]
    // Deserialize array length for message field [points_local]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_local = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_local[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += 24 * object.points_local.length;
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/VectorElement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4266346c59e853813e442fbfa7cdd405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    submap_msgs/VectorElementTypeEnum type
    float32 score
    float32 slide_distance
    geometry_msgs/Point center
    geometry_msgs/Point center_point
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/VectorElementTypeEnum
    uint8 UNKNOWN = 0
    uint8 GATE = 1
    uint8 ARROW = 2
    uint8 STOP_LINE = 3
    uint8 DASH_LINE = 4
    uint8 SPEED_BUMP = 5
    uint8 ZWBRA_LINE = 6
    uint8 DDLD_ROAD_BOUNDARY = 7
    uint8 DDLD_LANE_BOUNDARY = 8
    uint8 DDLD_STOP_LINE = 9
    uint8 DDLD_CROSS_WALK = 10
    uint8 DDLD_ROAD_MARK = 11
    uint8 DDLD_TRAFFIC_SIGN = 12
    uint8 DDLD_TRAFFIC_LIGHT = 13
    uint8 value
    float32 score
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VectorElement(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = VectorElementTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new VectorElementTypeEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.slide_distance !== undefined) {
      resolved.slide_distance = msg.slide_distance;
    }
    else {
      resolved.slide_distance = 0.0
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = geometry_msgs.msg.Point.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new geometry_msgs.msg.Point()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.points_local !== undefined) {
      resolved.points_local = new Array(msg.points_local.length);
      for (let i = 0; i < resolved.points_local.length; ++i) {
        resolved.points_local[i] = geometry_msgs.msg.Point.Resolve(msg.points_local[i]);
      }
    }
    else {
      resolved.points_local = []
    }

    return resolved;
    }
};

module.exports = VectorElement;

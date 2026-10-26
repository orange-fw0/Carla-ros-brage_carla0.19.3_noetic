// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Pillar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.center_local = null;
      this.edge_points = null;
      this.edge_points_local = null;
      this.id = null;
      this.point_number = null;
      this.score = null;
      this.slide_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('center_local')) {
        this.center_local = initObj.center_local
      }
      else {
        this.center_local = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('edge_points')) {
        this.edge_points = initObj.edge_points
      }
      else {
        this.edge_points = [];
      }
      if (initObj.hasOwnProperty('edge_points_local')) {
        this.edge_points_local = initObj.edge_points_local
      }
      else {
        this.edge_points_local = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('point_number')) {
        this.point_number = initObj.point_number
      }
      else {
        this.point_number = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pillar
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [center_local]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center_local, buffer, bufferOffset);
    // Serialize message field [edge_points]
    // Serialize the length for message field [edge_points]
    bufferOffset = _serializer.uint32(obj.edge_points.length, buffer, bufferOffset);
    obj.edge_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [edge_points_local]
    // Serialize the length for message field [edge_points_local]
    bufferOffset = _serializer.uint32(obj.edge_points_local.length, buffer, bufferOffset);
    obj.edge_points_local.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [point_number]
    bufferOffset = _serializer.uint32(obj.point_number, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [slide_distance]
    bufferOffset = _serializer.float32(obj.slide_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pillar
    let len;
    let data = new Pillar(null);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_local]
    data.center_local = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [edge_points]
    // Deserialize array length for message field [edge_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.edge_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.edge_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [edge_points_local]
    // Deserialize array length for message field [edge_points_local]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.edge_points_local = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.edge_points_local[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [point_number]
    data.point_number = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slide_distance]
    data.slide_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.edge_points.length;
    length += 24 * object.edge_points_local.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/Pillar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '618b7719eb1757eac91e139c9661a51a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point center
    geometry_msgs/Point center_local
    geometry_msgs/Point[] edge_points
    geometry_msgs/Point[] edge_points_local
    uint32 id
    uint32 point_number
    float32 score
    float32 slide_distance
    
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
    const resolved = new Pillar(null);
    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.center_local !== undefined) {
      resolved.center_local = geometry_msgs.msg.Point.Resolve(msg.center_local)
    }
    else {
      resolved.center_local = new geometry_msgs.msg.Point()
    }

    if (msg.edge_points !== undefined) {
      resolved.edge_points = new Array(msg.edge_points.length);
      for (let i = 0; i < resolved.edge_points.length; ++i) {
        resolved.edge_points[i] = geometry_msgs.msg.Point.Resolve(msg.edge_points[i]);
      }
    }
    else {
      resolved.edge_points = []
    }

    if (msg.edge_points_local !== undefined) {
      resolved.edge_points_local = new Array(msg.edge_points_local.length);
      for (let i = 0; i < resolved.edge_points_local.length; ++i) {
        resolved.edge_points_local[i] = geometry_msgs.msg.Point.Resolve(msg.edge_points_local[i]);
      }
    }
    else {
      resolved.edge_points_local = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.point_number !== undefined) {
      resolved.point_number = msg.point_number;
    }
    else {
      resolved.point_number = 0
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

    return resolved;
    }
};

module.exports = Pillar;

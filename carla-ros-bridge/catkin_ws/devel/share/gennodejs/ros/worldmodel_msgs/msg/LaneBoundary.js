// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneBoundarySegment = require('./LaneBoundarySegment.js');
let LaneBoundaryPolyline = require('./LaneBoundaryPolyline.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class LaneBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.existence = null;
      this.segments = null;
      this.polyline = null;
      this.points = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('existence')) {
        this.existence = initObj.existence
      }
      else {
        this.existence = false;
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new LaneBoundaryPolyline();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundary
    // Serialize message field [existence]
    bufferOffset = _serializer.bool(obj.existence, buffer, bufferOffset);
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = LaneBoundarySegment.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polyline]
    bufferOffset = LaneBoundaryPolyline.serialize(obj.polyline, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundary
    let len;
    let data = new LaneBoundary(null);
    // Deserialize message field [existence]
    data.existence = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = LaneBoundarySegment.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polyline]
    data.polyline = LaneBoundaryPolyline.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 11 * object.segments.length;
    length += LaneBoundaryPolyline.getMessageSize(object.polyline);
    length += 12 * object.points.length;
    length += _getByteLength(object.reserved);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '489d9596a5fcbfec300adeb37414f4fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool existence
    worldmodel_msgs/LaneBoundarySegment[] segments
    worldmodel_msgs/LaneBoundaryPolyline polyline
    perception_interface_msgs/Point3f[] points
    string reserved
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundarySegment
    float64 length
    worldmodel_msgs/LaneBoundaryType type
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryType
    worldmodel_msgs/LaneBoundaryForm value
    worldmodel_msgs/LaneBoundaryColor color
    worldmodel_msgs/LaneBoundaryWidth width
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryForm
    uint8 UNKNOWN = 0
    uint8 SOLID = 1
    uint8 DASH = 2
    uint8 VIRTUAL = 3
    uint8 PHYSICAL = 4
    uint8 DOUBLE_SOLID = 5
    uint8 DASH_SOLID = 6
    uint8 SOLID_DASH = 7
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryColor
    uint8 WHITE = 0
    uint8 YELLOW = 1
    uint8 OTHER = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryWidth
    uint8 THIN = 0
    uint8 THICK = 1
    uint8 UNKNOWN = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryPolyline
    uint64 track_id
    float64[] poly_coefficient
    worldmodel_msgs/Interval available_interval
    
    ================================================================================
    MSG: worldmodel_msgs/Interval
    float64 begin
    float64 end
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundary(null);
    if (msg.existence !== undefined) {
      resolved.existence = msg.existence;
    }
    else {
      resolved.existence = false
    }

    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = LaneBoundarySegment.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = LaneBoundaryPolyline.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new LaneBoundaryPolyline()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = LaneBoundary;

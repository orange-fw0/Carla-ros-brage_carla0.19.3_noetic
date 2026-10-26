// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Roadmark = require('./Roadmark.js');

//-----------------------------------------------------------

class RoadmarkMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roadmark_contours = null;
      this.roadmark_raw_points = null;
    }
    else {
      if (initObj.hasOwnProperty('roadmark_contours')) {
        this.roadmark_contours = initObj.roadmark_contours
      }
      else {
        this.roadmark_contours = new Roadmark();
      }
      if (initObj.hasOwnProperty('roadmark_raw_points')) {
        this.roadmark_raw_points = initObj.roadmark_raw_points
      }
      else {
        this.roadmark_raw_points = new Roadmark();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadmarkMap
    // Serialize message field [roadmark_contours]
    bufferOffset = Roadmark.serialize(obj.roadmark_contours, buffer, bufferOffset);
    // Serialize message field [roadmark_raw_points]
    bufferOffset = Roadmark.serialize(obj.roadmark_raw_points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadmarkMap
    let len;
    let data = new RoadmarkMap(null);
    // Deserialize message field [roadmark_contours]
    data.roadmark_contours = Roadmark.deserialize(buffer, bufferOffset);
    // Deserialize message field [roadmark_raw_points]
    data.roadmark_raw_points = Roadmark.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Roadmark.getMessageSize(object.roadmark_contours);
    length += Roadmark.getMessageSize(object.roadmark_raw_points);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/RoadmarkMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9babd27ffe2cdfa70b280e90ae92d9ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/Roadmark roadmark_contours
    submap_msgs/Roadmark roadmark_raw_points
    
    ================================================================================
    MSG: submap_msgs/Roadmark
    submap_msgs/RoadmarkLayer[] layers
    
    ================================================================================
    MSG: submap_msgs/RoadmarkLayer
    submap_msgs/RoadmarkType type
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/RoadmarkType
    uint8 NORMAL = 0
    uint8 ARROW = 1
    uint8 SPEED_BUMP = 2
    uint8 CROSS_WALK = 3
    uint8 STOP_LINE = 4
    uint8 value
    
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
    const resolved = new RoadmarkMap(null);
    if (msg.roadmark_contours !== undefined) {
      resolved.roadmark_contours = Roadmark.Resolve(msg.roadmark_contours)
    }
    else {
      resolved.roadmark_contours = new Roadmark()
    }

    if (msg.roadmark_raw_points !== undefined) {
      resolved.roadmark_raw_points = Roadmark.Resolve(msg.roadmark_raw_points)
    }
    else {
      resolved.roadmark_raw_points = new Roadmark()
    }

    return resolved;
    }
};

module.exports = RoadmarkMap;

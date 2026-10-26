// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polyline = require('./Polyline.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class RoadBoundaryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.start_offset = null;
      this.end_offset = null;
      this.polyline = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new landmark_msgs.msg.RoadBoundaryTypeEnum();
      }
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('end_offset')) {
        this.end_offset = initObj.end_offset
      }
      else {
        this.end_offset = 0.0;
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new Polyline();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadBoundaryInfo
    // Serialize message field [type]
    bufferOffset = landmark_msgs.msg.RoadBoundaryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    // Serialize message field [polyline]
    bufferOffset = Polyline.serialize(obj.polyline, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadBoundaryInfo
    let len;
    let data = new RoadBoundaryInfo(null);
    // Deserialize message field [type]
    data.type = landmark_msgs.msg.RoadBoundaryTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_offset]
    data.end_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [polyline]
    data.polyline = Polyline.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polyline.getMessageSize(object.polyline);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/RoadBoundaryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f039d657e0a5870f4df5525e774018d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/RoadBoundaryTypeEnum type
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/Polyline polyline
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryTypeEnum
    uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_TYPE_NONE = 1
    uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
    uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
    uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
    uint8 ROAD_BOUNDARY_TYPE_CONE = 5
    uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
    uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
    uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
    uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
    uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
    uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
    uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
    uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
    uint8 ROAD_BOUNDARY_TYPE_CURB = 15
    uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
    uint8 ROAD_BOUNDARY_TYPE_WALL = 17
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
    uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/Polyline
    lane_navi_info_msgs/Point[] points
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
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
    const resolved = new RoadBoundaryInfo(null);
    if (msg.type !== undefined) {
      resolved.type = landmark_msgs.msg.RoadBoundaryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new landmark_msgs.msg.RoadBoundaryTypeEnum()
    }

    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.end_offset !== undefined) {
      resolved.end_offset = msg.end_offset;
    }
    else {
      resolved.end_offset = 0.0
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = Polyline.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new Polyline()
    }

    return resolved;
    }
};

module.exports = RoadBoundaryInfo;

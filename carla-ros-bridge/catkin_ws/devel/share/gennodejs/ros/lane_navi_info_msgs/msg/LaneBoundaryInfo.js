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

class LaneBoundaryInfo {
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
        this.type = new landmark_msgs.msg.LaneBoundaryTypeEnum();
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
    // Serializes a message object of type LaneBoundaryInfo
    // Serialize message field [type]
    bufferOffset = landmark_msgs.msg.LaneBoundaryTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    // Serialize message field [polyline]
    bufferOffset = Polyline.serialize(obj.polyline, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryInfo
    let len;
    let data = new LaneBoundaryInfo(null);
    // Deserialize message field [type]
    data.type = landmark_msgs.msg.LaneBoundaryTypeEnum.deserialize(buffer, bufferOffset);
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
    return 'lane_navi_info_msgs/LaneBoundaryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22c859a3bdf4d1d6b01e2321f359d902';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/LaneBoundaryTypeEnum type
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/Polyline polyline
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryTypeEnum
    uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_TYPE_DASHED = 1
    uint8 LANE_BOUNDARY_TYPE_SOLID = 2
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
    uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
    uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
    uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
    uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
    uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
    uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
    uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
    uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
    uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
    uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
    uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
    uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
    uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
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
    const resolved = new LaneBoundaryInfo(null);
    if (msg.type !== undefined) {
      resolved.type = landmark_msgs.msg.LaneBoundaryTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new landmark_msgs.msg.LaneBoundaryTypeEnum()
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

module.exports = LaneBoundaryInfo;

// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FusionGroundLineData = require('./FusionGroundLineData.js');

//-----------------------------------------------------------

class FusionGroundLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.ground_line_data = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('ground_line_data')) {
        this.ground_line_data = initObj.ground_line_data
      }
      else {
        this.ground_line_data = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionGroundLine
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [ground_line_data]
    // Serialize the length for message field [ground_line_data]
    bufferOffset = _serializer.uint32(obj.ground_line_data.length, buffer, bufferOffset);
    obj.ground_line_data.forEach((val) => {
      bufferOffset = FusionGroundLineData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _arraySerializer.string(obj.reserved_info, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionGroundLine
    let len;
    let data = new FusionGroundLine(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ground_line_data]
    // Deserialize array length for message field [ground_line_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ground_line_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ground_line_data[i] = FusionGroundLineData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ground_line_data.forEach((val) => {
      length += FusionGroundLineData.getMessageSize(val);
    });
    object.reserved_info.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionGroundLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55b01f23e6e888132d3c5eb272f4d8f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1
    uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2
    uint8 available
    perception_interface_msgs/FusionGroundLineData[] ground_line_data
    string[] reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/FusionGroundLineData
    uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1
    uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2
    uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3
    uint8 available
    perception_interface_msgs/GroundLineTypeEnum type
    uint64 track_id
    float32 score
    perception_interface_msgs/Point3f[] points_fusion
    float32[] points_fusion_confidence
    perception_interface_msgs/Point3f[] local_points_fusion
    float32[] local_points_fusion_confidence
    perception_interface_msgs/FusionObstacleTypeEnum obstacle_type
    perception_interface_msgs/FusionObstaclePointType obstacle_point_type
    string reserved_info
    float32[] points_height
    
    ================================================================================
    MSG: perception_interface_msgs/GroundLineTypeEnum
    uint8 GROUND_LINE_TYPE_UNKNOWN = 0
    uint8 GROUND_LINE_TYPE_WALL = 1
    uint8 GROUND_LINE_TYPE_PILLAR = 2
    uint8 GROUND_LINE_TYPE_FENCE = 3
    uint8 GROUND_LINE_TYPE_STEP = 4
    uint8 GROUND_LINE_TYPE_SPECIAL = 5
    uint8 GROUND_LINE_TYPE_POLE = 6
    uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
    uint8 GROUNDLINE_TYPE_BARRIER = 8
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
    uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/FusionObstacleTypeEnum
    uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
    uint8 FUSION_OBSTACLE_TYPE_WALL = 1
    uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
    uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
    uint8 FUSION_OBSTACLE_TYPE_STEP = 4
    uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
    uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
    uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
    uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
    uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
    uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
    uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
    uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
    uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
    uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
    uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/FusionObstaclePointType
    uint8 POINT_TYPE_UNKNOWN = 0
    uint8 POINT_TYPE_SCATTER = 1
    uint8 POINT_TYPE_POLYLINE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionGroundLine(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.ground_line_data !== undefined) {
      resolved.ground_line_data = new Array(msg.ground_line_data.length);
      for (let i = 0; i < resolved.ground_line_data.length; ++i) {
        resolved.ground_line_data[i] = FusionGroundLineData.Resolve(msg.ground_line_data[i]);
      }
    }
    else {
      resolved.ground_line_data = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = []
    }

    return resolved;
    }
};

// Constants for message
FusionGroundLine.Constants = {
  FUSION_GROUND_LINE_AVAILABLE_DATA: 1,
  FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO: 2,
}

module.exports = FusionGroundLine;

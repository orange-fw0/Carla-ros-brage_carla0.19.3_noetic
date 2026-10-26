// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GroundLineTypeEnum = require('./GroundLineTypeEnum.js');
let Point3f = require('./Point3f.js');
let FusionObstacleTypeEnum = require('./FusionObstacleTypeEnum.js');
let FusionObstaclePointType = require('./FusionObstaclePointType.js');

//-----------------------------------------------------------

class FusionGroundLineData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.type = null;
      this.track_id = null;
      this.score = null;
      this.points_fusion = null;
      this.points_fusion_confidence = null;
      this.local_points_fusion = null;
      this.local_points_fusion_confidence = null;
      this.obstacle_type = null;
      this.obstacle_point_type = null;
      this.reserved_info = null;
      this.points_height = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new GroundLineTypeEnum();
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('points_fusion')) {
        this.points_fusion = initObj.points_fusion
      }
      else {
        this.points_fusion = [];
      }
      if (initObj.hasOwnProperty('points_fusion_confidence')) {
        this.points_fusion_confidence = initObj.points_fusion_confidence
      }
      else {
        this.points_fusion_confidence = [];
      }
      if (initObj.hasOwnProperty('local_points_fusion')) {
        this.local_points_fusion = initObj.local_points_fusion
      }
      else {
        this.local_points_fusion = [];
      }
      if (initObj.hasOwnProperty('local_points_fusion_confidence')) {
        this.local_points_fusion_confidence = initObj.local_points_fusion_confidence
      }
      else {
        this.local_points_fusion_confidence = [];
      }
      if (initObj.hasOwnProperty('obstacle_type')) {
        this.obstacle_type = initObj.obstacle_type
      }
      else {
        this.obstacle_type = new FusionObstacleTypeEnum();
      }
      if (initObj.hasOwnProperty('obstacle_point_type')) {
        this.obstacle_point_type = initObj.obstacle_point_type
      }
      else {
        this.obstacle_point_type = new FusionObstaclePointType();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('points_height')) {
        this.points_height = initObj.points_height
      }
      else {
        this.points_height = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionGroundLineData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = GroundLineTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [points_fusion]
    // Serialize the length for message field [points_fusion]
    bufferOffset = _serializer.uint32(obj.points_fusion.length, buffer, bufferOffset);
    obj.points_fusion.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_fusion_confidence]
    bufferOffset = _arraySerializer.float32(obj.points_fusion_confidence, buffer, bufferOffset, null);
    // Serialize message field [local_points_fusion]
    // Serialize the length for message field [local_points_fusion]
    bufferOffset = _serializer.uint32(obj.local_points_fusion.length, buffer, bufferOffset);
    obj.local_points_fusion.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [local_points_fusion_confidence]
    bufferOffset = _arraySerializer.float32(obj.local_points_fusion_confidence, buffer, bufferOffset, null);
    // Serialize message field [obstacle_type]
    bufferOffset = FusionObstacleTypeEnum.serialize(obj.obstacle_type, buffer, bufferOffset);
    // Serialize message field [obstacle_point_type]
    bufferOffset = FusionObstaclePointType.serialize(obj.obstacle_point_type, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [points_height]
    bufferOffset = _arraySerializer.float32(obj.points_height, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionGroundLineData
    let len;
    let data = new FusionGroundLineData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = GroundLineTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points_fusion]
    // Deserialize array length for message field [points_fusion]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_fusion = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_fusion[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_fusion_confidence]
    data.points_fusion_confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [local_points_fusion]
    // Deserialize array length for message field [local_points_fusion]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_points_fusion = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_points_fusion[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [local_points_fusion_confidence]
    data.local_points_fusion_confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obstacle_type]
    data.obstacle_type = FusionObstacleTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_point_type]
    data.obstacle_point_type = FusionObstaclePointType.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [points_height]
    data.points_height = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.points_fusion.length;
    length += 4 * object.points_fusion_confidence.length;
    length += 12 * object.local_points_fusion.length;
    length += 4 * object.local_points_fusion_confidence.length;
    length += _getByteLength(object.reserved_info);
    length += 4 * object.points_height.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionGroundLineData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15785f455fc11a921e1ce0f90a7c7a90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FusionGroundLineData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.type !== undefined) {
      resolved.type = GroundLineTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new GroundLineTypeEnum()
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.points_fusion !== undefined) {
      resolved.points_fusion = new Array(msg.points_fusion.length);
      for (let i = 0; i < resolved.points_fusion.length; ++i) {
        resolved.points_fusion[i] = Point3f.Resolve(msg.points_fusion[i]);
      }
    }
    else {
      resolved.points_fusion = []
    }

    if (msg.points_fusion_confidence !== undefined) {
      resolved.points_fusion_confidence = msg.points_fusion_confidence;
    }
    else {
      resolved.points_fusion_confidence = []
    }

    if (msg.local_points_fusion !== undefined) {
      resolved.local_points_fusion = new Array(msg.local_points_fusion.length);
      for (let i = 0; i < resolved.local_points_fusion.length; ++i) {
        resolved.local_points_fusion[i] = Point3f.Resolve(msg.local_points_fusion[i]);
      }
    }
    else {
      resolved.local_points_fusion = []
    }

    if (msg.local_points_fusion_confidence !== undefined) {
      resolved.local_points_fusion_confidence = msg.local_points_fusion_confidence;
    }
    else {
      resolved.local_points_fusion_confidence = []
    }

    if (msg.obstacle_type !== undefined) {
      resolved.obstacle_type = FusionObstacleTypeEnum.Resolve(msg.obstacle_type)
    }
    else {
      resolved.obstacle_type = new FusionObstacleTypeEnum()
    }

    if (msg.obstacle_point_type !== undefined) {
      resolved.obstacle_point_type = FusionObstaclePointType.Resolve(msg.obstacle_point_type)
    }
    else {
      resolved.obstacle_point_type = new FusionObstaclePointType()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.points_height !== undefined) {
      resolved.points_height = msg.points_height;
    }
    else {
      resolved.points_height = []
    }

    return resolved;
    }
};

// Constants for message
FusionGroundLineData.Constants = {
  FUSION_GROUND_LINE_SOURCE_VISON: 1,
  FUSION_GROUND_LINE_SOURCE_ULTRASONIC: 2,
  FUSION_GROUND_LINE_SOURCE_DDUSS: 3,
}

module.exports = FusionGroundLineData;

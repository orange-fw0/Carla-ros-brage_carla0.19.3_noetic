// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionFusionResultMeta = require('./PerceptionFusionResultMeta.js');
let FusionGroundLine = require('./FusionGroundLine.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FusionGroundLineResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.ground_line = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new PerceptionFusionResultMeta();
      }
      if (initObj.hasOwnProperty('ground_line')) {
        this.ground_line = initObj.ground_line
      }
      else {
        this.ground_line = new FusionGroundLine();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionGroundLineResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionFusionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [ground_line]
    bufferOffset = FusionGroundLine.serialize(obj.ground_line, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionGroundLineResult
    let len;
    let data = new FusionGroundLineResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionFusionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [ground_line]
    data.ground_line = FusionGroundLine.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionFusionResultMeta.getMessageSize(object.meta);
    length += FusionGroundLine.getMessageSize(object.ground_line);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionGroundLineResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5df3705f4a40b6992a60c68bfe941a8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionFusionResultMeta meta
    perception_interface_msgs/FusionGroundLine ground_line
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: perception_interface_msgs/PerceptionFusionResultMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string version_tag
    
    ================================================================================
    MSG: perception_interface_msgs/FusionGroundLine
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
    const resolved = new FusionGroundLineResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionFusionResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionFusionResultMeta()
    }

    if (msg.ground_line !== undefined) {
      resolved.ground_line = FusionGroundLine.Resolve(msg.ground_line)
    }
    else {
      resolved.ground_line = new FusionGroundLine()
    }

    return resolved;
    }
};

module.exports = FusionGroundLineResult;

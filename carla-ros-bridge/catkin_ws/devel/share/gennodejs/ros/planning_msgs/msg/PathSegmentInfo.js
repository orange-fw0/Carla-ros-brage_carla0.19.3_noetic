// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RefPointInfo = require('./RefPointInfo.js');
let PathSampleInfo = require('./PathSampleInfo.js');

//-----------------------------------------------------------

class PathSegmentInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end_segment_control_point_s = null;
      this.end_segment_refline_info = null;
      this.quad_point_info = null;
    }
    else {
      if (initObj.hasOwnProperty('end_segment_control_point_s')) {
        this.end_segment_control_point_s = initObj.end_segment_control_point_s
      }
      else {
        this.end_segment_control_point_s = 0.0;
      }
      if (initObj.hasOwnProperty('end_segment_refline_info')) {
        this.end_segment_refline_info = initObj.end_segment_refline_info
      }
      else {
        this.end_segment_refline_info = new RefPointInfo();
      }
      if (initObj.hasOwnProperty('quad_point_info')) {
        this.quad_point_info = initObj.quad_point_info
      }
      else {
        this.quad_point_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSegmentInfo
    // Serialize message field [end_segment_control_point_s]
    bufferOffset = _serializer.float64(obj.end_segment_control_point_s, buffer, bufferOffset);
    // Serialize message field [end_segment_refline_info]
    bufferOffset = RefPointInfo.serialize(obj.end_segment_refline_info, buffer, bufferOffset);
    // Serialize message field [quad_point_info]
    // Serialize the length for message field [quad_point_info]
    bufferOffset = _serializer.uint32(obj.quad_point_info.length, buffer, bufferOffset);
    obj.quad_point_info.forEach((val) => {
      bufferOffset = PathSampleInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSegmentInfo
    let len;
    let data = new PathSegmentInfo(null);
    // Deserialize message field [end_segment_control_point_s]
    data.end_segment_control_point_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_segment_refline_info]
    data.end_segment_refline_info = RefPointInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [quad_point_info]
    // Deserialize array length for message field [quad_point_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.quad_point_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.quad_point_info[i] = PathSampleInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 200 * object.quad_point_info.length;
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PathSegmentInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cb5f0175fbd945cb21a39cf08bca405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 end_segment_control_point_s
    planning_msgs/RefPointInfo end_segment_refline_info
    planning_msgs/PathSampleInfo[] quad_point_info
    
    ================================================================================
    MSG: planning_msgs/RefPointInfo
    float64 time
    float64 x
    float64 y
    float64 curvature
    float64 current_lane_width
    float64 left_lane_width
    float64 right_lane_width
    float64 left_lane_border
    float64 right_lane_border
    float64 left_road_border
    float64 right_road_border
    float64 theta_ref
    float64 cos_theta_ref
    float64 sin_theta_ref
    int32 left_road_border_type
    int32 right_road_border_type
    int32 left_lane_border_type
    int32 right_lane_border_type
    
    ================================================================================
    MSG: planning_msgs/PathSampleInfo
    float64 sample_s
    planning_msgs/PathPoint last_cart_traj
    planning_msgs/RefPointInfo refline_info
    planning_msgs/SpeedPlan speed_plan
    
    ================================================================================
    MSG: planning_msgs/PathPoint
    planning_msgs/Point2d position_enu
    float64 heading_yaw
    float64 curvature
    float64 path_follow_strength
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    ================================================================================
    MSG: planning_msgs/SpeedPlan
    float64 v
    float64 a
    float64 j
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathSegmentInfo(null);
    if (msg.end_segment_control_point_s !== undefined) {
      resolved.end_segment_control_point_s = msg.end_segment_control_point_s;
    }
    else {
      resolved.end_segment_control_point_s = 0.0
    }

    if (msg.end_segment_refline_info !== undefined) {
      resolved.end_segment_refline_info = RefPointInfo.Resolve(msg.end_segment_refline_info)
    }
    else {
      resolved.end_segment_refline_info = new RefPointInfo()
    }

    if (msg.quad_point_info !== undefined) {
      resolved.quad_point_info = new Array(msg.quad_point_info.length);
      for (let i = 0; i < resolved.quad_point_info.length; ++i) {
        resolved.quad_point_info[i] = PathSampleInfo.Resolve(msg.quad_point_info[i]);
      }
    }
    else {
      resolved.quad_point_info = []
    }

    return resolved;
    }
};

module.exports = PathSegmentInfo;

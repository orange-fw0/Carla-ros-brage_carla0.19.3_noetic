// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');
let RefPointInfo = require('./RefPointInfo.js');
let SpeedPlan = require('./SpeedPlan.js');

//-----------------------------------------------------------

class PathSampleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sample_s = null;
      this.last_cart_traj = null;
      this.refline_info = null;
      this.speed_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('sample_s')) {
        this.sample_s = initObj.sample_s
      }
      else {
        this.sample_s = 0.0;
      }
      if (initObj.hasOwnProperty('last_cart_traj')) {
        this.last_cart_traj = initObj.last_cart_traj
      }
      else {
        this.last_cart_traj = new PathPoint();
      }
      if (initObj.hasOwnProperty('refline_info')) {
        this.refline_info = initObj.refline_info
      }
      else {
        this.refline_info = new RefPointInfo();
      }
      if (initObj.hasOwnProperty('speed_plan')) {
        this.speed_plan = initObj.speed_plan
      }
      else {
        this.speed_plan = new SpeedPlan();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSampleInfo
    // Serialize message field [sample_s]
    bufferOffset = _serializer.float64(obj.sample_s, buffer, bufferOffset);
    // Serialize message field [last_cart_traj]
    bufferOffset = PathPoint.serialize(obj.last_cart_traj, buffer, bufferOffset);
    // Serialize message field [refline_info]
    bufferOffset = RefPointInfo.serialize(obj.refline_info, buffer, bufferOffset);
    // Serialize message field [speed_plan]
    bufferOffset = SpeedPlan.serialize(obj.speed_plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSampleInfo
    let len;
    let data = new PathSampleInfo(null);
    // Deserialize message field [sample_s]
    data.sample_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [last_cart_traj]
    data.last_cart_traj = PathPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [refline_info]
    data.refline_info = RefPointInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_plan]
    data.speed_plan = SpeedPlan.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 200;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PathSampleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2063c13a26cedde6f767a0f1338f0c52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PathSampleInfo(null);
    if (msg.sample_s !== undefined) {
      resolved.sample_s = msg.sample_s;
    }
    else {
      resolved.sample_s = 0.0
    }

    if (msg.last_cart_traj !== undefined) {
      resolved.last_cart_traj = PathPoint.Resolve(msg.last_cart_traj)
    }
    else {
      resolved.last_cart_traj = new PathPoint()
    }

    if (msg.refline_info !== undefined) {
      resolved.refline_info = RefPointInfo.Resolve(msg.refline_info)
    }
    else {
      resolved.refline_info = new RefPointInfo()
    }

    if (msg.speed_plan !== undefined) {
      resolved.speed_plan = SpeedPlan.Resolve(msg.speed_plan)
    }
    else {
      resolved.speed_plan = new SpeedPlan()
    }

    return resolved;
    }
};

module.exports = PathSampleInfo;

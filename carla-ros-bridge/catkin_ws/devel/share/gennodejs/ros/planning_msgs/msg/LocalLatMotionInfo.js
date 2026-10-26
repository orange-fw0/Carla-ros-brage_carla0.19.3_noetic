// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathSegmentInfo = require('./PathSegmentInfo.js');
let PathTuningParams = require('./PathTuningParams.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocalLatMotionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_replan = null;
      this.ego_x = null;
      this.ego_y = null;
      this.ego_dx_ds = null;
      this.ego_dy_ds = null;
      this.ego_s = null;
      this.ego_init_curvature = null;
      this.path_segments = null;
      this.path_tuning_params = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_replan')) {
        this.is_replan = initObj.is_replan
      }
      else {
        this.is_replan = false;
      }
      if (initObj.hasOwnProperty('ego_x')) {
        this.ego_x = initObj.ego_x
      }
      else {
        this.ego_x = 0.0;
      }
      if (initObj.hasOwnProperty('ego_y')) {
        this.ego_y = initObj.ego_y
      }
      else {
        this.ego_y = 0.0;
      }
      if (initObj.hasOwnProperty('ego_dx_ds')) {
        this.ego_dx_ds = initObj.ego_dx_ds
      }
      else {
        this.ego_dx_ds = 0.0;
      }
      if (initObj.hasOwnProperty('ego_dy_ds')) {
        this.ego_dy_ds = initObj.ego_dy_ds
      }
      else {
        this.ego_dy_ds = 0.0;
      }
      if (initObj.hasOwnProperty('ego_s')) {
        this.ego_s = initObj.ego_s
      }
      else {
        this.ego_s = 0.0;
      }
      if (initObj.hasOwnProperty('ego_init_curvature')) {
        this.ego_init_curvature = initObj.ego_init_curvature
      }
      else {
        this.ego_init_curvature = 0.0;
      }
      if (initObj.hasOwnProperty('path_segments')) {
        this.path_segments = initObj.path_segments
      }
      else {
        this.path_segments = [];
      }
      if (initObj.hasOwnProperty('path_tuning_params')) {
        this.path_tuning_params = initObj.path_tuning_params
      }
      else {
        this.path_tuning_params = new PathTuningParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalLatMotionInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_replan]
    bufferOffset = _serializer.bool(obj.is_replan, buffer, bufferOffset);
    // Serialize message field [ego_x]
    bufferOffset = _serializer.float64(obj.ego_x, buffer, bufferOffset);
    // Serialize message field [ego_y]
    bufferOffset = _serializer.float64(obj.ego_y, buffer, bufferOffset);
    // Serialize message field [ego_dx_ds]
    bufferOffset = _serializer.float64(obj.ego_dx_ds, buffer, bufferOffset);
    // Serialize message field [ego_dy_ds]
    bufferOffset = _serializer.float64(obj.ego_dy_ds, buffer, bufferOffset);
    // Serialize message field [ego_s]
    bufferOffset = _serializer.float64(obj.ego_s, buffer, bufferOffset);
    // Serialize message field [ego_init_curvature]
    bufferOffset = _serializer.float64(obj.ego_init_curvature, buffer, bufferOffset);
    // Serialize message field [path_segments]
    // Serialize the length for message field [path_segments]
    bufferOffset = _serializer.uint32(obj.path_segments.length, buffer, bufferOffset);
    obj.path_segments.forEach((val) => {
      bufferOffset = PathSegmentInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [path_tuning_params]
    bufferOffset = PathTuningParams.serialize(obj.path_tuning_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalLatMotionInfo
    let len;
    let data = new LocalLatMotionInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_replan]
    data.is_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ego_x]
    data.ego_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_y]
    data.ego_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_dx_ds]
    data.ego_dx_ds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_dy_ds]
    data.ego_dy_ds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_s]
    data.ego_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_init_curvature]
    data.ego_init_curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_segments]
    // Deserialize array length for message field [path_segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_segments[i] = PathSegmentInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [path_tuning_params]
    data.path_tuning_params = PathTuningParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.path_segments.forEach((val) => {
      length += PathSegmentInfo.getMessageSize(val);
    });
    return length + 129;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/LocalLatMotionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d8495540b24d445c9ad366cc3e24cd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool is_replan
    float64 ego_x
    float64 ego_y
    float64 ego_dx_ds
    float64 ego_dy_ds
    float64 ego_s
    float64 ego_init_curvature
    planning_msgs/PathSegmentInfo[] path_segments
    planning_msgs/PathTuningParams path_tuning_params
    
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
    MSG: planning_msgs/PathSegmentInfo
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
    
    ================================================================================
    MSG: planning_msgs/PathTuningParams
    int32 max_num_iterations
    float64 soft_boundary_scale
    float64 hard_boundary_scale
    float64 init_curvature_scale
    float64 curvature_limit_scale
    float64 lat_accel_scale
    float64 lat_jerk_scale
    float64 heading_scale
    float64 ref_centering_scale
    float64 prev_plan_centering_scale
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalLatMotionInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_replan !== undefined) {
      resolved.is_replan = msg.is_replan;
    }
    else {
      resolved.is_replan = false
    }

    if (msg.ego_x !== undefined) {
      resolved.ego_x = msg.ego_x;
    }
    else {
      resolved.ego_x = 0.0
    }

    if (msg.ego_y !== undefined) {
      resolved.ego_y = msg.ego_y;
    }
    else {
      resolved.ego_y = 0.0
    }

    if (msg.ego_dx_ds !== undefined) {
      resolved.ego_dx_ds = msg.ego_dx_ds;
    }
    else {
      resolved.ego_dx_ds = 0.0
    }

    if (msg.ego_dy_ds !== undefined) {
      resolved.ego_dy_ds = msg.ego_dy_ds;
    }
    else {
      resolved.ego_dy_ds = 0.0
    }

    if (msg.ego_s !== undefined) {
      resolved.ego_s = msg.ego_s;
    }
    else {
      resolved.ego_s = 0.0
    }

    if (msg.ego_init_curvature !== undefined) {
      resolved.ego_init_curvature = msg.ego_init_curvature;
    }
    else {
      resolved.ego_init_curvature = 0.0
    }

    if (msg.path_segments !== undefined) {
      resolved.path_segments = new Array(msg.path_segments.length);
      for (let i = 0; i < resolved.path_segments.length; ++i) {
        resolved.path_segments[i] = PathSegmentInfo.Resolve(msg.path_segments[i]);
      }
    }
    else {
      resolved.path_segments = []
    }

    if (msg.path_tuning_params !== undefined) {
      resolved.path_tuning_params = PathTuningParams.Resolve(msg.path_tuning_params)
    }
    else {
      resolved.path_tuning_params = new PathTuningParams()
    }

    return resolved;
    }
};

module.exports = LocalLatMotionInfo;

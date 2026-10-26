// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LongitudinalDecision = require('./LongitudinalDecision.js');
let LateralDecision = require('./LateralDecision.js');
let TrafficLightDecision = require('./TrafficLightDecision.js');
let ReplanInfo = require('./ReplanInfo.js');

//-----------------------------------------------------------

class Decision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lon_decision = null;
      this.lat_decision = null;
      this.traffic_light_decision = null;
      this.replan_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lon_decision')) {
        this.lon_decision = initObj.lon_decision
      }
      else {
        this.lon_decision = new LongitudinalDecision();
      }
      if (initObj.hasOwnProperty('lat_decision')) {
        this.lat_decision = initObj.lat_decision
      }
      else {
        this.lat_decision = new LateralDecision();
      }
      if (initObj.hasOwnProperty('traffic_light_decision')) {
        this.traffic_light_decision = initObj.traffic_light_decision
      }
      else {
        this.traffic_light_decision = new TrafficLightDecision();
      }
      if (initObj.hasOwnProperty('replan_info')) {
        this.replan_info = initObj.replan_info
      }
      else {
        this.replan_info = new ReplanInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Decision
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lon_decision]
    bufferOffset = LongitudinalDecision.serialize(obj.lon_decision, buffer, bufferOffset);
    // Serialize message field [lat_decision]
    bufferOffset = LateralDecision.serialize(obj.lat_decision, buffer, bufferOffset);
    // Serialize message field [traffic_light_decision]
    bufferOffset = TrafficLightDecision.serialize(obj.traffic_light_decision, buffer, bufferOffset);
    // Serialize message field [replan_info]
    bufferOffset = ReplanInfo.serialize(obj.replan_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Decision
    let len;
    let data = new Decision(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lon_decision]
    data.lon_decision = LongitudinalDecision.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat_decision]
    data.lat_decision = LateralDecision.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light_decision]
    data.traffic_light_decision = TrafficLightDecision.deserialize(buffer, bufferOffset);
    // Deserialize message field [replan_info]
    data.replan_info = ReplanInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LongitudinalDecision.getMessageSize(object.lon_decision);
    length += LateralDecision.getMessageSize(object.lat_decision);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Decision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8a43ea041f569c0e6cbee0f7d88925e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LON_DECISION = 1
    uint8 LAT_DECISION = 2
    uint8 TRAFFIC_LIGHT_DECISION = 4
    uint8 available
    planning_msgs/LongitudinalDecision lon_decision
    planning_msgs/LateralDecision lat_decision
    planning_msgs/TrafficLightDecision traffic_light_decision
    planning_msgs/ReplanInfo replan_info
    
    ================================================================================
    MSG: planning_msgs/LongitudinalDecision
    int32[] follow_obstacles
    int32[] overtake_obstacles
    int32[] lon_nudge_obstacles
    int32[] lead_obstacles
    int32[] tlead_obstacles
    int32[] lc_gap_info
    int32 id_yield_closest
    int32 id_overtake_closest
    int32 tag_yield
    int32 N_hard
    float32 dt_yield
    float32 dt_set
    float32 ds_set
    float32 ds_yield
    float32 ds_overtake
    float32 v_set
    float32 v_yield_closest
    float32 v_overtake_closest
    float32 v_lim
    float32 v_lim_map
    float32 a_set
    float32 dis_close
    float32[] ds_lon
    float32[] ttc_lon
    float32[] dt_lon
    float32[] s_max
    float32[] d_safe
    float32[] ds_flag
    float32[] v_ref
    float32[] weights
    bool enable_prebrake
    bool enable_preacc
    bool need_aeb
    bool pnc_start
    bool pnc_stop
    bool blocked
    
    ================================================================================
    MSG: planning_msgs/LateralDecision
    int32[] nudge_obstacles
    int32[] lat_motion_decider
    float32[] desire_offset
    planning_msgs/AvdMsg[] avd_info
    bool accident_ahead
    bool disable_left
    bool disable_right
    bool enable_left
    bool enable_right
    bool lane_borrow
    int32 lane_borrow_range
    float32 lat_offset
    int32 fix_refline_index
    int32 origin_refline_index
    int32 target_refline_index
    bool sb_Blane
    bool sb_lane
    float32[] avd_car_past_fisrt
    float32[] avd_car_past_second
    float32[] avd_sp_car_past_first
    float32[] avd_sp_car_past_second
    int32[] alc_car_id
    int32[] lb_car_id
    int32 lc_back_id
    int32 lc_invalid_id
    float32 dl_lat
    float32 ttc_lat
    float32 dt_lat
    bool fvfdead
    bool svfdead
    bool premoving
    float32 premove_dist
    planning_msgs/Pose2d[] init_val
    planning_msgs/Pose2d[] via_points
    
    ================================================================================
    MSG: planning_msgs/AvdMsg
    int32 id
    string property
    bool ignore
    string avd_direction
    int32 avd_priority
    float32 blocked_time_begin
    float32 blocked_time_end
    planning_msgs/Point2d[] polygon
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    ================================================================================
    MSG: planning_msgs/Pose2d
    planning_msgs/Point2d position
    float64 theta
    
    ================================================================================
    MSG: planning_msgs/TrafficLightDecision
    int32 traffic_light_state
    int32 stop_reason
    bool stop_flag
    bool is_passed_stop_line
    bool faster_pass
    
    ================================================================================
    MSG: planning_msgs/ReplanInfo
    bool lat_replan
    bool lon_replan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Decision(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lon_decision !== undefined) {
      resolved.lon_decision = LongitudinalDecision.Resolve(msg.lon_decision)
    }
    else {
      resolved.lon_decision = new LongitudinalDecision()
    }

    if (msg.lat_decision !== undefined) {
      resolved.lat_decision = LateralDecision.Resolve(msg.lat_decision)
    }
    else {
      resolved.lat_decision = new LateralDecision()
    }

    if (msg.traffic_light_decision !== undefined) {
      resolved.traffic_light_decision = TrafficLightDecision.Resolve(msg.traffic_light_decision)
    }
    else {
      resolved.traffic_light_decision = new TrafficLightDecision()
    }

    if (msg.replan_info !== undefined) {
      resolved.replan_info = ReplanInfo.Resolve(msg.replan_info)
    }
    else {
      resolved.replan_info = new ReplanInfo()
    }

    return resolved;
    }
};

// Constants for message
Decision.Constants = {
  LON_DECISION: 1,
  LAT_DECISION: 2,
  TRAFFIC_LIGHT_DECISION: 4,
}

module.exports = Decision;

// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AvdMsg = require('./AvdMsg.js');
let Pose2d = require('./Pose2d.js');

//-----------------------------------------------------------

class LateralDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nudge_obstacles = null;
      this.lat_motion_decider = null;
      this.desire_offset = null;
      this.avd_info = null;
      this.accident_ahead = null;
      this.disable_left = null;
      this.disable_right = null;
      this.enable_left = null;
      this.enable_right = null;
      this.lane_borrow = null;
      this.lane_borrow_range = null;
      this.lat_offset = null;
      this.fix_refline_index = null;
      this.origin_refline_index = null;
      this.target_refline_index = null;
      this.sb_Blane = null;
      this.sb_lane = null;
      this.avd_car_past_fisrt = null;
      this.avd_car_past_second = null;
      this.avd_sp_car_past_first = null;
      this.avd_sp_car_past_second = null;
      this.alc_car_id = null;
      this.lb_car_id = null;
      this.lc_back_id = null;
      this.lc_invalid_id = null;
      this.dl_lat = null;
      this.ttc_lat = null;
      this.dt_lat = null;
      this.fvfdead = null;
      this.svfdead = null;
      this.premoving = null;
      this.premove_dist = null;
      this.init_val = null;
      this.via_points = null;
    }
    else {
      if (initObj.hasOwnProperty('nudge_obstacles')) {
        this.nudge_obstacles = initObj.nudge_obstacles
      }
      else {
        this.nudge_obstacles = [];
      }
      if (initObj.hasOwnProperty('lat_motion_decider')) {
        this.lat_motion_decider = initObj.lat_motion_decider
      }
      else {
        this.lat_motion_decider = [];
      }
      if (initObj.hasOwnProperty('desire_offset')) {
        this.desire_offset = initObj.desire_offset
      }
      else {
        this.desire_offset = [];
      }
      if (initObj.hasOwnProperty('avd_info')) {
        this.avd_info = initObj.avd_info
      }
      else {
        this.avd_info = [];
      }
      if (initObj.hasOwnProperty('accident_ahead')) {
        this.accident_ahead = initObj.accident_ahead
      }
      else {
        this.accident_ahead = false;
      }
      if (initObj.hasOwnProperty('disable_left')) {
        this.disable_left = initObj.disable_left
      }
      else {
        this.disable_left = false;
      }
      if (initObj.hasOwnProperty('disable_right')) {
        this.disable_right = initObj.disable_right
      }
      else {
        this.disable_right = false;
      }
      if (initObj.hasOwnProperty('enable_left')) {
        this.enable_left = initObj.enable_left
      }
      else {
        this.enable_left = false;
      }
      if (initObj.hasOwnProperty('enable_right')) {
        this.enable_right = initObj.enable_right
      }
      else {
        this.enable_right = false;
      }
      if (initObj.hasOwnProperty('lane_borrow')) {
        this.lane_borrow = initObj.lane_borrow
      }
      else {
        this.lane_borrow = false;
      }
      if (initObj.hasOwnProperty('lane_borrow_range')) {
        this.lane_borrow_range = initObj.lane_borrow_range
      }
      else {
        this.lane_borrow_range = 0;
      }
      if (initObj.hasOwnProperty('lat_offset')) {
        this.lat_offset = initObj.lat_offset
      }
      else {
        this.lat_offset = 0.0;
      }
      if (initObj.hasOwnProperty('fix_refline_index')) {
        this.fix_refline_index = initObj.fix_refline_index
      }
      else {
        this.fix_refline_index = 0;
      }
      if (initObj.hasOwnProperty('origin_refline_index')) {
        this.origin_refline_index = initObj.origin_refline_index
      }
      else {
        this.origin_refline_index = 0;
      }
      if (initObj.hasOwnProperty('target_refline_index')) {
        this.target_refline_index = initObj.target_refline_index
      }
      else {
        this.target_refline_index = 0;
      }
      if (initObj.hasOwnProperty('sb_Blane')) {
        this.sb_Blane = initObj.sb_Blane
      }
      else {
        this.sb_Blane = false;
      }
      if (initObj.hasOwnProperty('sb_lane')) {
        this.sb_lane = initObj.sb_lane
      }
      else {
        this.sb_lane = false;
      }
      if (initObj.hasOwnProperty('avd_car_past_fisrt')) {
        this.avd_car_past_fisrt = initObj.avd_car_past_fisrt
      }
      else {
        this.avd_car_past_fisrt = [];
      }
      if (initObj.hasOwnProperty('avd_car_past_second')) {
        this.avd_car_past_second = initObj.avd_car_past_second
      }
      else {
        this.avd_car_past_second = [];
      }
      if (initObj.hasOwnProperty('avd_sp_car_past_first')) {
        this.avd_sp_car_past_first = initObj.avd_sp_car_past_first
      }
      else {
        this.avd_sp_car_past_first = [];
      }
      if (initObj.hasOwnProperty('avd_sp_car_past_second')) {
        this.avd_sp_car_past_second = initObj.avd_sp_car_past_second
      }
      else {
        this.avd_sp_car_past_second = [];
      }
      if (initObj.hasOwnProperty('alc_car_id')) {
        this.alc_car_id = initObj.alc_car_id
      }
      else {
        this.alc_car_id = [];
      }
      if (initObj.hasOwnProperty('lb_car_id')) {
        this.lb_car_id = initObj.lb_car_id
      }
      else {
        this.lb_car_id = [];
      }
      if (initObj.hasOwnProperty('lc_back_id')) {
        this.lc_back_id = initObj.lc_back_id
      }
      else {
        this.lc_back_id = 0;
      }
      if (initObj.hasOwnProperty('lc_invalid_id')) {
        this.lc_invalid_id = initObj.lc_invalid_id
      }
      else {
        this.lc_invalid_id = 0;
      }
      if (initObj.hasOwnProperty('dl_lat')) {
        this.dl_lat = initObj.dl_lat
      }
      else {
        this.dl_lat = 0.0;
      }
      if (initObj.hasOwnProperty('ttc_lat')) {
        this.ttc_lat = initObj.ttc_lat
      }
      else {
        this.ttc_lat = 0.0;
      }
      if (initObj.hasOwnProperty('dt_lat')) {
        this.dt_lat = initObj.dt_lat
      }
      else {
        this.dt_lat = 0.0;
      }
      if (initObj.hasOwnProperty('fvfdead')) {
        this.fvfdead = initObj.fvfdead
      }
      else {
        this.fvfdead = false;
      }
      if (initObj.hasOwnProperty('svfdead')) {
        this.svfdead = initObj.svfdead
      }
      else {
        this.svfdead = false;
      }
      if (initObj.hasOwnProperty('premoving')) {
        this.premoving = initObj.premoving
      }
      else {
        this.premoving = false;
      }
      if (initObj.hasOwnProperty('premove_dist')) {
        this.premove_dist = initObj.premove_dist
      }
      else {
        this.premove_dist = 0.0;
      }
      if (initObj.hasOwnProperty('init_val')) {
        this.init_val = initObj.init_val
      }
      else {
        this.init_val = [];
      }
      if (initObj.hasOwnProperty('via_points')) {
        this.via_points = initObj.via_points
      }
      else {
        this.via_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LateralDecision
    // Serialize message field [nudge_obstacles]
    bufferOffset = _arraySerializer.int32(obj.nudge_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lat_motion_decider]
    bufferOffset = _arraySerializer.int32(obj.lat_motion_decider, buffer, bufferOffset, null);
    // Serialize message field [desire_offset]
    bufferOffset = _arraySerializer.float32(obj.desire_offset, buffer, bufferOffset, null);
    // Serialize message field [avd_info]
    // Serialize the length for message field [avd_info]
    bufferOffset = _serializer.uint32(obj.avd_info.length, buffer, bufferOffset);
    obj.avd_info.forEach((val) => {
      bufferOffset = AvdMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [accident_ahead]
    bufferOffset = _serializer.bool(obj.accident_ahead, buffer, bufferOffset);
    // Serialize message field [disable_left]
    bufferOffset = _serializer.bool(obj.disable_left, buffer, bufferOffset);
    // Serialize message field [disable_right]
    bufferOffset = _serializer.bool(obj.disable_right, buffer, bufferOffset);
    // Serialize message field [enable_left]
    bufferOffset = _serializer.bool(obj.enable_left, buffer, bufferOffset);
    // Serialize message field [enable_right]
    bufferOffset = _serializer.bool(obj.enable_right, buffer, bufferOffset);
    // Serialize message field [lane_borrow]
    bufferOffset = _serializer.bool(obj.lane_borrow, buffer, bufferOffset);
    // Serialize message field [lane_borrow_range]
    bufferOffset = _serializer.int32(obj.lane_borrow_range, buffer, bufferOffset);
    // Serialize message field [lat_offset]
    bufferOffset = _serializer.float32(obj.lat_offset, buffer, bufferOffset);
    // Serialize message field [fix_refline_index]
    bufferOffset = _serializer.int32(obj.fix_refline_index, buffer, bufferOffset);
    // Serialize message field [origin_refline_index]
    bufferOffset = _serializer.int32(obj.origin_refline_index, buffer, bufferOffset);
    // Serialize message field [target_refline_index]
    bufferOffset = _serializer.int32(obj.target_refline_index, buffer, bufferOffset);
    // Serialize message field [sb_Blane]
    bufferOffset = _serializer.bool(obj.sb_Blane, buffer, bufferOffset);
    // Serialize message field [sb_lane]
    bufferOffset = _serializer.bool(obj.sb_lane, buffer, bufferOffset);
    // Serialize message field [avd_car_past_fisrt]
    bufferOffset = _arraySerializer.float32(obj.avd_car_past_fisrt, buffer, bufferOffset, null);
    // Serialize message field [avd_car_past_second]
    bufferOffset = _arraySerializer.float32(obj.avd_car_past_second, buffer, bufferOffset, null);
    // Serialize message field [avd_sp_car_past_first]
    bufferOffset = _arraySerializer.float32(obj.avd_sp_car_past_first, buffer, bufferOffset, null);
    // Serialize message field [avd_sp_car_past_second]
    bufferOffset = _arraySerializer.float32(obj.avd_sp_car_past_second, buffer, bufferOffset, null);
    // Serialize message field [alc_car_id]
    bufferOffset = _arraySerializer.int32(obj.alc_car_id, buffer, bufferOffset, null);
    // Serialize message field [lb_car_id]
    bufferOffset = _arraySerializer.int32(obj.lb_car_id, buffer, bufferOffset, null);
    // Serialize message field [lc_back_id]
    bufferOffset = _serializer.int32(obj.lc_back_id, buffer, bufferOffset);
    // Serialize message field [lc_invalid_id]
    bufferOffset = _serializer.int32(obj.lc_invalid_id, buffer, bufferOffset);
    // Serialize message field [dl_lat]
    bufferOffset = _serializer.float32(obj.dl_lat, buffer, bufferOffset);
    // Serialize message field [ttc_lat]
    bufferOffset = _serializer.float32(obj.ttc_lat, buffer, bufferOffset);
    // Serialize message field [dt_lat]
    bufferOffset = _serializer.float32(obj.dt_lat, buffer, bufferOffset);
    // Serialize message field [fvfdead]
    bufferOffset = _serializer.bool(obj.fvfdead, buffer, bufferOffset);
    // Serialize message field [svfdead]
    bufferOffset = _serializer.bool(obj.svfdead, buffer, bufferOffset);
    // Serialize message field [premoving]
    bufferOffset = _serializer.bool(obj.premoving, buffer, bufferOffset);
    // Serialize message field [premove_dist]
    bufferOffset = _serializer.float32(obj.premove_dist, buffer, bufferOffset);
    // Serialize message field [init_val]
    // Serialize the length for message field [init_val]
    bufferOffset = _serializer.uint32(obj.init_val.length, buffer, bufferOffset);
    obj.init_val.forEach((val) => {
      bufferOffset = Pose2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [via_points]
    // Serialize the length for message field [via_points]
    bufferOffset = _serializer.uint32(obj.via_points.length, buffer, bufferOffset);
    obj.via_points.forEach((val) => {
      bufferOffset = Pose2d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LateralDecision
    let len;
    let data = new LateralDecision(null);
    // Deserialize message field [nudge_obstacles]
    data.nudge_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lat_motion_decider]
    data.lat_motion_decider = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [desire_offset]
    data.desire_offset = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [avd_info]
    // Deserialize array length for message field [avd_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avd_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avd_info[i] = AvdMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [accident_ahead]
    data.accident_ahead = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_left]
    data.disable_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_right]
    data.disable_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_left]
    data.enable_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_right]
    data.enable_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_borrow]
    data.lane_borrow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_borrow_range]
    data.lane_borrow_range = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat_offset]
    data.lat_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fix_refline_index]
    data.fix_refline_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [origin_refline_index]
    data.origin_refline_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_refline_index]
    data.target_refline_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sb_Blane]
    data.sb_Blane = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sb_lane]
    data.sb_lane = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [avd_car_past_fisrt]
    data.avd_car_past_fisrt = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [avd_car_past_second]
    data.avd_car_past_second = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [avd_sp_car_past_first]
    data.avd_sp_car_past_first = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [avd_sp_car_past_second]
    data.avd_sp_car_past_second = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [alc_car_id]
    data.alc_car_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lb_car_id]
    data.lb_car_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lc_back_id]
    data.lc_back_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lc_invalid_id]
    data.lc_invalid_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dl_lat]
    data.dl_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ttc_lat]
    data.ttc_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dt_lat]
    data.dt_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fvfdead]
    data.fvfdead = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [svfdead]
    data.svfdead = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [premoving]
    data.premoving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [premove_dist]
    data.premove_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_val]
    // Deserialize array length for message field [init_val]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.init_val = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.init_val[i] = Pose2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [via_points]
    // Deserialize array length for message field [via_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.via_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.via_points[i] = Pose2d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.nudge_obstacles.length;
    length += 4 * object.lat_motion_decider.length;
    length += 4 * object.desire_offset.length;
    object.avd_info.forEach((val) => {
      length += AvdMsg.getMessageSize(val);
    });
    length += 4 * object.avd_car_past_fisrt.length;
    length += 4 * object.avd_car_past_second.length;
    length += 4 * object.avd_sp_car_past_first.length;
    length += 4 * object.avd_sp_car_past_second.length;
    length += 4 * object.alc_car_id.length;
    length += 4 * object.lb_car_id.length;
    length += 24 * object.init_val.length;
    length += 24 * object.via_points.length;
    return length + 103;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/LateralDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abbf66c2e9bbbb15772b9ad765baa0a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LateralDecision(null);
    if (msg.nudge_obstacles !== undefined) {
      resolved.nudge_obstacles = msg.nudge_obstacles;
    }
    else {
      resolved.nudge_obstacles = []
    }

    if (msg.lat_motion_decider !== undefined) {
      resolved.lat_motion_decider = msg.lat_motion_decider;
    }
    else {
      resolved.lat_motion_decider = []
    }

    if (msg.desire_offset !== undefined) {
      resolved.desire_offset = msg.desire_offset;
    }
    else {
      resolved.desire_offset = []
    }

    if (msg.avd_info !== undefined) {
      resolved.avd_info = new Array(msg.avd_info.length);
      for (let i = 0; i < resolved.avd_info.length; ++i) {
        resolved.avd_info[i] = AvdMsg.Resolve(msg.avd_info[i]);
      }
    }
    else {
      resolved.avd_info = []
    }

    if (msg.accident_ahead !== undefined) {
      resolved.accident_ahead = msg.accident_ahead;
    }
    else {
      resolved.accident_ahead = false
    }

    if (msg.disable_left !== undefined) {
      resolved.disable_left = msg.disable_left;
    }
    else {
      resolved.disable_left = false
    }

    if (msg.disable_right !== undefined) {
      resolved.disable_right = msg.disable_right;
    }
    else {
      resolved.disable_right = false
    }

    if (msg.enable_left !== undefined) {
      resolved.enable_left = msg.enable_left;
    }
    else {
      resolved.enable_left = false
    }

    if (msg.enable_right !== undefined) {
      resolved.enable_right = msg.enable_right;
    }
    else {
      resolved.enable_right = false
    }

    if (msg.lane_borrow !== undefined) {
      resolved.lane_borrow = msg.lane_borrow;
    }
    else {
      resolved.lane_borrow = false
    }

    if (msg.lane_borrow_range !== undefined) {
      resolved.lane_borrow_range = msg.lane_borrow_range;
    }
    else {
      resolved.lane_borrow_range = 0
    }

    if (msg.lat_offset !== undefined) {
      resolved.lat_offset = msg.lat_offset;
    }
    else {
      resolved.lat_offset = 0.0
    }

    if (msg.fix_refline_index !== undefined) {
      resolved.fix_refline_index = msg.fix_refline_index;
    }
    else {
      resolved.fix_refline_index = 0
    }

    if (msg.origin_refline_index !== undefined) {
      resolved.origin_refline_index = msg.origin_refline_index;
    }
    else {
      resolved.origin_refline_index = 0
    }

    if (msg.target_refline_index !== undefined) {
      resolved.target_refline_index = msg.target_refline_index;
    }
    else {
      resolved.target_refline_index = 0
    }

    if (msg.sb_Blane !== undefined) {
      resolved.sb_Blane = msg.sb_Blane;
    }
    else {
      resolved.sb_Blane = false
    }

    if (msg.sb_lane !== undefined) {
      resolved.sb_lane = msg.sb_lane;
    }
    else {
      resolved.sb_lane = false
    }

    if (msg.avd_car_past_fisrt !== undefined) {
      resolved.avd_car_past_fisrt = msg.avd_car_past_fisrt;
    }
    else {
      resolved.avd_car_past_fisrt = []
    }

    if (msg.avd_car_past_second !== undefined) {
      resolved.avd_car_past_second = msg.avd_car_past_second;
    }
    else {
      resolved.avd_car_past_second = []
    }

    if (msg.avd_sp_car_past_first !== undefined) {
      resolved.avd_sp_car_past_first = msg.avd_sp_car_past_first;
    }
    else {
      resolved.avd_sp_car_past_first = []
    }

    if (msg.avd_sp_car_past_second !== undefined) {
      resolved.avd_sp_car_past_second = msg.avd_sp_car_past_second;
    }
    else {
      resolved.avd_sp_car_past_second = []
    }

    if (msg.alc_car_id !== undefined) {
      resolved.alc_car_id = msg.alc_car_id;
    }
    else {
      resolved.alc_car_id = []
    }

    if (msg.lb_car_id !== undefined) {
      resolved.lb_car_id = msg.lb_car_id;
    }
    else {
      resolved.lb_car_id = []
    }

    if (msg.lc_back_id !== undefined) {
      resolved.lc_back_id = msg.lc_back_id;
    }
    else {
      resolved.lc_back_id = 0
    }

    if (msg.lc_invalid_id !== undefined) {
      resolved.lc_invalid_id = msg.lc_invalid_id;
    }
    else {
      resolved.lc_invalid_id = 0
    }

    if (msg.dl_lat !== undefined) {
      resolved.dl_lat = msg.dl_lat;
    }
    else {
      resolved.dl_lat = 0.0
    }

    if (msg.ttc_lat !== undefined) {
      resolved.ttc_lat = msg.ttc_lat;
    }
    else {
      resolved.ttc_lat = 0.0
    }

    if (msg.dt_lat !== undefined) {
      resolved.dt_lat = msg.dt_lat;
    }
    else {
      resolved.dt_lat = 0.0
    }

    if (msg.fvfdead !== undefined) {
      resolved.fvfdead = msg.fvfdead;
    }
    else {
      resolved.fvfdead = false
    }

    if (msg.svfdead !== undefined) {
      resolved.svfdead = msg.svfdead;
    }
    else {
      resolved.svfdead = false
    }

    if (msg.premoving !== undefined) {
      resolved.premoving = msg.premoving;
    }
    else {
      resolved.premoving = false
    }

    if (msg.premove_dist !== undefined) {
      resolved.premove_dist = msg.premove_dist;
    }
    else {
      resolved.premove_dist = 0.0
    }

    if (msg.init_val !== undefined) {
      resolved.init_val = new Array(msg.init_val.length);
      for (let i = 0; i < resolved.init_val.length; ++i) {
        resolved.init_val[i] = Pose2d.Resolve(msg.init_val[i]);
      }
    }
    else {
      resolved.init_val = []
    }

    if (msg.via_points !== undefined) {
      resolved.via_points = new Array(msg.via_points.length);
      for (let i = 0; i < resolved.via_points.length; ++i) {
        resolved.via_points[i] = Pose2d.Resolve(msg.via_points[i]);
      }
    }
    else {
      resolved.via_points = []
    }

    return resolved;
    }
};

module.exports = LateralDecision;

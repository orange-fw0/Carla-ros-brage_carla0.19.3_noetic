// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LongitudinalDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.follow_obstacles = null;
      this.overtake_obstacles = null;
      this.lon_nudge_obstacles = null;
      this.lead_obstacles = null;
      this.tlead_obstacles = null;
      this.lc_gap_info = null;
      this.id_yield_closest = null;
      this.id_overtake_closest = null;
      this.tag_yield = null;
      this.N_hard = null;
      this.dt_yield = null;
      this.dt_set = null;
      this.ds_set = null;
      this.ds_yield = null;
      this.ds_overtake = null;
      this.v_set = null;
      this.v_yield_closest = null;
      this.v_overtake_closest = null;
      this.v_lim = null;
      this.v_lim_map = null;
      this.a_set = null;
      this.dis_close = null;
      this.ds_lon = null;
      this.ttc_lon = null;
      this.dt_lon = null;
      this.s_max = null;
      this.d_safe = null;
      this.ds_flag = null;
      this.v_ref = null;
      this.weights = null;
      this.enable_prebrake = null;
      this.enable_preacc = null;
      this.need_aeb = null;
      this.pnc_start = null;
      this.pnc_stop = null;
      this.blocked = null;
    }
    else {
      if (initObj.hasOwnProperty('follow_obstacles')) {
        this.follow_obstacles = initObj.follow_obstacles
      }
      else {
        this.follow_obstacles = [];
      }
      if (initObj.hasOwnProperty('overtake_obstacles')) {
        this.overtake_obstacles = initObj.overtake_obstacles
      }
      else {
        this.overtake_obstacles = [];
      }
      if (initObj.hasOwnProperty('lon_nudge_obstacles')) {
        this.lon_nudge_obstacles = initObj.lon_nudge_obstacles
      }
      else {
        this.lon_nudge_obstacles = [];
      }
      if (initObj.hasOwnProperty('lead_obstacles')) {
        this.lead_obstacles = initObj.lead_obstacles
      }
      else {
        this.lead_obstacles = [];
      }
      if (initObj.hasOwnProperty('tlead_obstacles')) {
        this.tlead_obstacles = initObj.tlead_obstacles
      }
      else {
        this.tlead_obstacles = [];
      }
      if (initObj.hasOwnProperty('lc_gap_info')) {
        this.lc_gap_info = initObj.lc_gap_info
      }
      else {
        this.lc_gap_info = [];
      }
      if (initObj.hasOwnProperty('id_yield_closest')) {
        this.id_yield_closest = initObj.id_yield_closest
      }
      else {
        this.id_yield_closest = 0;
      }
      if (initObj.hasOwnProperty('id_overtake_closest')) {
        this.id_overtake_closest = initObj.id_overtake_closest
      }
      else {
        this.id_overtake_closest = 0;
      }
      if (initObj.hasOwnProperty('tag_yield')) {
        this.tag_yield = initObj.tag_yield
      }
      else {
        this.tag_yield = 0;
      }
      if (initObj.hasOwnProperty('N_hard')) {
        this.N_hard = initObj.N_hard
      }
      else {
        this.N_hard = 0;
      }
      if (initObj.hasOwnProperty('dt_yield')) {
        this.dt_yield = initObj.dt_yield
      }
      else {
        this.dt_yield = 0.0;
      }
      if (initObj.hasOwnProperty('dt_set')) {
        this.dt_set = initObj.dt_set
      }
      else {
        this.dt_set = 0.0;
      }
      if (initObj.hasOwnProperty('ds_set')) {
        this.ds_set = initObj.ds_set
      }
      else {
        this.ds_set = 0.0;
      }
      if (initObj.hasOwnProperty('ds_yield')) {
        this.ds_yield = initObj.ds_yield
      }
      else {
        this.ds_yield = 0.0;
      }
      if (initObj.hasOwnProperty('ds_overtake')) {
        this.ds_overtake = initObj.ds_overtake
      }
      else {
        this.ds_overtake = 0.0;
      }
      if (initObj.hasOwnProperty('v_set')) {
        this.v_set = initObj.v_set
      }
      else {
        this.v_set = 0.0;
      }
      if (initObj.hasOwnProperty('v_yield_closest')) {
        this.v_yield_closest = initObj.v_yield_closest
      }
      else {
        this.v_yield_closest = 0.0;
      }
      if (initObj.hasOwnProperty('v_overtake_closest')) {
        this.v_overtake_closest = initObj.v_overtake_closest
      }
      else {
        this.v_overtake_closest = 0.0;
      }
      if (initObj.hasOwnProperty('v_lim')) {
        this.v_lim = initObj.v_lim
      }
      else {
        this.v_lim = 0.0;
      }
      if (initObj.hasOwnProperty('v_lim_map')) {
        this.v_lim_map = initObj.v_lim_map
      }
      else {
        this.v_lim_map = 0.0;
      }
      if (initObj.hasOwnProperty('a_set')) {
        this.a_set = initObj.a_set
      }
      else {
        this.a_set = 0.0;
      }
      if (initObj.hasOwnProperty('dis_close')) {
        this.dis_close = initObj.dis_close
      }
      else {
        this.dis_close = 0.0;
      }
      if (initObj.hasOwnProperty('ds_lon')) {
        this.ds_lon = initObj.ds_lon
      }
      else {
        this.ds_lon = [];
      }
      if (initObj.hasOwnProperty('ttc_lon')) {
        this.ttc_lon = initObj.ttc_lon
      }
      else {
        this.ttc_lon = [];
      }
      if (initObj.hasOwnProperty('dt_lon')) {
        this.dt_lon = initObj.dt_lon
      }
      else {
        this.dt_lon = [];
      }
      if (initObj.hasOwnProperty('s_max')) {
        this.s_max = initObj.s_max
      }
      else {
        this.s_max = [];
      }
      if (initObj.hasOwnProperty('d_safe')) {
        this.d_safe = initObj.d_safe
      }
      else {
        this.d_safe = [];
      }
      if (initObj.hasOwnProperty('ds_flag')) {
        this.ds_flag = initObj.ds_flag
      }
      else {
        this.ds_flag = [];
      }
      if (initObj.hasOwnProperty('v_ref')) {
        this.v_ref = initObj.v_ref
      }
      else {
        this.v_ref = [];
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
      if (initObj.hasOwnProperty('enable_prebrake')) {
        this.enable_prebrake = initObj.enable_prebrake
      }
      else {
        this.enable_prebrake = false;
      }
      if (initObj.hasOwnProperty('enable_preacc')) {
        this.enable_preacc = initObj.enable_preacc
      }
      else {
        this.enable_preacc = false;
      }
      if (initObj.hasOwnProperty('need_aeb')) {
        this.need_aeb = initObj.need_aeb
      }
      else {
        this.need_aeb = false;
      }
      if (initObj.hasOwnProperty('pnc_start')) {
        this.pnc_start = initObj.pnc_start
      }
      else {
        this.pnc_start = false;
      }
      if (initObj.hasOwnProperty('pnc_stop')) {
        this.pnc_stop = initObj.pnc_stop
      }
      else {
        this.pnc_stop = false;
      }
      if (initObj.hasOwnProperty('blocked')) {
        this.blocked = initObj.blocked
      }
      else {
        this.blocked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LongitudinalDecision
    // Serialize message field [follow_obstacles]
    bufferOffset = _arraySerializer.int32(obj.follow_obstacles, buffer, bufferOffset, null);
    // Serialize message field [overtake_obstacles]
    bufferOffset = _arraySerializer.int32(obj.overtake_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lon_nudge_obstacles]
    bufferOffset = _arraySerializer.int32(obj.lon_nudge_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lead_obstacles]
    bufferOffset = _arraySerializer.int32(obj.lead_obstacles, buffer, bufferOffset, null);
    // Serialize message field [tlead_obstacles]
    bufferOffset = _arraySerializer.int32(obj.tlead_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lc_gap_info]
    bufferOffset = _arraySerializer.int32(obj.lc_gap_info, buffer, bufferOffset, null);
    // Serialize message field [id_yield_closest]
    bufferOffset = _serializer.int32(obj.id_yield_closest, buffer, bufferOffset);
    // Serialize message field [id_overtake_closest]
    bufferOffset = _serializer.int32(obj.id_overtake_closest, buffer, bufferOffset);
    // Serialize message field [tag_yield]
    bufferOffset = _serializer.int32(obj.tag_yield, buffer, bufferOffset);
    // Serialize message field [N_hard]
    bufferOffset = _serializer.int32(obj.N_hard, buffer, bufferOffset);
    // Serialize message field [dt_yield]
    bufferOffset = _serializer.float32(obj.dt_yield, buffer, bufferOffset);
    // Serialize message field [dt_set]
    bufferOffset = _serializer.float32(obj.dt_set, buffer, bufferOffset);
    // Serialize message field [ds_set]
    bufferOffset = _serializer.float32(obj.ds_set, buffer, bufferOffset);
    // Serialize message field [ds_yield]
    bufferOffset = _serializer.float32(obj.ds_yield, buffer, bufferOffset);
    // Serialize message field [ds_overtake]
    bufferOffset = _serializer.float32(obj.ds_overtake, buffer, bufferOffset);
    // Serialize message field [v_set]
    bufferOffset = _serializer.float32(obj.v_set, buffer, bufferOffset);
    // Serialize message field [v_yield_closest]
    bufferOffset = _serializer.float32(obj.v_yield_closest, buffer, bufferOffset);
    // Serialize message field [v_overtake_closest]
    bufferOffset = _serializer.float32(obj.v_overtake_closest, buffer, bufferOffset);
    // Serialize message field [v_lim]
    bufferOffset = _serializer.float32(obj.v_lim, buffer, bufferOffset);
    // Serialize message field [v_lim_map]
    bufferOffset = _serializer.float32(obj.v_lim_map, buffer, bufferOffset);
    // Serialize message field [a_set]
    bufferOffset = _serializer.float32(obj.a_set, buffer, bufferOffset);
    // Serialize message field [dis_close]
    bufferOffset = _serializer.float32(obj.dis_close, buffer, bufferOffset);
    // Serialize message field [ds_lon]
    bufferOffset = _arraySerializer.float32(obj.ds_lon, buffer, bufferOffset, null);
    // Serialize message field [ttc_lon]
    bufferOffset = _arraySerializer.float32(obj.ttc_lon, buffer, bufferOffset, null);
    // Serialize message field [dt_lon]
    bufferOffset = _arraySerializer.float32(obj.dt_lon, buffer, bufferOffset, null);
    // Serialize message field [s_max]
    bufferOffset = _arraySerializer.float32(obj.s_max, buffer, bufferOffset, null);
    // Serialize message field [d_safe]
    bufferOffset = _arraySerializer.float32(obj.d_safe, buffer, bufferOffset, null);
    // Serialize message field [ds_flag]
    bufferOffset = _arraySerializer.float32(obj.ds_flag, buffer, bufferOffset, null);
    // Serialize message field [v_ref]
    bufferOffset = _arraySerializer.float32(obj.v_ref, buffer, bufferOffset, null);
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float32(obj.weights, buffer, bufferOffset, null);
    // Serialize message field [enable_prebrake]
    bufferOffset = _serializer.bool(obj.enable_prebrake, buffer, bufferOffset);
    // Serialize message field [enable_preacc]
    bufferOffset = _serializer.bool(obj.enable_preacc, buffer, bufferOffset);
    // Serialize message field [need_aeb]
    bufferOffset = _serializer.bool(obj.need_aeb, buffer, bufferOffset);
    // Serialize message field [pnc_start]
    bufferOffset = _serializer.bool(obj.pnc_start, buffer, bufferOffset);
    // Serialize message field [pnc_stop]
    bufferOffset = _serializer.bool(obj.pnc_stop, buffer, bufferOffset);
    // Serialize message field [blocked]
    bufferOffset = _serializer.bool(obj.blocked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LongitudinalDecision
    let len;
    let data = new LongitudinalDecision(null);
    // Deserialize message field [follow_obstacles]
    data.follow_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [overtake_obstacles]
    data.overtake_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lon_nudge_obstacles]
    data.lon_nudge_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lead_obstacles]
    data.lead_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [tlead_obstacles]
    data.tlead_obstacles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [lc_gap_info]
    data.lc_gap_info = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [id_yield_closest]
    data.id_yield_closest = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id_overtake_closest]
    data.id_overtake_closest = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tag_yield]
    data.tag_yield = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [N_hard]
    data.N_hard = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dt_yield]
    data.dt_yield = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dt_set]
    data.dt_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ds_set]
    data.ds_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ds_yield]
    data.ds_yield = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ds_overtake]
    data.ds_overtake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_set]
    data.v_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_yield_closest]
    data.v_yield_closest = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_overtake_closest]
    data.v_overtake_closest = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_lim]
    data.v_lim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_lim_map]
    data.v_lim_map = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_set]
    data.a_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_close]
    data.dis_close = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ds_lon]
    data.ds_lon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ttc_lon]
    data.ttc_lon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [dt_lon]
    data.dt_lon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [s_max]
    data.s_max = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [d_safe]
    data.d_safe = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ds_flag]
    data.ds_flag = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v_ref]
    data.v_ref = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [enable_prebrake]
    data.enable_prebrake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_preacc]
    data.enable_preacc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_aeb]
    data.need_aeb = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pnc_start]
    data.pnc_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pnc_stop]
    data.pnc_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [blocked]
    data.blocked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.follow_obstacles.length;
    length += 4 * object.overtake_obstacles.length;
    length += 4 * object.lon_nudge_obstacles.length;
    length += 4 * object.lead_obstacles.length;
    length += 4 * object.tlead_obstacles.length;
    length += 4 * object.lc_gap_info.length;
    length += 4 * object.ds_lon.length;
    length += 4 * object.ttc_lon.length;
    length += 4 * object.dt_lon.length;
    length += 4 * object.s_max.length;
    length += 4 * object.d_safe.length;
    length += 4 * object.ds_flag.length;
    length += 4 * object.v_ref.length;
    length += 4 * object.weights.length;
    return length + 126;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/LongitudinalDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b6fef25961d1618500e9ad81fa5cb3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LongitudinalDecision(null);
    if (msg.follow_obstacles !== undefined) {
      resolved.follow_obstacles = msg.follow_obstacles;
    }
    else {
      resolved.follow_obstacles = []
    }

    if (msg.overtake_obstacles !== undefined) {
      resolved.overtake_obstacles = msg.overtake_obstacles;
    }
    else {
      resolved.overtake_obstacles = []
    }

    if (msg.lon_nudge_obstacles !== undefined) {
      resolved.lon_nudge_obstacles = msg.lon_nudge_obstacles;
    }
    else {
      resolved.lon_nudge_obstacles = []
    }

    if (msg.lead_obstacles !== undefined) {
      resolved.lead_obstacles = msg.lead_obstacles;
    }
    else {
      resolved.lead_obstacles = []
    }

    if (msg.tlead_obstacles !== undefined) {
      resolved.tlead_obstacles = msg.tlead_obstacles;
    }
    else {
      resolved.tlead_obstacles = []
    }

    if (msg.lc_gap_info !== undefined) {
      resolved.lc_gap_info = msg.lc_gap_info;
    }
    else {
      resolved.lc_gap_info = []
    }

    if (msg.id_yield_closest !== undefined) {
      resolved.id_yield_closest = msg.id_yield_closest;
    }
    else {
      resolved.id_yield_closest = 0
    }

    if (msg.id_overtake_closest !== undefined) {
      resolved.id_overtake_closest = msg.id_overtake_closest;
    }
    else {
      resolved.id_overtake_closest = 0
    }

    if (msg.tag_yield !== undefined) {
      resolved.tag_yield = msg.tag_yield;
    }
    else {
      resolved.tag_yield = 0
    }

    if (msg.N_hard !== undefined) {
      resolved.N_hard = msg.N_hard;
    }
    else {
      resolved.N_hard = 0
    }

    if (msg.dt_yield !== undefined) {
      resolved.dt_yield = msg.dt_yield;
    }
    else {
      resolved.dt_yield = 0.0
    }

    if (msg.dt_set !== undefined) {
      resolved.dt_set = msg.dt_set;
    }
    else {
      resolved.dt_set = 0.0
    }

    if (msg.ds_set !== undefined) {
      resolved.ds_set = msg.ds_set;
    }
    else {
      resolved.ds_set = 0.0
    }

    if (msg.ds_yield !== undefined) {
      resolved.ds_yield = msg.ds_yield;
    }
    else {
      resolved.ds_yield = 0.0
    }

    if (msg.ds_overtake !== undefined) {
      resolved.ds_overtake = msg.ds_overtake;
    }
    else {
      resolved.ds_overtake = 0.0
    }

    if (msg.v_set !== undefined) {
      resolved.v_set = msg.v_set;
    }
    else {
      resolved.v_set = 0.0
    }

    if (msg.v_yield_closest !== undefined) {
      resolved.v_yield_closest = msg.v_yield_closest;
    }
    else {
      resolved.v_yield_closest = 0.0
    }

    if (msg.v_overtake_closest !== undefined) {
      resolved.v_overtake_closest = msg.v_overtake_closest;
    }
    else {
      resolved.v_overtake_closest = 0.0
    }

    if (msg.v_lim !== undefined) {
      resolved.v_lim = msg.v_lim;
    }
    else {
      resolved.v_lim = 0.0
    }

    if (msg.v_lim_map !== undefined) {
      resolved.v_lim_map = msg.v_lim_map;
    }
    else {
      resolved.v_lim_map = 0.0
    }

    if (msg.a_set !== undefined) {
      resolved.a_set = msg.a_set;
    }
    else {
      resolved.a_set = 0.0
    }

    if (msg.dis_close !== undefined) {
      resolved.dis_close = msg.dis_close;
    }
    else {
      resolved.dis_close = 0.0
    }

    if (msg.ds_lon !== undefined) {
      resolved.ds_lon = msg.ds_lon;
    }
    else {
      resolved.ds_lon = []
    }

    if (msg.ttc_lon !== undefined) {
      resolved.ttc_lon = msg.ttc_lon;
    }
    else {
      resolved.ttc_lon = []
    }

    if (msg.dt_lon !== undefined) {
      resolved.dt_lon = msg.dt_lon;
    }
    else {
      resolved.dt_lon = []
    }

    if (msg.s_max !== undefined) {
      resolved.s_max = msg.s_max;
    }
    else {
      resolved.s_max = []
    }

    if (msg.d_safe !== undefined) {
      resolved.d_safe = msg.d_safe;
    }
    else {
      resolved.d_safe = []
    }

    if (msg.ds_flag !== undefined) {
      resolved.ds_flag = msg.ds_flag;
    }
    else {
      resolved.ds_flag = []
    }

    if (msg.v_ref !== undefined) {
      resolved.v_ref = msg.v_ref;
    }
    else {
      resolved.v_ref = []
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    if (msg.enable_prebrake !== undefined) {
      resolved.enable_prebrake = msg.enable_prebrake;
    }
    else {
      resolved.enable_prebrake = false
    }

    if (msg.enable_preacc !== undefined) {
      resolved.enable_preacc = msg.enable_preacc;
    }
    else {
      resolved.enable_preacc = false
    }

    if (msg.need_aeb !== undefined) {
      resolved.need_aeb = msg.need_aeb;
    }
    else {
      resolved.need_aeb = false
    }

    if (msg.pnc_start !== undefined) {
      resolved.pnc_start = msg.pnc_start;
    }
    else {
      resolved.pnc_start = false
    }

    if (msg.pnc_stop !== undefined) {
      resolved.pnc_stop = msg.pnc_stop;
    }
    else {
      resolved.pnc_stop = false
    }

    if (msg.blocked !== undefined) {
      resolved.blocked = msg.blocked;
    }
    else {
      resolved.blocked = false
    }

    return resolved;
    }
};

module.exports = LongitudinalDecision;

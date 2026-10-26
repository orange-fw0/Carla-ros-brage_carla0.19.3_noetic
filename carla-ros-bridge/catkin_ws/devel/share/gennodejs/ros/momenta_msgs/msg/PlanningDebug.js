// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AvdMsg = require('./AvdMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlanningDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lat_error = null;
      this.lon_error = null;
      this.flag_closelead = null;
      this.flag_invalid = null;
      this.flag_type0 = null;
      this.flag_softbrake = null;
      this.flag_fastcutin = null;
      this.v_set = null;
      this.ds_set = null;
      this.t_set = null;
      this.v_limit = null;
      this.num_yield = null;
      this.vl_yield = null;
      this.dsl_yield = null;
      this.type_yield = null;
      this.id_yield = null;
      this.tag_yield = null;
      this.type_merge = null;
      this.dis2cross = null;
      this.dsl_overtake = null;
      this.type_overtake = null;
      this.id_overtake = null;
      this.dis2merge = null;
      this.cutin_score = null;
      this.id_nudge = null;
      this.avd_info = null;
      this.lead_one_drel = null;
      this.lead_one_vrel = null;
      this.v_target = null;
      this.a_target = null;
      this.dis_to_stop = null;
      this.traffic_light_decision = null;
      this.lon_follow_obstacles = null;
      this.lon_overtake_obstacles = null;
      this.lat_nudge_obstacles = null;
      this.blocking_obstacle_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lat_error')) {
        this.lat_error = initObj.lat_error
      }
      else {
        this.lat_error = 0.0;
      }
      if (initObj.hasOwnProperty('lon_error')) {
        this.lon_error = initObj.lon_error
      }
      else {
        this.lon_error = 0.0;
      }
      if (initObj.hasOwnProperty('flag_closelead')) {
        this.flag_closelead = initObj.flag_closelead
      }
      else {
        this.flag_closelead = 0;
      }
      if (initObj.hasOwnProperty('flag_invalid')) {
        this.flag_invalid = initObj.flag_invalid
      }
      else {
        this.flag_invalid = 0;
      }
      if (initObj.hasOwnProperty('flag_type0')) {
        this.flag_type0 = initObj.flag_type0
      }
      else {
        this.flag_type0 = 0;
      }
      if (initObj.hasOwnProperty('flag_softbrake')) {
        this.flag_softbrake = initObj.flag_softbrake
      }
      else {
        this.flag_softbrake = 0;
      }
      if (initObj.hasOwnProperty('flag_fastcutin')) {
        this.flag_fastcutin = initObj.flag_fastcutin
      }
      else {
        this.flag_fastcutin = 0;
      }
      if (initObj.hasOwnProperty('v_set')) {
        this.v_set = initObj.v_set
      }
      else {
        this.v_set = 0.0;
      }
      if (initObj.hasOwnProperty('ds_set')) {
        this.ds_set = initObj.ds_set
      }
      else {
        this.ds_set = 0.0;
      }
      if (initObj.hasOwnProperty('t_set')) {
        this.t_set = initObj.t_set
      }
      else {
        this.t_set = 0.0;
      }
      if (initObj.hasOwnProperty('v_limit')) {
        this.v_limit = initObj.v_limit
      }
      else {
        this.v_limit = 0.0;
      }
      if (initObj.hasOwnProperty('num_yield')) {
        this.num_yield = initObj.num_yield
      }
      else {
        this.num_yield = 0;
      }
      if (initObj.hasOwnProperty('vl_yield')) {
        this.vl_yield = initObj.vl_yield
      }
      else {
        this.vl_yield = 0.0;
      }
      if (initObj.hasOwnProperty('dsl_yield')) {
        this.dsl_yield = initObj.dsl_yield
      }
      else {
        this.dsl_yield = 0.0;
      }
      if (initObj.hasOwnProperty('type_yield')) {
        this.type_yield = initObj.type_yield
      }
      else {
        this.type_yield = 0;
      }
      if (initObj.hasOwnProperty('id_yield')) {
        this.id_yield = initObj.id_yield
      }
      else {
        this.id_yield = 0;
      }
      if (initObj.hasOwnProperty('tag_yield')) {
        this.tag_yield = initObj.tag_yield
      }
      else {
        this.tag_yield = 0;
      }
      if (initObj.hasOwnProperty('type_merge')) {
        this.type_merge = initObj.type_merge
      }
      else {
        this.type_merge = 0;
      }
      if (initObj.hasOwnProperty('dis2cross')) {
        this.dis2cross = initObj.dis2cross
      }
      else {
        this.dis2cross = 0.0;
      }
      if (initObj.hasOwnProperty('dsl_overtake')) {
        this.dsl_overtake = initObj.dsl_overtake
      }
      else {
        this.dsl_overtake = 0.0;
      }
      if (initObj.hasOwnProperty('type_overtake')) {
        this.type_overtake = initObj.type_overtake
      }
      else {
        this.type_overtake = 0;
      }
      if (initObj.hasOwnProperty('id_overtake')) {
        this.id_overtake = initObj.id_overtake
      }
      else {
        this.id_overtake = 0;
      }
      if (initObj.hasOwnProperty('dis2merge')) {
        this.dis2merge = initObj.dis2merge
      }
      else {
        this.dis2merge = 0.0;
      }
      if (initObj.hasOwnProperty('cutin_score')) {
        this.cutin_score = initObj.cutin_score
      }
      else {
        this.cutin_score = 0.0;
      }
      if (initObj.hasOwnProperty('id_nudge')) {
        this.id_nudge = initObj.id_nudge
      }
      else {
        this.id_nudge = 0;
      }
      if (initObj.hasOwnProperty('avd_info')) {
        this.avd_info = initObj.avd_info
      }
      else {
        this.avd_info = [];
      }
      if (initObj.hasOwnProperty('lead_one_drel')) {
        this.lead_one_drel = initObj.lead_one_drel
      }
      else {
        this.lead_one_drel = 0.0;
      }
      if (initObj.hasOwnProperty('lead_one_vrel')) {
        this.lead_one_vrel = initObj.lead_one_vrel
      }
      else {
        this.lead_one_vrel = 0.0;
      }
      if (initObj.hasOwnProperty('v_target')) {
        this.v_target = initObj.v_target
      }
      else {
        this.v_target = 0.0;
      }
      if (initObj.hasOwnProperty('a_target')) {
        this.a_target = initObj.a_target
      }
      else {
        this.a_target = 0.0;
      }
      if (initObj.hasOwnProperty('dis_to_stop')) {
        this.dis_to_stop = initObj.dis_to_stop
      }
      else {
        this.dis_to_stop = 0.0;
      }
      if (initObj.hasOwnProperty('traffic_light_decision')) {
        this.traffic_light_decision = initObj.traffic_light_decision
      }
      else {
        this.traffic_light_decision = [];
      }
      if (initObj.hasOwnProperty('lon_follow_obstacles')) {
        this.lon_follow_obstacles = initObj.lon_follow_obstacles
      }
      else {
        this.lon_follow_obstacles = [];
      }
      if (initObj.hasOwnProperty('lon_overtake_obstacles')) {
        this.lon_overtake_obstacles = initObj.lon_overtake_obstacles
      }
      else {
        this.lon_overtake_obstacles = [];
      }
      if (initObj.hasOwnProperty('lat_nudge_obstacles')) {
        this.lat_nudge_obstacles = initObj.lat_nudge_obstacles
      }
      else {
        this.lat_nudge_obstacles = [];
      }
      if (initObj.hasOwnProperty('blocking_obstacle_id')) {
        this.blocking_obstacle_id = initObj.blocking_obstacle_id
      }
      else {
        this.blocking_obstacle_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lat_error]
    bufferOffset = _serializer.float32(obj.lat_error, buffer, bufferOffset);
    // Serialize message field [lon_error]
    bufferOffset = _serializer.float32(obj.lon_error, buffer, bufferOffset);
    // Serialize message field [flag_closelead]
    bufferOffset = _serializer.uint32(obj.flag_closelead, buffer, bufferOffset);
    // Serialize message field [flag_invalid]
    bufferOffset = _serializer.uint32(obj.flag_invalid, buffer, bufferOffset);
    // Serialize message field [flag_type0]
    bufferOffset = _serializer.uint32(obj.flag_type0, buffer, bufferOffset);
    // Serialize message field [flag_softbrake]
    bufferOffset = _serializer.uint32(obj.flag_softbrake, buffer, bufferOffset);
    // Serialize message field [flag_fastcutin]
    bufferOffset = _serializer.uint32(obj.flag_fastcutin, buffer, bufferOffset);
    // Serialize message field [v_set]
    bufferOffset = _serializer.float32(obj.v_set, buffer, bufferOffset);
    // Serialize message field [ds_set]
    bufferOffset = _serializer.float32(obj.ds_set, buffer, bufferOffset);
    // Serialize message field [t_set]
    bufferOffset = _serializer.float32(obj.t_set, buffer, bufferOffset);
    // Serialize message field [v_limit]
    bufferOffset = _serializer.float32(obj.v_limit, buffer, bufferOffset);
    // Serialize message field [num_yield]
    bufferOffset = _serializer.uint32(obj.num_yield, buffer, bufferOffset);
    // Serialize message field [vl_yield]
    bufferOffset = _serializer.float32(obj.vl_yield, buffer, bufferOffset);
    // Serialize message field [dsl_yield]
    bufferOffset = _serializer.float32(obj.dsl_yield, buffer, bufferOffset);
    // Serialize message field [type_yield]
    bufferOffset = _serializer.uint32(obj.type_yield, buffer, bufferOffset);
    // Serialize message field [id_yield]
    bufferOffset = _serializer.int32(obj.id_yield, buffer, bufferOffset);
    // Serialize message field [tag_yield]
    bufferOffset = _serializer.uint32(obj.tag_yield, buffer, bufferOffset);
    // Serialize message field [type_merge]
    bufferOffset = _serializer.uint32(obj.type_merge, buffer, bufferOffset);
    // Serialize message field [dis2cross]
    bufferOffset = _serializer.float32(obj.dis2cross, buffer, bufferOffset);
    // Serialize message field [dsl_overtake]
    bufferOffset = _serializer.float32(obj.dsl_overtake, buffer, bufferOffset);
    // Serialize message field [type_overtake]
    bufferOffset = _serializer.uint32(obj.type_overtake, buffer, bufferOffset);
    // Serialize message field [id_overtake]
    bufferOffset = _serializer.int32(obj.id_overtake, buffer, bufferOffset);
    // Serialize message field [dis2merge]
    bufferOffset = _serializer.float32(obj.dis2merge, buffer, bufferOffset);
    // Serialize message field [cutin_score]
    bufferOffset = _serializer.float32(obj.cutin_score, buffer, bufferOffset);
    // Serialize message field [id_nudge]
    bufferOffset = _serializer.int32(obj.id_nudge, buffer, bufferOffset);
    // Serialize message field [avd_info]
    // Serialize the length for message field [avd_info]
    bufferOffset = _serializer.uint32(obj.avd_info.length, buffer, bufferOffset);
    obj.avd_info.forEach((val) => {
      bufferOffset = AvdMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lead_one_drel]
    bufferOffset = _serializer.float64(obj.lead_one_drel, buffer, bufferOffset);
    // Serialize message field [lead_one_vrel]
    bufferOffset = _serializer.float64(obj.lead_one_vrel, buffer, bufferOffset);
    // Serialize message field [v_target]
    bufferOffset = _serializer.float32(obj.v_target, buffer, bufferOffset);
    // Serialize message field [a_target]
    bufferOffset = _serializer.float32(obj.a_target, buffer, bufferOffset);
    // Serialize message field [dis_to_stop]
    bufferOffset = _serializer.float32(obj.dis_to_stop, buffer, bufferOffset);
    // Serialize message field [traffic_light_decision]
    bufferOffset = _arraySerializer.uint8(obj.traffic_light_decision, buffer, bufferOffset, null);
    // Serialize message field [lon_follow_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lon_follow_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lon_overtake_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lon_overtake_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lat_nudge_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lat_nudge_obstacles, buffer, bufferOffset, null);
    // Serialize message field [blocking_obstacle_id]
    bufferOffset = _serializer.uint32(obj.blocking_obstacle_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningDebug
    let len;
    let data = new PlanningDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat_error]
    data.lat_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon_error]
    data.lon_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flag_closelead]
    data.flag_closelead = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag_invalid]
    data.flag_invalid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag_type0]
    data.flag_type0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag_softbrake]
    data.flag_softbrake = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag_fastcutin]
    data.flag_fastcutin = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [v_set]
    data.v_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ds_set]
    data.ds_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_set]
    data.t_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_limit]
    data.v_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_yield]
    data.num_yield = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vl_yield]
    data.vl_yield = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dsl_yield]
    data.dsl_yield = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type_yield]
    data.type_yield = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [id_yield]
    data.id_yield = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tag_yield]
    data.tag_yield = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type_merge]
    data.type_merge = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dis2cross]
    data.dis2cross = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dsl_overtake]
    data.dsl_overtake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type_overtake]
    data.type_overtake = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [id_overtake]
    data.id_overtake = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dis2merge]
    data.dis2merge = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cutin_score]
    data.cutin_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id_nudge]
    data.id_nudge = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [avd_info]
    // Deserialize array length for message field [avd_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avd_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avd_info[i] = AvdMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lead_one_drel]
    data.lead_one_drel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lead_one_vrel]
    data.lead_one_vrel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_target]
    data.v_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_target]
    data.a_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_to_stop]
    data.dis_to_stop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traffic_light_decision]
    data.traffic_light_decision = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lon_follow_obstacles]
    data.lon_follow_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [lon_overtake_obstacles]
    data.lon_overtake_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [lat_nudge_obstacles]
    data.lat_nudge_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [blocking_obstacle_id]
    data.blocking_obstacle_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.avd_info.forEach((val) => {
      length += AvdMsg.getMessageSize(val);
    });
    length += object.traffic_light_decision.length;
    length += 4 * object.lon_follow_obstacles.length;
    length += 4 * object.lon_overtake_obstacles.length;
    length += 4 * object.lat_nudge_obstacles.length;
    return length + 152;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PlanningDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61b16e947e5da19cb40ee8b20a1e8261';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32 lat_error
    float32 lon_error
    uint32 flag_closelead
    uint32 flag_invalid
    uint32 flag_type0
    uint32 flag_softbrake
    uint32 flag_fastcutin
    float32 v_set
    float32 ds_set
    float32 t_set
    float32 v_limit
    uint32 num_yield
    float32 vl_yield
    float32 dsl_yield
    uint32 type_yield
    int32 id_yield
    uint32 tag_yield
    uint32 type_merge
    float32 dis2cross
    float32 dsl_overtake
    uint32 type_overtake
    int32 id_overtake
    float32 dis2merge
    float32 cutin_score
    int32 id_nudge
    momenta_msgs/AvdMsg[] avd_info
    float64 lead_one_drel
    float64 lead_one_vrel
    float32 v_target
    float32 a_target
    float32 dis_to_stop
    uint8[] traffic_light_decision
    uint32[] lon_follow_obstacles
    uint32[] lon_overtake_obstacles
    uint32[] lat_nudge_obstacles
    uint32 blocking_obstacle_id
    
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
    MSG: momenta_msgs/AvdMsg
    int32 Id
    string Property
    bool Ignore
    string AvdDirection
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lat_error !== undefined) {
      resolved.lat_error = msg.lat_error;
    }
    else {
      resolved.lat_error = 0.0
    }

    if (msg.lon_error !== undefined) {
      resolved.lon_error = msg.lon_error;
    }
    else {
      resolved.lon_error = 0.0
    }

    if (msg.flag_closelead !== undefined) {
      resolved.flag_closelead = msg.flag_closelead;
    }
    else {
      resolved.flag_closelead = 0
    }

    if (msg.flag_invalid !== undefined) {
      resolved.flag_invalid = msg.flag_invalid;
    }
    else {
      resolved.flag_invalid = 0
    }

    if (msg.flag_type0 !== undefined) {
      resolved.flag_type0 = msg.flag_type0;
    }
    else {
      resolved.flag_type0 = 0
    }

    if (msg.flag_softbrake !== undefined) {
      resolved.flag_softbrake = msg.flag_softbrake;
    }
    else {
      resolved.flag_softbrake = 0
    }

    if (msg.flag_fastcutin !== undefined) {
      resolved.flag_fastcutin = msg.flag_fastcutin;
    }
    else {
      resolved.flag_fastcutin = 0
    }

    if (msg.v_set !== undefined) {
      resolved.v_set = msg.v_set;
    }
    else {
      resolved.v_set = 0.0
    }

    if (msg.ds_set !== undefined) {
      resolved.ds_set = msg.ds_set;
    }
    else {
      resolved.ds_set = 0.0
    }

    if (msg.t_set !== undefined) {
      resolved.t_set = msg.t_set;
    }
    else {
      resolved.t_set = 0.0
    }

    if (msg.v_limit !== undefined) {
      resolved.v_limit = msg.v_limit;
    }
    else {
      resolved.v_limit = 0.0
    }

    if (msg.num_yield !== undefined) {
      resolved.num_yield = msg.num_yield;
    }
    else {
      resolved.num_yield = 0
    }

    if (msg.vl_yield !== undefined) {
      resolved.vl_yield = msg.vl_yield;
    }
    else {
      resolved.vl_yield = 0.0
    }

    if (msg.dsl_yield !== undefined) {
      resolved.dsl_yield = msg.dsl_yield;
    }
    else {
      resolved.dsl_yield = 0.0
    }

    if (msg.type_yield !== undefined) {
      resolved.type_yield = msg.type_yield;
    }
    else {
      resolved.type_yield = 0
    }

    if (msg.id_yield !== undefined) {
      resolved.id_yield = msg.id_yield;
    }
    else {
      resolved.id_yield = 0
    }

    if (msg.tag_yield !== undefined) {
      resolved.tag_yield = msg.tag_yield;
    }
    else {
      resolved.tag_yield = 0
    }

    if (msg.type_merge !== undefined) {
      resolved.type_merge = msg.type_merge;
    }
    else {
      resolved.type_merge = 0
    }

    if (msg.dis2cross !== undefined) {
      resolved.dis2cross = msg.dis2cross;
    }
    else {
      resolved.dis2cross = 0.0
    }

    if (msg.dsl_overtake !== undefined) {
      resolved.dsl_overtake = msg.dsl_overtake;
    }
    else {
      resolved.dsl_overtake = 0.0
    }

    if (msg.type_overtake !== undefined) {
      resolved.type_overtake = msg.type_overtake;
    }
    else {
      resolved.type_overtake = 0
    }

    if (msg.id_overtake !== undefined) {
      resolved.id_overtake = msg.id_overtake;
    }
    else {
      resolved.id_overtake = 0
    }

    if (msg.dis2merge !== undefined) {
      resolved.dis2merge = msg.dis2merge;
    }
    else {
      resolved.dis2merge = 0.0
    }

    if (msg.cutin_score !== undefined) {
      resolved.cutin_score = msg.cutin_score;
    }
    else {
      resolved.cutin_score = 0.0
    }

    if (msg.id_nudge !== undefined) {
      resolved.id_nudge = msg.id_nudge;
    }
    else {
      resolved.id_nudge = 0
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

    if (msg.lead_one_drel !== undefined) {
      resolved.lead_one_drel = msg.lead_one_drel;
    }
    else {
      resolved.lead_one_drel = 0.0
    }

    if (msg.lead_one_vrel !== undefined) {
      resolved.lead_one_vrel = msg.lead_one_vrel;
    }
    else {
      resolved.lead_one_vrel = 0.0
    }

    if (msg.v_target !== undefined) {
      resolved.v_target = msg.v_target;
    }
    else {
      resolved.v_target = 0.0
    }

    if (msg.a_target !== undefined) {
      resolved.a_target = msg.a_target;
    }
    else {
      resolved.a_target = 0.0
    }

    if (msg.dis_to_stop !== undefined) {
      resolved.dis_to_stop = msg.dis_to_stop;
    }
    else {
      resolved.dis_to_stop = 0.0
    }

    if (msg.traffic_light_decision !== undefined) {
      resolved.traffic_light_decision = msg.traffic_light_decision;
    }
    else {
      resolved.traffic_light_decision = []
    }

    if (msg.lon_follow_obstacles !== undefined) {
      resolved.lon_follow_obstacles = msg.lon_follow_obstacles;
    }
    else {
      resolved.lon_follow_obstacles = []
    }

    if (msg.lon_overtake_obstacles !== undefined) {
      resolved.lon_overtake_obstacles = msg.lon_overtake_obstacles;
    }
    else {
      resolved.lon_overtake_obstacles = []
    }

    if (msg.lat_nudge_obstacles !== undefined) {
      resolved.lat_nudge_obstacles = msg.lat_nudge_obstacles;
    }
    else {
      resolved.lat_nudge_obstacles = []
    }

    if (msg.blocking_obstacle_id !== undefined) {
      resolved.blocking_obstacle_id = msg.blocking_obstacle_id;
    }
    else {
      resolved.blocking_obstacle_id = 0
    }

    return resolved;
    }
};

module.exports = PlanningDebug;

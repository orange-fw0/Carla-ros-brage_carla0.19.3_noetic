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

class OptimalPlannerTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.v_target = null;
      this.a_target = null;
      this.enable = null;
      this.stop_flag = null;
      this.v_limit = null;
      this.stop_distance = null;
      this.which_lane = null;
      this.track_id = null;
      this.lc_request = null;
      this.lc_status = null;
      this.lane_borrow = null;
      this.lane_borrow_range = null;
      this.avd_info = null;
      this.lat_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('v_target')) {
        this.v_target = initObj.v_target
      }
      else {
        this.v_target = [];
      }
      if (initObj.hasOwnProperty('a_target')) {
        this.a_target = initObj.a_target
      }
      else {
        this.a_target = [];
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('stop_flag')) {
        this.stop_flag = initObj.stop_flag
      }
      else {
        this.stop_flag = false;
      }
      if (initObj.hasOwnProperty('v_limit')) {
        this.v_limit = initObj.v_limit
      }
      else {
        this.v_limit = 0.0;
      }
      if (initObj.hasOwnProperty('stop_distance')) {
        this.stop_distance = initObj.stop_distance
      }
      else {
        this.stop_distance = 0.0;
      }
      if (initObj.hasOwnProperty('which_lane')) {
        this.which_lane = initObj.which_lane
      }
      else {
        this.which_lane = '';
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('lc_request')) {
        this.lc_request = initObj.lc_request
      }
      else {
        this.lc_request = '';
      }
      if (initObj.hasOwnProperty('lc_status')) {
        this.lc_status = initObj.lc_status
      }
      else {
        this.lc_status = '';
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
      if (initObj.hasOwnProperty('avd_info')) {
        this.avd_info = initObj.avd_info
      }
      else {
        this.avd_info = [];
      }
      if (initObj.hasOwnProperty('lat_offset')) {
        this.lat_offset = initObj.lat_offset
      }
      else {
        this.lat_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimalPlannerTrigger
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [v_target]
    bufferOffset = _arraySerializer.float32(obj.v_target, buffer, bufferOffset, null);
    // Serialize message field [a_target]
    bufferOffset = _arraySerializer.float32(obj.a_target, buffer, bufferOffset, null);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [stop_flag]
    bufferOffset = _serializer.bool(obj.stop_flag, buffer, bufferOffset);
    // Serialize message field [v_limit]
    bufferOffset = _serializer.float32(obj.v_limit, buffer, bufferOffset);
    // Serialize message field [stop_distance]
    bufferOffset = _serializer.float32(obj.stop_distance, buffer, bufferOffset);
    // Serialize message field [which_lane]
    bufferOffset = _serializer.string(obj.which_lane, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [lc_request]
    bufferOffset = _serializer.string(obj.lc_request, buffer, bufferOffset);
    // Serialize message field [lc_status]
    bufferOffset = _serializer.string(obj.lc_status, buffer, bufferOffset);
    // Serialize message field [lane_borrow]
    bufferOffset = _serializer.bool(obj.lane_borrow, buffer, bufferOffset);
    // Serialize message field [lane_borrow_range]
    bufferOffset = _serializer.int32(obj.lane_borrow_range, buffer, bufferOffset);
    // Serialize message field [avd_info]
    // Serialize the length for message field [avd_info]
    bufferOffset = _serializer.uint32(obj.avd_info.length, buffer, bufferOffset);
    obj.avd_info.forEach((val) => {
      bufferOffset = AvdMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lat_offset]
    bufferOffset = _serializer.float32(obj.lat_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimalPlannerTrigger
    let len;
    let data = new OptimalPlannerTrigger(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_target]
    data.v_target = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [a_target]
    data.a_target = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_flag]
    data.stop_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [v_limit]
    data.v_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stop_distance]
    data.stop_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [which_lane]
    data.which_lane = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lc_request]
    data.lc_request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lc_status]
    data.lc_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lane_borrow]
    data.lane_borrow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_borrow_range]
    data.lane_borrow_range = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [avd_info]
    // Deserialize array length for message field [avd_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avd_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avd_info[i] = AvdMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lat_offset]
    data.lat_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.v_target.length;
    length += 4 * object.a_target.length;
    length += _getByteLength(object.which_lane);
    length += _getByteLength(object.lc_request);
    length += _getByteLength(object.lc_status);
    object.avd_info.forEach((val) => {
      length += AvdMsg.getMessageSize(val);
    });
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/OptimalPlannerTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '453c558757e7f726490a97a21a439248';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32[] v_target
    float32[] a_target
    bool enable
    bool stop_flag
    float32 v_limit
    float32 stop_distance
    string which_lane
    int32 track_id
    string lc_request
    string lc_status
    bool lane_borrow
    int32 lane_borrow_range
    momenta_msgs/AvdMsg[] avd_info
    float32 lat_offset
    
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
    const resolved = new OptimalPlannerTrigger(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.v_target !== undefined) {
      resolved.v_target = msg.v_target;
    }
    else {
      resolved.v_target = []
    }

    if (msg.a_target !== undefined) {
      resolved.a_target = msg.a_target;
    }
    else {
      resolved.a_target = []
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.stop_flag !== undefined) {
      resolved.stop_flag = msg.stop_flag;
    }
    else {
      resolved.stop_flag = false
    }

    if (msg.v_limit !== undefined) {
      resolved.v_limit = msg.v_limit;
    }
    else {
      resolved.v_limit = 0.0
    }

    if (msg.stop_distance !== undefined) {
      resolved.stop_distance = msg.stop_distance;
    }
    else {
      resolved.stop_distance = 0.0
    }

    if (msg.which_lane !== undefined) {
      resolved.which_lane = msg.which_lane;
    }
    else {
      resolved.which_lane = ''
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.lc_request !== undefined) {
      resolved.lc_request = msg.lc_request;
    }
    else {
      resolved.lc_request = ''
    }

    if (msg.lc_status !== undefined) {
      resolved.lc_status = msg.lc_status;
    }
    else {
      resolved.lc_status = ''
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

    if (msg.avd_info !== undefined) {
      resolved.avd_info = new Array(msg.avd_info.length);
      for (let i = 0; i < resolved.avd_info.length; ++i) {
        resolved.avd_info[i] = AvdMsg.Resolve(msg.avd_info[i]);
      }
    }
    else {
      resolved.avd_info = []
    }

    if (msg.lat_offset !== undefined) {
      resolved.lat_offset = msg.lat_offset;
    }
    else {
      resolved.lat_offset = 0.0
    }

    return resolved;
    }
};

module.exports = OptimalPlannerTrigger;

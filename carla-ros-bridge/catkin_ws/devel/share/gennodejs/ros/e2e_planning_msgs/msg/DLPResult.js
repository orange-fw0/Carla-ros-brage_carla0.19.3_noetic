// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DLPResultMeta = require('./DLPResultMeta.js');
let DLPCruiseData = require('./DLPCruiseData.js');
let DLPLaneChangeData = require('./DLPLaneChangeData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DLPResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.dlp_cruise_data = null;
      this.dlp_lane_change_data = null;
      this.reserved_info = null;
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
        this.meta = new DLPResultMeta();
      }
      if (initObj.hasOwnProperty('dlp_cruise_data')) {
        this.dlp_cruise_data = initObj.dlp_cruise_data
      }
      else {
        this.dlp_cruise_data = new DLPCruiseData();
      }
      if (initObj.hasOwnProperty('dlp_lane_change_data')) {
        this.dlp_lane_change_data = initObj.dlp_lane_change_data
      }
      else {
        this.dlp_lane_change_data = new DLPLaneChangeData();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DLPResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = DLPResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [dlp_cruise_data]
    bufferOffset = DLPCruiseData.serialize(obj.dlp_cruise_data, buffer, bufferOffset);
    // Serialize message field [dlp_lane_change_data]
    bufferOffset = DLPLaneChangeData.serialize(obj.dlp_lane_change_data, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPResult
    let len;
    let data = new DLPResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = DLPResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [dlp_cruise_data]
    data.dlp_cruise_data = DLPCruiseData.deserialize(buffer, bufferOffset);
    // Deserialize message field [dlp_lane_change_data]
    data.dlp_lane_change_data = DLPLaneChangeData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += DLPCruiseData.getMessageSize(object.dlp_cruise_data);
    length += DLPLaneChangeData.getMessageSize(object.dlp_lane_change_data);
    length += _getByteLength(object.reserved_info);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2086b723c652ff11338f4b79fe989ce4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    e2e_planning_msgs/DLPResultMeta meta
    e2e_planning_msgs/DLPCruiseData dlp_cruise_data
    e2e_planning_msgs/DLPLaneChangeData dlp_lane_change_data
    string reserved_info
    
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
    MSG: e2e_planning_msgs/DLPResultMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPCruiseData
    e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories
    e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories
    string reserved_info
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectory
    e2e_planning_msgs/DLPTrajectoryPoint[] points
    e2e_planning_msgs/DLPTrajectoryTypeEnum type
    uint8 anchor_type
    uint64 anchor_id
    perception_interface_msgs/Point3d goal_point
    uint8 multi_modality_id
    uint64 object_id
    uint64 timestamp_us
    float64 score
    string reserved_info
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectoryPoint
    perception_interface_msgs/Point3d position
    perception_interface_msgs/Vector3d velocity
    perception_interface_msgs/Vector3d acceleration
    perception_interface_msgs/Vector3d jerk
    float64 heading_angle
    float64 score
    uint64 timestamp_us
    bool valid
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum
    uint8 DLP_TRAJECTORY_CRUISE = 0
    uint8 DLP_TRAJECTORY_LANE_CHANGE = 1
    uint8 DLP_TRAJECTORY_REF_PATH = 2
    uint8 DLP_TRAJECTORY_PREDICTION = 3
    uint8 value
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPTrajectories
    e2e_planning_msgs/DLPTrajectory[] dlp_trajectories
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPLaneChangeData
    e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos
    e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions
    e2e_planning_msgs/DLPTrajectory[] dlp_trajectories
    e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories
    string reserved_info
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPLaneInfo
    int32 request_type
    int32 lane_id
    float64 score
    string source
    
    ================================================================================
    MSG: e2e_planning_msgs/DLPLaneChangeDecision
    int32 request_type
    int32 direction
    int32 target_lane_id
    float64 score
    string source
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = DLPResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new DLPResultMeta()
    }

    if (msg.dlp_cruise_data !== undefined) {
      resolved.dlp_cruise_data = DLPCruiseData.Resolve(msg.dlp_cruise_data)
    }
    else {
      resolved.dlp_cruise_data = new DLPCruiseData()
    }

    if (msg.dlp_lane_change_data !== undefined) {
      resolved.dlp_lane_change_data = DLPLaneChangeData.Resolve(msg.dlp_lane_change_data)
    }
    else {
      resolved.dlp_lane_change_data = new DLPLaneChangeData()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = DLPResult;

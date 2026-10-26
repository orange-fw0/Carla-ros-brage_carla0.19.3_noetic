// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DLPLaneInfo = require('./DLPLaneInfo.js');
let DLPLaneChangeDecision = require('./DLPLaneChangeDecision.js');
let DLPTrajectory = require('./DLPTrajectory.js');
let DLPTrajectories = require('./DLPTrajectories.js');

//-----------------------------------------------------------

class DLPLaneChangeData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multi_source_dlp_lane_infos = null;
      this.dlp_lane_change_decisions = null;
      this.dlp_trajectories = null;
      this.dlp_agent_prediction_trajectories = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('multi_source_dlp_lane_infos')) {
        this.multi_source_dlp_lane_infos = initObj.multi_source_dlp_lane_infos
      }
      else {
        this.multi_source_dlp_lane_infos = [];
      }
      if (initObj.hasOwnProperty('dlp_lane_change_decisions')) {
        this.dlp_lane_change_decisions = initObj.dlp_lane_change_decisions
      }
      else {
        this.dlp_lane_change_decisions = [];
      }
      if (initObj.hasOwnProperty('dlp_trajectories')) {
        this.dlp_trajectories = initObj.dlp_trajectories
      }
      else {
        this.dlp_trajectories = [];
      }
      if (initObj.hasOwnProperty('dlp_agent_prediction_trajectories')) {
        this.dlp_agent_prediction_trajectories = initObj.dlp_agent_prediction_trajectories
      }
      else {
        this.dlp_agent_prediction_trajectories = new DLPTrajectories();
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
    // Serializes a message object of type DLPLaneChangeData
    // Serialize message field [multi_source_dlp_lane_infos]
    // Serialize the length for message field [multi_source_dlp_lane_infos]
    bufferOffset = _serializer.uint32(obj.multi_source_dlp_lane_infos.length, buffer, bufferOffset);
    obj.multi_source_dlp_lane_infos.forEach((val) => {
      bufferOffset = DLPLaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dlp_lane_change_decisions]
    // Serialize the length for message field [dlp_lane_change_decisions]
    bufferOffset = _serializer.uint32(obj.dlp_lane_change_decisions.length, buffer, bufferOffset);
    obj.dlp_lane_change_decisions.forEach((val) => {
      bufferOffset = DLPLaneChangeDecision.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dlp_trajectories]
    // Serialize the length for message field [dlp_trajectories]
    bufferOffset = _serializer.uint32(obj.dlp_trajectories.length, buffer, bufferOffset);
    obj.dlp_trajectories.forEach((val) => {
      bufferOffset = DLPTrajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dlp_agent_prediction_trajectories]
    bufferOffset = DLPTrajectories.serialize(obj.dlp_agent_prediction_trajectories, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPLaneChangeData
    let len;
    let data = new DLPLaneChangeData(null);
    // Deserialize message field [multi_source_dlp_lane_infos]
    // Deserialize array length for message field [multi_source_dlp_lane_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.multi_source_dlp_lane_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.multi_source_dlp_lane_infos[i] = DLPLaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dlp_lane_change_decisions]
    // Deserialize array length for message field [dlp_lane_change_decisions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dlp_lane_change_decisions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dlp_lane_change_decisions[i] = DLPLaneChangeDecision.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dlp_trajectories]
    // Deserialize array length for message field [dlp_trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dlp_trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dlp_trajectories[i] = DLPTrajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dlp_agent_prediction_trajectories]
    data.dlp_agent_prediction_trajectories = DLPTrajectories.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.multi_source_dlp_lane_infos.forEach((val) => {
      length += DLPLaneInfo.getMessageSize(val);
    });
    object.dlp_lane_change_decisions.forEach((val) => {
      length += DLPLaneChangeDecision.getMessageSize(val);
    });
    object.dlp_trajectories.forEach((val) => {
      length += DLPTrajectory.getMessageSize(val);
    });
    length += DLPTrajectories.getMessageSize(object.dlp_agent_prediction_trajectories);
    length += _getByteLength(object.reserved_info);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPLaneChangeData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '227b694b2f47efd57e9b91c46edd3153';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPLaneChangeData(null);
    if (msg.multi_source_dlp_lane_infos !== undefined) {
      resolved.multi_source_dlp_lane_infos = new Array(msg.multi_source_dlp_lane_infos.length);
      for (let i = 0; i < resolved.multi_source_dlp_lane_infos.length; ++i) {
        resolved.multi_source_dlp_lane_infos[i] = DLPLaneInfo.Resolve(msg.multi_source_dlp_lane_infos[i]);
      }
    }
    else {
      resolved.multi_source_dlp_lane_infos = []
    }

    if (msg.dlp_lane_change_decisions !== undefined) {
      resolved.dlp_lane_change_decisions = new Array(msg.dlp_lane_change_decisions.length);
      for (let i = 0; i < resolved.dlp_lane_change_decisions.length; ++i) {
        resolved.dlp_lane_change_decisions[i] = DLPLaneChangeDecision.Resolve(msg.dlp_lane_change_decisions[i]);
      }
    }
    else {
      resolved.dlp_lane_change_decisions = []
    }

    if (msg.dlp_trajectories !== undefined) {
      resolved.dlp_trajectories = new Array(msg.dlp_trajectories.length);
      for (let i = 0; i < resolved.dlp_trajectories.length; ++i) {
        resolved.dlp_trajectories[i] = DLPTrajectory.Resolve(msg.dlp_trajectories[i]);
      }
    }
    else {
      resolved.dlp_trajectories = []
    }

    if (msg.dlp_agent_prediction_trajectories !== undefined) {
      resolved.dlp_agent_prediction_trajectories = DLPTrajectories.Resolve(msg.dlp_agent_prediction_trajectories)
    }
    else {
      resolved.dlp_agent_prediction_trajectories = new DLPTrajectories()
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

module.exports = DLPLaneChangeData;

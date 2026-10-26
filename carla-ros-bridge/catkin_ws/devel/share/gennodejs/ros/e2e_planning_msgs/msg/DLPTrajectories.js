// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DLPTrajectory = require('./DLPTrajectory.js');

//-----------------------------------------------------------

class DLPTrajectories {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dlp_trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('dlp_trajectories')) {
        this.dlp_trajectories = initObj.dlp_trajectories
      }
      else {
        this.dlp_trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DLPTrajectories
    // Serialize message field [dlp_trajectories]
    // Serialize the length for message field [dlp_trajectories]
    bufferOffset = _serializer.uint32(obj.dlp_trajectories.length, buffer, bufferOffset);
    obj.dlp_trajectories.forEach((val) => {
      bufferOffset = DLPTrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPTrajectories
    let len;
    let data = new DLPTrajectories(null);
    // Deserialize message field [dlp_trajectories]
    // Deserialize array length for message field [dlp_trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dlp_trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dlp_trajectories[i] = DLPTrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.dlp_trajectories.forEach((val) => {
      length += DLPTrajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPTrajectories';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b289bd74365be4c9eb63c50ee595629d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    e2e_planning_msgs/DLPTrajectory[] dlp_trajectories
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPTrajectories(null);
    if (msg.dlp_trajectories !== undefined) {
      resolved.dlp_trajectories = new Array(msg.dlp_trajectories.length);
      for (let i = 0; i < resolved.dlp_trajectories.length; ++i) {
        resolved.dlp_trajectories[i] = DLPTrajectory.Resolve(msg.dlp_trajectories[i]);
      }
    }
    else {
      resolved.dlp_trajectories = []
    }

    return resolved;
    }
};

module.exports = DLPTrajectories;

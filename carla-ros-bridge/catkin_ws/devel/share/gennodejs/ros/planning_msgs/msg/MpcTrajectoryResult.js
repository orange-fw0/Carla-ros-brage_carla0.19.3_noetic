// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MpcTrajectory = require('./MpcTrajectory.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MpcTrajectoryResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mpc_trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mpc_trajectory')) {
        this.mpc_trajectory = initObj.mpc_trajectory
      }
      else {
        this.mpc_trajectory = new MpcTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MpcTrajectoryResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mpc_trajectory]
    bufferOffset = MpcTrajectory.serialize(obj.mpc_trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MpcTrajectoryResult
    let len;
    let data = new MpcTrajectoryResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mpc_trajectory]
    data.mpc_trajectory = MpcTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MpcTrajectory.getMessageSize(object.mpc_trajectory);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/MpcTrajectoryResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0c06aa87a196f7776351a8a3c091dc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    planning_msgs/MpcTrajectory mpc_trajectory
    
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
    MSG: planning_msgs/MpcTrajectory
    uint8 PATH_POINTS = 1
    uint8 available
    planning_msgs/MpcTrajectoryPoint[] path_points
    
    ================================================================================
    MSG: planning_msgs/MpcTrajectoryPoint
    planning_msgs/Point2d position_enu
    float64 heading_yaw
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MpcTrajectoryResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mpc_trajectory !== undefined) {
      resolved.mpc_trajectory = MpcTrajectory.Resolve(msg.mpc_trajectory)
    }
    else {
      resolved.mpc_trajectory = new MpcTrajectory()
    }

    return resolved;
    }
};

module.exports = MpcTrajectoryResult;

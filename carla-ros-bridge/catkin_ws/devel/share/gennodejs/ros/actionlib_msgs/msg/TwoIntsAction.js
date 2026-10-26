// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TwoIntsActionGoal = require('./TwoIntsActionGoal.js');
let TwoIntsActionResult = require('./TwoIntsActionResult.js');
let TwoIntsActionFeedback = require('./TwoIntsActionFeedback.js');

//-----------------------------------------------------------

class TwoIntsAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new TwoIntsActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new TwoIntsActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new TwoIntsActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TwoIntsAction
    // Serialize message field [action_goal]
    bufferOffset = TwoIntsActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = TwoIntsActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = TwoIntsActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TwoIntsAction
    let len;
    let data = new TwoIntsAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = TwoIntsActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = TwoIntsActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = TwoIntsActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TwoIntsActionGoal.getMessageSize(object.action_goal);
    length += TwoIntsActionResult.getMessageSize(object.action_result);
    length += TwoIntsActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TwoIntsAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaa5d16a91918b482d0e2ca543008893';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    actionlib_msgs/TwoIntsActionGoal action_goal
    actionlib_msgs/TwoIntsActionResult action_result
    actionlib_msgs/TwoIntsActionFeedback action_feedback
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsActionGoal
    std_msgs/Header header
    actionlib_msgs/GoalID goal_id
    actionlib_msgs/TwoIntsGoal goal
    
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
    MSG: actionlib_msgs/GoalID
    uint64 stamp
    string id
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsGoal
    int64 a
    int64 b
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsActionResult
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TwoIntsResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    uint8 PENDING = 0
    uint8 ACTIVE = 1
    uint8 PREEMPTED = 2
    uint8 SUCCEEDED = 3
    uint8 ABORTED = 4
    uint8 REJECTED = 5
    uint8 PREEMPTING = 6
    uint8 RECALLING = 7
    uint8 RECALLED = 8
    uint8 LOST = 9
    actionlib_msgs/GoalID goal_id
    uint8 status
    string text
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsResult
    int64 sum
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsActionFeedback
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TwoIntsFeedback feedback
    
    ================================================================================
    MSG: actionlib_msgs/TwoIntsFeedback
    bool mfrmsg_empty_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TwoIntsAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = TwoIntsActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new TwoIntsActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = TwoIntsActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new TwoIntsActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = TwoIntsActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new TwoIntsActionFeedback()
    }

    return resolved;
    }
};

module.exports = TwoIntsAction;

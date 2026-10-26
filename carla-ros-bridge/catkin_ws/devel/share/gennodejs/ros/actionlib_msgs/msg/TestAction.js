// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TestActionGoal = require('./TestActionGoal.js');
let TestActionResult = require('./TestActionResult.js');
let TestActionFeedback = require('./TestActionFeedback.js');

//-----------------------------------------------------------

class TestAction {
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
        this.action_goal = new TestActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new TestActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new TestActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestAction
    // Serialize message field [action_goal]
    bufferOffset = TestActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = TestActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = TestActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestAction
    let len;
    let data = new TestAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = TestActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = TestActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = TestActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TestActionGoal.getMessageSize(object.action_goal);
    length += TestActionResult.getMessageSize(object.action_result);
    length += TestActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TestAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f20287af6725e0ce03568fd5a5c5314b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    actionlib_msgs/TestActionGoal action_goal
    actionlib_msgs/TestActionResult action_result
    actionlib_msgs/TestActionFeedback action_feedback
    
    ================================================================================
    MSG: actionlib_msgs/TestActionGoal
    std_msgs/Header header
    actionlib_msgs/GoalID goal_id
    actionlib_msgs/TestGoal goal
    
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
    MSG: actionlib_msgs/TestGoal
    int32 goal
    
    ================================================================================
    MSG: actionlib_msgs/TestActionResult
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TestResult result
    
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
    MSG: actionlib_msgs/TestResult
    int32 result
    
    ================================================================================
    MSG: actionlib_msgs/TestActionFeedback
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TestFeedback feedback
    
    ================================================================================
    MSG: actionlib_msgs/TestFeedback
    int32 feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = TestActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new TestActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = TestActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new TestActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = TestActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new TestActionFeedback()
    }

    return resolved;
    }
};

module.exports = TestAction;

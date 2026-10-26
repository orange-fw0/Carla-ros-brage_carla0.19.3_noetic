// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TestRequestActionGoal = require('./TestRequestActionGoal.js');
let TestRequestActionResult = require('./TestRequestActionResult.js');
let TestRequestActionFeedback = require('./TestRequestActionFeedback.js');

//-----------------------------------------------------------

class TestRequestAction {
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
        this.action_goal = new TestRequestActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new TestRequestActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new TestRequestActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequestAction
    // Serialize message field [action_goal]
    bufferOffset = TestRequestActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = TestRequestActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = TestRequestActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestRequestAction
    let len;
    let data = new TestRequestAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = TestRequestActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = TestRequestActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = TestRequestActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TestRequestActionGoal.getMessageSize(object.action_goal);
    length += TestRequestActionResult.getMessageSize(object.action_result);
    length += TestRequestActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TestRequestAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe2613e6ec6c40033e10b4415bc25619';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    actionlib_msgs/TestRequestActionGoal action_goal
    actionlib_msgs/TestRequestActionResult action_result
    actionlib_msgs/TestRequestActionFeedback action_feedback
    
    ================================================================================
    MSG: actionlib_msgs/TestRequestActionGoal
    std_msgs/Header header
    actionlib_msgs/GoalID goal_id
    actionlib_msgs/TestRequestGoal goal
    
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
    MSG: actionlib_msgs/TestRequestGoal
    int32 TERMINATE_SUCCESS = 0
    int32 TERMINATE_ABORTED = 1
    int32 TERMINATE_REJECTED = 2
    int32 TERMINATE_LOSE = 3
    int32 TERMINATE_DROP = 4
    int32 TERMINATE_EXCEPTION = 5
    int32 terminate_status
    bool ignore_cancel
    string result_text
    int32 the_result
    bool is_simple_client
    int64 delay_accept
    int64 delay_terminate
    int64 pause_status
    
    ================================================================================
    MSG: actionlib_msgs/TestRequestActionResult
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TestRequestResult result
    
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
    MSG: actionlib_msgs/TestRequestResult
    int32 the_result
    bool is_simple_server
    
    ================================================================================
    MSG: actionlib_msgs/TestRequestActionFeedback
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TestRequestFeedback feedback
    
    ================================================================================
    MSG: actionlib_msgs/TestRequestFeedback
    bool mfrmsg_empty_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestRequestAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = TestRequestActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new TestRequestActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = TestRequestActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new TestRequestActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = TestRequestActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new TestRequestActionFeedback()
    }

    return resolved;
    }
};

module.exports = TestRequestAction;

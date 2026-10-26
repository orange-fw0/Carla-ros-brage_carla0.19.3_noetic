// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GoalID = require('./GoalID.js');
let TestRequestGoal = require('./TestRequestGoal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TestRequestActionGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_id = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new GoalID();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new TestRequestGoal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequestActionGoal
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = GoalID.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = TestRequestGoal.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestRequestActionGoal
    let len;
    let data = new TestRequestActionGoal(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = GoalID.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = TestRequestGoal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += GoalID.getMessageSize(object.goal_id);
    length += TestRequestGoal.getMessageSize(object.goal);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TestRequestActionGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7802bfad4bf20954a2f42bdd1fef07a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestRequestActionGoal(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = GoalID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new GoalID()
    }

    if (msg.goal !== undefined) {
      resolved.goal = TestRequestGoal.Resolve(msg.goal)
    }
    else {
      resolved.goal = new TestRequestGoal()
    }

    return resolved;
    }
};

module.exports = TestRequestActionGoal;

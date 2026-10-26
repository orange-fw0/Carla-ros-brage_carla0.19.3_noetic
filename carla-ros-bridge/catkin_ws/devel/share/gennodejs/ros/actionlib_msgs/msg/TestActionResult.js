// Auto-generated. Do not edit!

// (in-package actionlib_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GoalStatus = require('./GoalStatus.js');
let TestResult = require('./TestResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TestActionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new GoalStatus();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new TestResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestActionResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = GoalStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = TestResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestActionResult
    let len;
    let data = new TestActionResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = GoalStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = TestResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += GoalStatus.getMessageSize(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/TestActionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2359432d4ad7f1e7066c97a6302730b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    actionlib_msgs/GoalStatus status
    actionlib_msgs/TestResult result
    
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
    MSG: actionlib_msgs/GoalID
    uint64 stamp
    string id
    
    ================================================================================
    MSG: actionlib_msgs/TestResult
    int32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestActionResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = GoalStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new GoalStatus()
    }

    if (msg.result !== undefined) {
      resolved.result = TestResult.Resolve(msg.result)
    }
    else {
      resolved.result = new TestResult()
    }

    return resolved;
    }
};

module.exports = TestActionResult;

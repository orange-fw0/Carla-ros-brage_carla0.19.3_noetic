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

//-----------------------------------------------------------

class GoalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_id = null;
      this.status = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new GoalID();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalStatus
    // Serialize message field [goal_id]
    bufferOffset = GoalID.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalStatus
    let len;
    let data = new GoalStatus(null);
    // Deserialize message field [goal_id]
    data.goal_id = GoalID.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GoalID.getMessageSize(object.goal_id);
    length += _getByteLength(object.text);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actionlib_msgs/GoalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d3c005b84876912c1e35e034e8d68c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalStatus(null);
    if (msg.goal_id !== undefined) {
      resolved.goal_id = GoalID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new GoalID()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

// Constants for message
GoalStatus.Constants = {
  PENDING: 0,
  ACTIVE: 1,
  PREEMPTED: 2,
  SUCCEEDED: 3,
  ABORTED: 4,
  REJECTED: 5,
  PREEMPTING: 6,
  RECALLING: 7,
  RECALLED: 8,
  LOST: 9,
}

module.exports = GoalStatus;

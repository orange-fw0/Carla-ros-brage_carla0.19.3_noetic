// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RequestEnum = require('./RequestEnum.js');
let actionlib_msgs = _finder('actionlib_msgs');

//-----------------------------------------------------------

class TaskInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.request = null;
      this.goal_id = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new RequestEnum();
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new actionlib_msgs.msg.GoalID();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = RequestEnum.serialize(obj.request, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = actionlib_msgs.msg.GoalID.serialize(obj.goal_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskInfo
    let len;
    let data = new TaskInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = RequestEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = actionlib_msgs.msg.GoalID.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += actionlib_msgs.msg.GoalID.getMessageSize(object.goal_id);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TaskInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e972068d88fd139e7fc177083ab9353';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 REQUEST = 1
    uint8 GOAL_ID = 2
    uint8 available
    planning_msgs/RequestEnum request
    actionlib_msgs/GoalID goal_id
    
    ================================================================================
    MSG: planning_msgs/RequestEnum
    uint8 START_TASK = 1
    uint8 ABORT_TASK = 2
    uint8 value
    
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
    const resolved = new TaskInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.request !== undefined) {
      resolved.request = RequestEnum.Resolve(msg.request)
    }
    else {
      resolved.request = new RequestEnum()
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = actionlib_msgs.msg.GoalID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new actionlib_msgs.msg.GoalID()
    }

    return resolved;
    }
};

// Constants for message
TaskInfo.Constants = {
  REQUEST: 1,
  GOAL_ID: 2,
}

module.exports = TaskInfo;

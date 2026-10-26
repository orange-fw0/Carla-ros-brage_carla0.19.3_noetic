// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlanAlgorithmStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene = null;
      this.action = null;
      this.action_status = null;
      this.function = null;
      this.function_status = null;
      this.Reason = null;
      this.source = null;
    }
    else {
      if (initObj.hasOwnProperty('scene')) {
        this.scene = initObj.scene
      }
      else {
        this.scene = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('action_status')) {
        this.action_status = initObj.action_status
      }
      else {
        this.action_status = 0;
      }
      if (initObj.hasOwnProperty('function')) {
        this.function = initObj.function
      }
      else {
        this.function = 0;
      }
      if (initObj.hasOwnProperty('function_status')) {
        this.function_status = initObj.function_status
      }
      else {
        this.function_status = 0;
      }
      if (initObj.hasOwnProperty('Reason')) {
        this.Reason = initObj.Reason
      }
      else {
        this.Reason = 0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanAlgorithmStatus
    // Serialize message field [scene]
    bufferOffset = _serializer.uint64(obj.scene, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint64(obj.action, buffer, bufferOffset);
    // Serialize message field [action_status]
    bufferOffset = _serializer.uint64(obj.action_status, buffer, bufferOffset);
    // Serialize message field [function]
    bufferOffset = _serializer.uint64(obj.function, buffer, bufferOffset);
    // Serialize message field [function_status]
    bufferOffset = _serializer.uint64(obj.function_status, buffer, bufferOffset);
    // Serialize message field [Reason]
    bufferOffset = _serializer.uint64(obj.Reason, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.uint64(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanAlgorithmStatus
    let len;
    let data = new PlanAlgorithmStatus(null);
    // Deserialize message field [scene]
    data.scene = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [action_status]
    data.action_status = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [function]
    data.function = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [function_status]
    data.function_status = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [Reason]
    data.Reason = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PlanAlgorithmStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28598c4ddd85a1dced9a3bcddb6d7469';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 NORMAL_ROAD = 1
    uint64 INTERSECT = 2
    uint64 PARKING_SVP = 4
    uint64 PARKING_LVP = 8
    uint64 PARKING_APA = 16
    uint64 REMOTE_CONTROL = 32
    uint64 LANE_CHANGE_LEFT = 1
    uint64 LANE_CHANGE_RIGHT = 2
    uint64 LANE_BORROW_LEFT = 4
    uint64 LANE_BORROW_RIGHT = 8
    uint64 INTERSECT_GO_STRAIGHT = 16
    uint64 INTERSECT_TURN_LEFT = 32
    uint64 INTERSECT_TURN_RIGHT = 64
    uint64 INTERSECT_U_TURN = 128
    uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256
    uint64 LANE_KEEP = 512
    uint64 PULL_OVER = 1024
    uint64 OPEN_SPACE_PASS = 2048
    uint64 PARKING = 4096
    uint64 SEARCH = 1
    uint64 CRUISE = 2
    uint64 APA = 4
    uint64 APOA = 8
    uint64 WAIT = 16
    uint64 LANE_CHANGE_WAITING = 1
    uint64 LANE_CHANGEING = 2
    uint64 LANE_CHANGE_BACK = 4
    uint64 LANE_BORROWING = 8
    uint64 LANE_BORROW_BACK = 16
    uint64 LANE_BORROW_RETURN = 32
    uint64 LANE_BORROW_SUSPEND = 64
    uint64 OPEN_SPACE_STANDBY = 128
    uint64 OPEN_SPACE_PLANNING = 256
    uint64 OPEN_SPACE_RUNNING = 512
    uint64 OPEN_SPACE_FALLBACK = 1024
    uint64 LANE_KEEPING = 2048
    uint64 SIDE_PASS = 4096
    uint64 RUNNING = 1
    uint64 SUCCEEDED = 2
    uint64 FAILED = 4
    uint64 PAUSED = 8
    uint64 NONE = 1
    uint64 NO_FRONT_VIEW = 2
    uint64 NO_SIDE_VIEW = 4
    uint64 SIDE_VIEW_BACK = 8
    uint64 FRONT_VIEW_BACK = 16
    uint64 BACK_CNT_BELOW_THRESHOLD = 32
    uint64 EXCEED_MOVE_THRESHOLD = 64
    uint64 NOT_OPTIMAL = 128
    uint64 INVALID_GAP_SELECTION = 256
    uint64 INVALID_REQUEST = 512
    uint64 CANCELED = 1024
    uint64 FRONT_VIEW_FORBID = 2048
    uint64 SIDE_VIEW_FORBID = 4096
    uint64 EXCEED_GAP_REMOTE_CAR = 1024
    uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048
    uint64 NO_VALID_GAP = 4096
    uint64 TARGET_LANE_INVALID = 8192
    uint64 MAP_REQUEST = 2
    uint64 ALC_REQUEST = 4
    uint64 ALC_BY_MERGE_REQUEST = 8
    uint64 ALC_BY_YPOINT_REQUEST = 16
    uint64 INT_REQUEST = 32
    uint64 LB_REQUEST = 64
    uint64 scene
    uint64 action
    uint64 action_status
    uint64 function
    uint64 function_status
    uint64 Reason
    uint64 source
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanAlgorithmStatus(null);
    if (msg.scene !== undefined) {
      resolved.scene = msg.scene;
    }
    else {
      resolved.scene = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.action_status !== undefined) {
      resolved.action_status = msg.action_status;
    }
    else {
      resolved.action_status = 0
    }

    if (msg.function !== undefined) {
      resolved.function = msg.function;
    }
    else {
      resolved.function = 0
    }

    if (msg.function_status !== undefined) {
      resolved.function_status = msg.function_status;
    }
    else {
      resolved.function_status = 0
    }

    if (msg.Reason !== undefined) {
      resolved.Reason = msg.Reason;
    }
    else {
      resolved.Reason = 0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    return resolved;
    }
};

// Constants for message
PlanAlgorithmStatus.Constants = {
  NORMAL_ROAD: 1,
  INTERSECT: 2,
  PARKING_SVP: 4,
  PARKING_LVP: 8,
  PARKING_APA: 16,
  REMOTE_CONTROL: 32,
  LANE_CHANGE_LEFT: 1,
  LANE_CHANGE_RIGHT: 2,
  LANE_BORROW_LEFT: 4,
  LANE_BORROW_RIGHT: 8,
  INTERSECT_GO_STRAIGHT: 16,
  INTERSECT_TURN_LEFT: 32,
  INTERSECT_TURN_RIGHT: 64,
  INTERSECT_U_TURN: 128,
  LANE_BORROW_IN_NON_MOTORIZED_LANE: 256,
  LANE_KEEP: 512,
  PULL_OVER: 1024,
  OPEN_SPACE_PASS: 2048,
  PARKING: 4096,
  SEARCH: 1,
  CRUISE: 2,
  APA: 4,
  APOA: 8,
  WAIT: 16,
  LANE_CHANGE_WAITING: 1,
  LANE_CHANGEING: 2,
  LANE_CHANGE_BACK: 4,
  LANE_BORROWING: 8,
  LANE_BORROW_BACK: 16,
  LANE_BORROW_RETURN: 32,
  LANE_BORROW_SUSPEND: 64,
  OPEN_SPACE_STANDBY: 128,
  OPEN_SPACE_PLANNING: 256,
  OPEN_SPACE_RUNNING: 512,
  OPEN_SPACE_FALLBACK: 1024,
  LANE_KEEPING: 2048,
  SIDE_PASS: 4096,
  RUNNING: 1,
  SUCCEEDED: 2,
  FAILED: 4,
  PAUSED: 8,
  NONE: 1,
  NO_FRONT_VIEW: 2,
  NO_SIDE_VIEW: 4,
  SIDE_VIEW_BACK: 8,
  FRONT_VIEW_BACK: 16,
  BACK_CNT_BELOW_THRESHOLD: 32,
  EXCEED_MOVE_THRESHOLD: 64,
  NOT_OPTIMAL: 128,
  INVALID_GAP_SELECTION: 256,
  INVALID_REQUEST: 512,
  CANCELED: 1024,
  FRONT_VIEW_FORBID: 2048,
  SIDE_VIEW_FORBID: 4096,
  EXCEED_GAP_REMOTE_CAR: 1024,
  NOT_EXCEED_GAP_PROXIMAL_CAR: 2048,
  NO_VALID_GAP: 4096,
  TARGET_LANE_INVALID: 8192,
  MAP_REQUEST: 2,
  ALC_REQUEST: 4,
  ALC_BY_MERGE_REQUEST: 8,
  ALC_BY_YPOINT_REQUEST: 16,
  INT_REQUEST: 32,
  LB_REQUEST: 64,
}

module.exports = PlanAlgorithmStatus;

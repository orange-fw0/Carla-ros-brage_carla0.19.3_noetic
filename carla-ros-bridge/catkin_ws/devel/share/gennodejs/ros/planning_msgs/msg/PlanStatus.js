// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlanAlgorithmStatus = require('./PlanAlgorithmStatus.js');
let WarningStatus = require('./WarningStatus.js');
let SolverStatus = require('./SolverStatus.js');
let SteerModeEnum = require('./SteerModeEnum.js');

//-----------------------------------------------------------

class PlanStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.algorithm_status = null;
      this.warning_status = null;
      this.solver_status = null;
      this.steer_mode = null;
      this.hdmap_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('algorithm_status')) {
        this.algorithm_status = initObj.algorithm_status
      }
      else {
        this.algorithm_status = new PlanAlgorithmStatus();
      }
      if (initObj.hasOwnProperty('warning_status')) {
        this.warning_status = initObj.warning_status
      }
      else {
        this.warning_status = new WarningStatus();
      }
      if (initObj.hasOwnProperty('solver_status')) {
        this.solver_status = initObj.solver_status
      }
      else {
        this.solver_status = new SolverStatus();
      }
      if (initObj.hasOwnProperty('steer_mode')) {
        this.steer_mode = initObj.steer_mode
      }
      else {
        this.steer_mode = new SteerModeEnum();
      }
      if (initObj.hasOwnProperty('hdmap_valid')) {
        this.hdmap_valid = initObj.hdmap_valid
      }
      else {
        this.hdmap_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [algorithm_status]
    bufferOffset = PlanAlgorithmStatus.serialize(obj.algorithm_status, buffer, bufferOffset);
    // Serialize message field [warning_status]
    bufferOffset = WarningStatus.serialize(obj.warning_status, buffer, bufferOffset);
    // Serialize message field [solver_status]
    bufferOffset = SolverStatus.serialize(obj.solver_status, buffer, bufferOffset);
    // Serialize message field [steer_mode]
    bufferOffset = SteerModeEnum.serialize(obj.steer_mode, buffer, bufferOffset);
    // Serialize message field [hdmap_valid]
    bufferOffset = _serializer.bool(obj.hdmap_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanStatus
    let len;
    let data = new PlanStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [algorithm_status]
    data.algorithm_status = PlanAlgorithmStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [warning_status]
    data.warning_status = WarningStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [solver_status]
    data.solver_status = SolverStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer_mode]
    data.steer_mode = SteerModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [hdmap_valid]
    data.hdmap_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SolverStatus.getMessageSize(object.solver_status);
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PlanStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9039051ad1575036267000f9cb364b68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ALGORITHM_STATUS = 1
    uint8 WARNING_STATUS = 2
    uint8 SOLVER_STATUS = 4
    uint8 STEER_MODE = 8
    uint8 available
    planning_msgs/PlanAlgorithmStatus algorithm_status
    planning_msgs/WarningStatus warning_status
    planning_msgs/SolverStatus solver_status
    planning_msgs/SteerModeEnum steer_mode
    bool hdmap_valid
    
    ================================================================================
    MSG: planning_msgs/PlanAlgorithmStatus
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
    
    ================================================================================
    MSG: planning_msgs/WarningStatus
    uint64 NARROW_ROAD = 1
    uint64 OVERTAKE_CUTIN = 2
    uint64 OVERTAKE_WISDOM_DODGE = 4
    uint64 LANE_CHANGE_REMIND_LANE_END = 8
    uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16
    uint64 LANE_CHANGE_REMIND_ACCIDENT = 32
    uint64 DECEL_WARNING = 64
    uint64 PEDESTRIAN_WARNING = 128
    uint64 LANE_CHANGE_START = 256
    uint64 LANE_CHANGE_STOP = 512
    uint64 FROINT_COLLISION = 1024
    uint64 REAR_COLLISION = 2048
    uint64 LANE_DEPARTURE = 4096
    uint64 PARKING_LOT_UNAVALIABLE = 8192
    uint64 AVOID_IN_LANE = 16384
    uint64 warning_status
    
    ================================================================================
    MSG: planning_msgs/SolverStatus
    uint8[] lat_motion_status
    uint8[] lat_solver_status
    uint8[] lon_motion_status
    uint8[] lon_solver_status
    
    ================================================================================
    MSG: planning_msgs/SteerModeEnum
    uint8 NORMAL = 0
    uint8 TWIST = 1
    uint8 TRANSLATION = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.algorithm_status !== undefined) {
      resolved.algorithm_status = PlanAlgorithmStatus.Resolve(msg.algorithm_status)
    }
    else {
      resolved.algorithm_status = new PlanAlgorithmStatus()
    }

    if (msg.warning_status !== undefined) {
      resolved.warning_status = WarningStatus.Resolve(msg.warning_status)
    }
    else {
      resolved.warning_status = new WarningStatus()
    }

    if (msg.solver_status !== undefined) {
      resolved.solver_status = SolverStatus.Resolve(msg.solver_status)
    }
    else {
      resolved.solver_status = new SolverStatus()
    }

    if (msg.steer_mode !== undefined) {
      resolved.steer_mode = SteerModeEnum.Resolve(msg.steer_mode)
    }
    else {
      resolved.steer_mode = new SteerModeEnum()
    }

    if (msg.hdmap_valid !== undefined) {
      resolved.hdmap_valid = msg.hdmap_valid;
    }
    else {
      resolved.hdmap_valid = false
    }

    return resolved;
    }
};

// Constants for message
PlanStatus.Constants = {
  ALGORITHM_STATUS: 1,
  WARNING_STATUS: 2,
  SOLVER_STATUS: 4,
  STEER_MODE: 8,
}

module.exports = PlanStatus;

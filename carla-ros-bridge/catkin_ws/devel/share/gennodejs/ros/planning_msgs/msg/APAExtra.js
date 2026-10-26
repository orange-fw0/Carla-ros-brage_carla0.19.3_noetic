// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkInInfo = require('./ParkInInfo.js');
let ParkOutInfo = require('./ParkOutInfo.js');
let RpaStraightInfo = require('./RpaStraightInfo.js');
let ParkingSlotInfo = require('./ParkingSlotInfo.js');
let APATrajectoryInfo = require('./APATrajectoryInfo.js');
let APAControlCommand = require('./APAControlCommand.js');
let APADebugInfo = require('./APADebugInfo.js');

//-----------------------------------------------------------

class APAExtra {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.parkin_info = null;
      this.parkout_info = null;
      this.rpa_straight_info = null;
      this.slot_info = null;
      this.traj_info = null;
      this.control_cmd = null;
      this.debug_info = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parkin_info')) {
        this.parkin_info = initObj.parkin_info
      }
      else {
        this.parkin_info = new ParkInInfo();
      }
      if (initObj.hasOwnProperty('parkout_info')) {
        this.parkout_info = initObj.parkout_info
      }
      else {
        this.parkout_info = new ParkOutInfo();
      }
      if (initObj.hasOwnProperty('rpa_straight_info')) {
        this.rpa_straight_info = initObj.rpa_straight_info
      }
      else {
        this.rpa_straight_info = new RpaStraightInfo();
      }
      if (initObj.hasOwnProperty('slot_info')) {
        this.slot_info = initObj.slot_info
      }
      else {
        this.slot_info = new ParkingSlotInfo();
      }
      if (initObj.hasOwnProperty('traj_info')) {
        this.traj_info = initObj.traj_info
      }
      else {
        this.traj_info = new APATrajectoryInfo();
      }
      if (initObj.hasOwnProperty('control_cmd')) {
        this.control_cmd = initObj.control_cmd
      }
      else {
        this.control_cmd = new APAControlCommand();
      }
      if (initObj.hasOwnProperty('debug_info')) {
        this.debug_info = initObj.debug_info
      }
      else {
        this.debug_info = new APADebugInfo();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type APAExtra
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [parkin_info]
    bufferOffset = ParkInInfo.serialize(obj.parkin_info, buffer, bufferOffset);
    // Serialize message field [parkout_info]
    bufferOffset = ParkOutInfo.serialize(obj.parkout_info, buffer, bufferOffset);
    // Serialize message field [rpa_straight_info]
    bufferOffset = RpaStraightInfo.serialize(obj.rpa_straight_info, buffer, bufferOffset);
    // Serialize message field [slot_info]
    bufferOffset = ParkingSlotInfo.serialize(obj.slot_info, buffer, bufferOffset);
    // Serialize message field [traj_info]
    bufferOffset = APATrajectoryInfo.serialize(obj.traj_info, buffer, bufferOffset);
    // Serialize message field [control_cmd]
    bufferOffset = APAControlCommand.serialize(obj.control_cmd, buffer, bufferOffset);
    // Serialize message field [debug_info]
    bufferOffset = APADebugInfo.serialize(obj.debug_info, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type APAExtra
    let len;
    let data = new APAExtra(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [parkin_info]
    data.parkin_info = ParkInInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [parkout_info]
    data.parkout_info = ParkOutInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpa_straight_info]
    data.rpa_straight_info = RpaStraightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [slot_info]
    data.slot_info = ParkingSlotInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [traj_info]
    data.traj_info = APATrajectoryInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_cmd]
    data.control_cmd = APAControlCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [debug_info]
    data.debug_info = APADebugInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ParkInInfo.getMessageSize(object.parkin_info);
    length += ParkOutInfo.getMessageSize(object.parkout_info);
    length += RpaStraightInfo.getMessageSize(object.rpa_straight_info);
    length += ParkingSlotInfo.getMessageSize(object.slot_info);
    length += APATrajectoryInfo.getMessageSize(object.traj_info);
    length += APAControlCommand.getMessageSize(object.control_cmd);
    length += APADebugInfo.getMessageSize(object.debug_info);
    length += _getByteLength(object.reserved);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/APAExtra';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0246eeaa7e2645ef1434b68deda2929e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PARKIN_INFO = 1
    uint8 PARKOUT_INFO = 2
    uint8 RPA_STRAIGHT_INFO = 4
    uint8 SLOT_INFO = 8
    uint8 TRAJ_INFO = 16
    uint8 CONTROL_CMD = 32
    uint8 DEBUG_INFO = 64
    uint64 available
    planning_msgs/ParkInInfo parkin_info
    planning_msgs/ParkOutInfo parkout_info
    planning_msgs/RpaStraightInfo rpa_straight_info
    planning_msgs/ParkingSlotInfo slot_info
    planning_msgs/APATrajectoryInfo traj_info
    planning_msgs/APAControlCommand control_cmd
    planning_msgs/APADebugInfo debug_info
    string reserved
    
    ================================================================================
    MSG: planning_msgs/ParkInInfo
    uint32 parkin_direction
    planning_msgs/WlcStatus wlc_status
    string reserved
    
    ================================================================================
    MSG: planning_msgs/WlcStatus
    uint32 NO_WLC = 0
    uint32 APPROACHING = 1
    uint32 APPROACHED = 2
    uint32 value
    
    ================================================================================
    MSG: planning_msgs/ParkOutInfo
    uint32 available_direction
    uint32 recommend_direction
    planning_msgs/ParkOutDisableReason disable_reason
    bool reached_take_over_point
    string reserved
    
    ================================================================================
    MSG: planning_msgs/ParkOutDisableReason
    uint32 NONE = 0
    uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
    uint32 DISABLED_NON_PARALLEL = 2
    uint32 NOT_IN_PARKING_SLOT = 3
    uint32 PARKOUT_NOT_READY = 4
    uint32 SLOT_TOO_SMALL = 5
    uint32 value
    
    ================================================================================
    MSG: planning_msgs/RpaStraightInfo
    float32 forward_distance
    float32 backward_distance
    string reserved
    
    ================================================================================
    MSG: planning_msgs/ParkingSlotInfo
    geometry_msgs/Point[] optimized_corners
    planning_msgs/ParkingSlotType slot_type
    bool has_wheel_stopper
    float32 ego_slot_iou
    float32 front_wheel_to_stopper
    float32 front_wheel_to_opening
    float32 front_wheel_to_bottom
    float32 rear_wheel_to_stopper
    float32 rear_wheel_to_opening
    float32 rear_wheel_to_bottom
    string reserved
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: planning_msgs/ParkingSlotType
    uint8 UNKNOWN = 0
    uint8 PERPENDICULAR = 1
    uint8 PARALLEL = 2
    uint8 OBLIQUE = 3
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/APATrajectoryInfo
    planning_msgs/APATrajectoryExtendType extend_type
    bool at_last_segment
    float32 remain_safe_distance
    float32 first_remain_distance
    float32 second_remain_distance
    float32 second_target_v
    planning_msgs/Gear first_gear
    planning_msgs/Gear second_gear
    uint32 second_start_index
    string reserved
    
    ================================================================================
    MSG: planning_msgs/APATrajectoryExtendType
    uint8 UNEXTENDED = 0
    uint8 STRAIGHT = 1
    uint8 CIRCULAR_CURVE = 2
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/APAControlCommand
    planning_msgs/APABrakeMode brake_mode
    planning_msgs/APASteeringMode steering_mode
    uint8 special_scenario_type
    bool use_second_traj_sv
    string reserved
    
    ================================================================================
    MSG: planning_msgs/APABrakeMode
    uint8 DEFAULT = 0
    uint8 HARD_BRAKE = 1
    uint8 GENTLE_BRAKE = 2
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/APASteeringMode
    uint8 NONE = 0
    uint8 STEERING_RESET = 1
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/APADebugInfo
    planning_msgs/MultiCircleFootprintModel mc_footprint_model
    string reserved
    
    ================================================================================
    MSG: planning_msgs/MultiCircleFootprintModel
    planning_msgs/Circle[] circles
    
    ================================================================================
    MSG: planning_msgs/Circle
    float64 x
    float64 y
    float64 z
    float64 r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new APAExtra(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parkin_info !== undefined) {
      resolved.parkin_info = ParkInInfo.Resolve(msg.parkin_info)
    }
    else {
      resolved.parkin_info = new ParkInInfo()
    }

    if (msg.parkout_info !== undefined) {
      resolved.parkout_info = ParkOutInfo.Resolve(msg.parkout_info)
    }
    else {
      resolved.parkout_info = new ParkOutInfo()
    }

    if (msg.rpa_straight_info !== undefined) {
      resolved.rpa_straight_info = RpaStraightInfo.Resolve(msg.rpa_straight_info)
    }
    else {
      resolved.rpa_straight_info = new RpaStraightInfo()
    }

    if (msg.slot_info !== undefined) {
      resolved.slot_info = ParkingSlotInfo.Resolve(msg.slot_info)
    }
    else {
      resolved.slot_info = new ParkingSlotInfo()
    }

    if (msg.traj_info !== undefined) {
      resolved.traj_info = APATrajectoryInfo.Resolve(msg.traj_info)
    }
    else {
      resolved.traj_info = new APATrajectoryInfo()
    }

    if (msg.control_cmd !== undefined) {
      resolved.control_cmd = APAControlCommand.Resolve(msg.control_cmd)
    }
    else {
      resolved.control_cmd = new APAControlCommand()
    }

    if (msg.debug_info !== undefined) {
      resolved.debug_info = APADebugInfo.Resolve(msg.debug_info)
    }
    else {
      resolved.debug_info = new APADebugInfo()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

// Constants for message
APAExtra.Constants = {
  PARKIN_INFO: 1,
  PARKOUT_INFO: 2,
  RPA_STRAIGHT_INFO: 4,
  SLOT_INFO: 8,
  TRAJ_INFO: 16,
  CONTROL_CMD: 32,
  DEBUG_INFO: 64,
}

module.exports = APAExtra;

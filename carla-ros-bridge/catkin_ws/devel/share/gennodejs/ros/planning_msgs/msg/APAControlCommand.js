// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let APABrakeMode = require('./APABrakeMode.js');
let APASteeringMode = require('./APASteeringMode.js');

//-----------------------------------------------------------

class APAControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake_mode = null;
      this.steering_mode = null;
      this.special_scenario_type = null;
      this.use_second_traj_sv = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('brake_mode')) {
        this.brake_mode = initObj.brake_mode
      }
      else {
        this.brake_mode = new APABrakeMode();
      }
      if (initObj.hasOwnProperty('steering_mode')) {
        this.steering_mode = initObj.steering_mode
      }
      else {
        this.steering_mode = new APASteeringMode();
      }
      if (initObj.hasOwnProperty('special_scenario_type')) {
        this.special_scenario_type = initObj.special_scenario_type
      }
      else {
        this.special_scenario_type = 0;
      }
      if (initObj.hasOwnProperty('use_second_traj_sv')) {
        this.use_second_traj_sv = initObj.use_second_traj_sv
      }
      else {
        this.use_second_traj_sv = false;
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
    // Serializes a message object of type APAControlCommand
    // Serialize message field [brake_mode]
    bufferOffset = APABrakeMode.serialize(obj.brake_mode, buffer, bufferOffset);
    // Serialize message field [steering_mode]
    bufferOffset = APASteeringMode.serialize(obj.steering_mode, buffer, bufferOffset);
    // Serialize message field [special_scenario_type]
    bufferOffset = _serializer.uint8(obj.special_scenario_type, buffer, bufferOffset);
    // Serialize message field [use_second_traj_sv]
    bufferOffset = _serializer.bool(obj.use_second_traj_sv, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type APAControlCommand
    let len;
    let data = new APAControlCommand(null);
    // Deserialize message field [brake_mode]
    data.brake_mode = APABrakeMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_mode]
    data.steering_mode = APASteeringMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [special_scenario_type]
    data.special_scenario_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [use_second_traj_sv]
    data.use_second_traj_sv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/APAControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62a7b78b1c9651470bdea942c2f091fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new APAControlCommand(null);
    if (msg.brake_mode !== undefined) {
      resolved.brake_mode = APABrakeMode.Resolve(msg.brake_mode)
    }
    else {
      resolved.brake_mode = new APABrakeMode()
    }

    if (msg.steering_mode !== undefined) {
      resolved.steering_mode = APASteeringMode.Resolve(msg.steering_mode)
    }
    else {
      resolved.steering_mode = new APASteeringMode()
    }

    if (msg.special_scenario_type !== undefined) {
      resolved.special_scenario_type = msg.special_scenario_type;
    }
    else {
      resolved.special_scenario_type = 0
    }

    if (msg.use_second_traj_sv !== undefined) {
      resolved.use_second_traj_sv = msg.use_second_traj_sv;
    }
    else {
      resolved.use_second_traj_sv = false
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

module.exports = APAControlCommand;

// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AuxiliaryCommandData = require('./AuxiliaryCommandData.js');

//-----------------------------------------------------------

class AuxiliaryCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.auxiliary_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('auxiliary_command_data')) {
        this.auxiliary_command_data = initObj.auxiliary_command_data
      }
      else {
        this.auxiliary_command_data = new AuxiliaryCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [auxiliary_command_data]
    bufferOffset = AuxiliaryCommandData.serialize(obj.auxiliary_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryCommand
    let len;
    let data = new AuxiliaryCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auxiliary_command_data]
    data.auxiliary_command_data = AuxiliaryCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AuxiliaryCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fdab96c0ecd165eae50dd7d8fd90979';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AUXILIARY_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/AuxiliaryCommandData auxiliary_command_data
    
    ================================================================================
    MSG: endpoint_msgs/AuxiliaryCommandData
    uint64 timestamp_us
    bool wiper_enable
    endpoint_msgs/WiperCommandType front_wiper
    endpoint_msgs/WiperCommandType rear_wiper
    endpoint_msgs/MirrorState rearview_mirror
    endpoint_msgs/PowerModeType vehicle_power
    endpoint_msgs/VehicleLockType vehicle_lock
    bool seat_belt_alarm
    bool seat_belt_tightening
    bool steering_wheel_alarm
    bool buzzer_alarm
    bool horn_enable
    endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode
    bool emergencybraking_enable
    bool gradualbraking_enable
    bool shared_control_enable
    bool shared_contro_state
    float32 shared_control_steer_gain_level
    float32 shared_control_eps_torque_limit
    
    ================================================================================
    MSG: endpoint_msgs/WiperCommandType
    uint8 OFF = 0
    uint8 LOW = 1
    uint8 HIGH = 2
    uint8 AUTO = 3
    uint8 SPRAY = 4
    uint8 RESERVED = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/MirrorState
    uint8 NO_REQUEST = 0
    uint8 REQUEST_UNFOLD = 1
    uint8 REQUEST_FOLD = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/PowerModeType
    uint8 VEHILCE_POWER_MODE_OFF = 0
    uint8 VEHILCE_POWER_MODE_NORMAL = 1
    uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
    uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLockType
    uint8 NONE = 0
    uint8 UNLOCK = 1
    uint8 LOCK = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ApaVcurCtlMode
    uint8 NORMAL = 0
    uint8 DR_SWITCH_MODE = 1
    uint8 OBSTACLE_CROSSING_MODE = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 RESERVED4 = 6
    uint8 RESERVED5 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxiliaryCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.auxiliary_command_data !== undefined) {
      resolved.auxiliary_command_data = AuxiliaryCommandData.Resolve(msg.auxiliary_command_data)
    }
    else {
      resolved.auxiliary_command_data = new AuxiliaryCommandData()
    }

    return resolved;
    }
};

// Constants for message
AuxiliaryCommand.Constants = {
  AUXILIARY_COMMAND_DATA: 1,
}

module.exports = AuxiliaryCommand;

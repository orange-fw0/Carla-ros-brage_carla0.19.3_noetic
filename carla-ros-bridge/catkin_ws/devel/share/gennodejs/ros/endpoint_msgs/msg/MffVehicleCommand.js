// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MffVehicleCommandData = require('./MffVehicleCommandData.js');

//-----------------------------------------------------------

class MffVehicleCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.mff_vehicle_command_data = null;
      this.json_command = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('mff_vehicle_command_data')) {
        this.mff_vehicle_command_data = initObj.mff_vehicle_command_data
      }
      else {
        this.mff_vehicle_command_data = new MffVehicleCommandData();
      }
      if (initObj.hasOwnProperty('json_command')) {
        this.json_command = initObj.json_command
      }
      else {
        this.json_command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MffVehicleCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [mff_vehicle_command_data]
    bufferOffset = MffVehicleCommandData.serialize(obj.mff_vehicle_command_data, buffer, bufferOffset);
    // Serialize message field [json_command]
    bufferOffset = _serializer.string(obj.json_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MffVehicleCommand
    let len;
    let data = new MffVehicleCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mff_vehicle_command_data]
    data.mff_vehicle_command_data = MffVehicleCommandData.deserialize(buffer, bufferOffset);
    // Deserialize message field [json_command]
    data.json_command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.json_command);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/MffVehicleCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8482add1d3da79c9d38a17fa8e74b284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MFF_VEHICLE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data
    string json_command
    
    ================================================================================
    MSG: endpoint_msgs/MffVehicleCommandData
    uint64 timestamp_us
    endpoint_msgs/HeatWireCommand heat_wire_command
    endpoint_msgs/RearviewMirrorCommand rearview_mirror_command
    endpoint_msgs/SuspensionCommand suspension_comand
    endpoint_msgs/SentryModeCommand sentrymode_command
    endpoint_msgs/TurnSignalCommand turn_signal_command
    
    ================================================================================
    MSG: endpoint_msgs/HeatWireCommand
    endpoint_msgs/CameraSurfaceCondition ff_camera_status
    endpoint_msgs/CameraSurfaceCondition fw_camera_status
    endpoint_msgs/HeatWireControlType heat_wire_control
    
    ================================================================================
    MSG: endpoint_msgs/CameraSurfaceCondition
    uint8 INVALID = 0
    uint8 NORMAL = 1
    uint8 WATER = 2
    uint8 MOISTURE = 3
    uint8 BLOCKAGE = 4
    uint8 DIZZY = 5
    uint8 DARKNESS = 6
    uint8 DIRTY = 7
    uint8 RESERVED1 = 8
    uint8 RESERVED2 = 9
    uint8 RESERVED3 = 10
    uint8 RESERVED4 = 11
    uint8 RESERVED5 = 12
    uint8 RESERVED6 = 13
    uint8 RESERVED7 = 14
    uint8 RESERVED8 = 15
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HeatWireControlType
    uint8 NONE = 0
    uint8 STANDBY = 1
    uint8 HEAT = 2
    uint8 NOHEAT = 3
    uint8 FAILURE = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RearviewMirrorCommand
    bool rearview_mirror_enable
    endpoint_msgs/MirrorState rearview_mirror_command
    endpoint_msgs/RWhSteerModType rwheel_steer_mode
    
    ================================================================================
    MSG: endpoint_msgs/MirrorState
    uint8 NO_REQUEST = 0
    uint8 REQUEST_UNFOLD = 1
    uint8 REQUEST_FOLD = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerModType
    uint8 NO_REQUEST = 0
    uint8 CONTROL_REQUEST = 1
    uint8 LOCK_REQUEST = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionCommand
    bool suspension_enable
    bool suspension_adjust_pause
    bool suspension_safety_mode
    endpoint_msgs/SuspensionLevel suspension_level_command
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionLevel
    uint8 SUSPENSION_NONE = 0
    uint8 SUSPENSION_LEVEL1 = 1
    uint8 SUSPENSION_LEVEL2 = 2
    uint8 SUSPENSION_LEVEL3 = 3
    uint8 SUSPENSION_LEVEL4 = 4
    uint8 SUSPENSION_LEVEL5 = 5
    uint8 SUSPENSION_LEVEL6 = 6
    uint8 SUSPENSION_LEVEL7 = 7
    uint8 SUSPENSION_LEVEL8 = 8
    uint8 SUSPENSION_LEVEL9 = 9
    uint8 SUSPENSION_LEVEL10 = 10
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SentryModeCommand
    endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level
    endpoint_msgs/SentryHornLevel snetry_horn_level
    
    ================================================================================
    MSG: endpoint_msgs/SentryEmergencyFlasherLevel
    uint8 EmergencyFlasherReq_NONE = 0
    uint8 EmergencyFlasherReq_LEVEL1 = 1
    uint8 EmergencyFlasherReq_LEVEL2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SentryHornLevel
    uint8 HornReq_NONE = 0
    uint8 HornReq_LEVEL1 = 1
    uint8 HornReq_LEVEL2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/TurnSignalCommand
    bool turn_signal_enable
    endpoint_msgs/TurnSignal turn_signal_state
    
    ================================================================================
    MSG: endpoint_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MffVehicleCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.mff_vehicle_command_data !== undefined) {
      resolved.mff_vehicle_command_data = MffVehicleCommandData.Resolve(msg.mff_vehicle_command_data)
    }
    else {
      resolved.mff_vehicle_command_data = new MffVehicleCommandData()
    }

    if (msg.json_command !== undefined) {
      resolved.json_command = msg.json_command;
    }
    else {
      resolved.json_command = ''
    }

    return resolved;
    }
};

// Constants for message
MffVehicleCommand.Constants = {
  MFF_VEHICLE_COMMAND_DATA: 1,
}

module.exports = MffVehicleCommand;

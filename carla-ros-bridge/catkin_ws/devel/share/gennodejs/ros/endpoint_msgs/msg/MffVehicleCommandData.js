// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HeatWireCommand = require('./HeatWireCommand.js');
let RearviewMirrorCommand = require('./RearviewMirrorCommand.js');
let SuspensionCommand = require('./SuspensionCommand.js');
let SentryModeCommand = require('./SentryModeCommand.js');
let TurnSignalCommand = require('./TurnSignalCommand.js');

//-----------------------------------------------------------

class MffVehicleCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.heat_wire_command = null;
      this.rearview_mirror_command = null;
      this.suspension_comand = null;
      this.sentrymode_command = null;
      this.turn_signal_command = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('heat_wire_command')) {
        this.heat_wire_command = initObj.heat_wire_command
      }
      else {
        this.heat_wire_command = new HeatWireCommand();
      }
      if (initObj.hasOwnProperty('rearview_mirror_command')) {
        this.rearview_mirror_command = initObj.rearview_mirror_command
      }
      else {
        this.rearview_mirror_command = new RearviewMirrorCommand();
      }
      if (initObj.hasOwnProperty('suspension_comand')) {
        this.suspension_comand = initObj.suspension_comand
      }
      else {
        this.suspension_comand = new SuspensionCommand();
      }
      if (initObj.hasOwnProperty('sentrymode_command')) {
        this.sentrymode_command = initObj.sentrymode_command
      }
      else {
        this.sentrymode_command = new SentryModeCommand();
      }
      if (initObj.hasOwnProperty('turn_signal_command')) {
        this.turn_signal_command = initObj.turn_signal_command
      }
      else {
        this.turn_signal_command = new TurnSignalCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MffVehicleCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [heat_wire_command]
    bufferOffset = HeatWireCommand.serialize(obj.heat_wire_command, buffer, bufferOffset);
    // Serialize message field [rearview_mirror_command]
    bufferOffset = RearviewMirrorCommand.serialize(obj.rearview_mirror_command, buffer, bufferOffset);
    // Serialize message field [suspension_comand]
    bufferOffset = SuspensionCommand.serialize(obj.suspension_comand, buffer, bufferOffset);
    // Serialize message field [sentrymode_command]
    bufferOffset = SentryModeCommand.serialize(obj.sentrymode_command, buffer, bufferOffset);
    // Serialize message field [turn_signal_command]
    bufferOffset = TurnSignalCommand.serialize(obj.turn_signal_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MffVehicleCommandData
    let len;
    let data = new MffVehicleCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [heat_wire_command]
    data.heat_wire_command = HeatWireCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror_command]
    data.rearview_mirror_command = RearviewMirrorCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [suspension_comand]
    data.suspension_comand = SuspensionCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [sentrymode_command]
    data.sentrymode_command = SentryModeCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal_command]
    data.turn_signal_command = TurnSignalCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/MffVehicleCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43d96094e63e3fa9197ef19e0cceec16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MffVehicleCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.heat_wire_command !== undefined) {
      resolved.heat_wire_command = HeatWireCommand.Resolve(msg.heat_wire_command)
    }
    else {
      resolved.heat_wire_command = new HeatWireCommand()
    }

    if (msg.rearview_mirror_command !== undefined) {
      resolved.rearview_mirror_command = RearviewMirrorCommand.Resolve(msg.rearview_mirror_command)
    }
    else {
      resolved.rearview_mirror_command = new RearviewMirrorCommand()
    }

    if (msg.suspension_comand !== undefined) {
      resolved.suspension_comand = SuspensionCommand.Resolve(msg.suspension_comand)
    }
    else {
      resolved.suspension_comand = new SuspensionCommand()
    }

    if (msg.sentrymode_command !== undefined) {
      resolved.sentrymode_command = SentryModeCommand.Resolve(msg.sentrymode_command)
    }
    else {
      resolved.sentrymode_command = new SentryModeCommand()
    }

    if (msg.turn_signal_command !== undefined) {
      resolved.turn_signal_command = TurnSignalCommand.Resolve(msg.turn_signal_command)
    }
    else {
      resolved.turn_signal_command = new TurnSignalCommand()
    }

    return resolved;
    }
};

module.exports = MffVehicleCommandData;

// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MffVehicleCommand = require('./MffVehicleCommand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MffCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mff_vehicle_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mff_vehicle_command')) {
        this.mff_vehicle_command = initObj.mff_vehicle_command
      }
      else {
        this.mff_vehicle_command = new MffVehicleCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MffCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mff_vehicle_command]
    bufferOffset = MffVehicleCommand.serialize(obj.mff_vehicle_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MffCommand
    let len;
    let data = new MffCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mff_vehicle_command]
    data.mff_vehicle_command = MffVehicleCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MffVehicleCommand.getMessageSize(object.mff_vehicle_command);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/MffCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82fd94470458a3806d1e9ab9ea8f37ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/MffVehicleCommand mff_vehicle_command
    
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
    MSG: endpoint_msgs/MffVehicleCommand
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
    const resolved = new MffCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mff_vehicle_command !== undefined) {
      resolved.mff_vehicle_command = MffVehicleCommand.Resolve(msg.mff_vehicle_command)
    }
    else {
      resolved.mff_vehicle_command = new MffVehicleCommand()
    }

    return resolved;
    }
};

module.exports = MffCommand;

// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControlCommandMeta = require('./ControlCommandMeta.js');
let WireControlTypeCommand = require('./WireControlTypeCommand.js');
let BrakeCommand = require('./BrakeCommand.js');
let GearCommand = require('./GearCommand.js');
let SteeringCommand = require('./SteeringCommand.js');
let ThrottleCommand = require('./ThrottleCommand.js');
let AebCommand = require('./AebCommand.js');
let VehicleLightCommand = require('./VehicleLightCommand.js');
let WindowCommand = require('./WindowCommand.js');
let AuxiliaryCommand = require('./AuxiliaryCommand.js');
let AcceCommand = require('./AcceCommand.js');
let ControlCommandExtra = require('./ControlCommandExtra.js');
let SpeedCommand = require('./SpeedCommand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.wire_type_command = null;
      this.brake_command = null;
      this.gear_command = null;
      this.steering_command = null;
      this.throttle_command = null;
      this.aeb_command = null;
      this.vehicle_light_command = null;
      this.window_command = null;
      this.auxiliary_command = null;
      this.acce_command = null;
      this.extra = null;
      this.speed_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new ControlCommandMeta();
      }
      if (initObj.hasOwnProperty('wire_type_command')) {
        this.wire_type_command = initObj.wire_type_command
      }
      else {
        this.wire_type_command = new WireControlTypeCommand();
      }
      if (initObj.hasOwnProperty('brake_command')) {
        this.brake_command = initObj.brake_command
      }
      else {
        this.brake_command = new BrakeCommand();
      }
      if (initObj.hasOwnProperty('gear_command')) {
        this.gear_command = initObj.gear_command
      }
      else {
        this.gear_command = new GearCommand();
      }
      if (initObj.hasOwnProperty('steering_command')) {
        this.steering_command = initObj.steering_command
      }
      else {
        this.steering_command = new SteeringCommand();
      }
      if (initObj.hasOwnProperty('throttle_command')) {
        this.throttle_command = initObj.throttle_command
      }
      else {
        this.throttle_command = new ThrottleCommand();
      }
      if (initObj.hasOwnProperty('aeb_command')) {
        this.aeb_command = initObj.aeb_command
      }
      else {
        this.aeb_command = new AebCommand();
      }
      if (initObj.hasOwnProperty('vehicle_light_command')) {
        this.vehicle_light_command = initObj.vehicle_light_command
      }
      else {
        this.vehicle_light_command = new VehicleLightCommand();
      }
      if (initObj.hasOwnProperty('window_command')) {
        this.window_command = initObj.window_command
      }
      else {
        this.window_command = new WindowCommand();
      }
      if (initObj.hasOwnProperty('auxiliary_command')) {
        this.auxiliary_command = initObj.auxiliary_command
      }
      else {
        this.auxiliary_command = new AuxiliaryCommand();
      }
      if (initObj.hasOwnProperty('acce_command')) {
        this.acce_command = initObj.acce_command
      }
      else {
        this.acce_command = new AcceCommand();
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = new ControlCommandExtra();
      }
      if (initObj.hasOwnProperty('speed_command')) {
        this.speed_command = initObj.speed_command
      }
      else {
        this.speed_command = new SpeedCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = ControlCommandMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [wire_type_command]
    bufferOffset = WireControlTypeCommand.serialize(obj.wire_type_command, buffer, bufferOffset);
    // Serialize message field [brake_command]
    bufferOffset = BrakeCommand.serialize(obj.brake_command, buffer, bufferOffset);
    // Serialize message field [gear_command]
    bufferOffset = GearCommand.serialize(obj.gear_command, buffer, bufferOffset);
    // Serialize message field [steering_command]
    bufferOffset = SteeringCommand.serialize(obj.steering_command, buffer, bufferOffset);
    // Serialize message field [throttle_command]
    bufferOffset = ThrottleCommand.serialize(obj.throttle_command, buffer, bufferOffset);
    // Serialize message field [aeb_command]
    bufferOffset = AebCommand.serialize(obj.aeb_command, buffer, bufferOffset);
    // Serialize message field [vehicle_light_command]
    bufferOffset = VehicleLightCommand.serialize(obj.vehicle_light_command, buffer, bufferOffset);
    // Serialize message field [window_command]
    bufferOffset = WindowCommand.serialize(obj.window_command, buffer, bufferOffset);
    // Serialize message field [auxiliary_command]
    bufferOffset = AuxiliaryCommand.serialize(obj.auxiliary_command, buffer, bufferOffset);
    // Serialize message field [acce_command]
    bufferOffset = AcceCommand.serialize(obj.acce_command, buffer, bufferOffset);
    // Serialize message field [extra]
    bufferOffset = ControlCommandExtra.serialize(obj.extra, buffer, bufferOffset);
    // Serialize message field [speed_command]
    bufferOffset = SpeedCommand.serialize(obj.speed_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = ControlCommandMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [wire_type_command]
    data.wire_type_command = WireControlTypeCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_command]
    data.brake_command = BrakeCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear_command]
    data.gear_command = GearCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_command]
    data.steering_command = SteeringCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_command]
    data.throttle_command = ThrottleCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [aeb_command]
    data.aeb_command = AebCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_light_command]
    data.vehicle_light_command = VehicleLightCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_command]
    data.window_command = WindowCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [auxiliary_command]
    data.auxiliary_command = AuxiliaryCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [acce_command]
    data.acce_command = AcceCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra]
    data.extra = ControlCommandExtra.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_command]
    data.speed_command = SpeedCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ControlCommandExtra.getMessageSize(object.extra);
    return length + 218;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3f262e253a4dae1526b55df7859faae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/ControlCommandMeta meta
    endpoint_msgs/WireControlTypeCommand wire_type_command
    endpoint_msgs/BrakeCommand brake_command
    endpoint_msgs/GearCommand gear_command
    endpoint_msgs/SteeringCommand steering_command
    endpoint_msgs/ThrottleCommand throttle_command
    endpoint_msgs/AebCommand aeb_command
    endpoint_msgs/VehicleLightCommand vehicle_light_command
    endpoint_msgs/WindowCommand window_command
    endpoint_msgs/AuxiliaryCommand auxiliary_command
    endpoint_msgs/AcceCommand acce_command
    endpoint_msgs/ControlCommandExtra extra
    endpoint_msgs/SpeedCommand speed_command
    
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
    MSG: endpoint_msgs/ControlCommandMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: endpoint_msgs/WireControlTypeCommand
    uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/WireControlTypeCommandData wire_control_command_data
    
    ================================================================================
    MSG: endpoint_msgs/WireControlTypeCommandData
    uint64 timestamp_us
    endpoint_msgs/WireControlType wire_type
    
    ================================================================================
    MSG: endpoint_msgs/WireControlType
    uint8 SYETEM_REQ_NONE = 0
    uint8 SYSTEM_REQ_PILOT = 1
    uint8 SYSTEM_REQ_APA = 2
    uint8 SYSTEM_REQ_ACC = 3
    uint8 SYSTEM_REQ_AVP = 4
    uint8 SYSTEM_REQ_LVP = 5
    uint8 SYSTEM_REQ_MRC = 6
    uint8 RESERVED = 7
    uint8 wire_control_type
    
    ================================================================================
    MSG: endpoint_msgs/BrakeCommand
    uint8 BRAKE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/BrakeCommandData brake_command_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeCommandData
    uint64 timestamp_us
    bool brake_enable
    endpoint_msgs/BrakeType brake_type
    float32 brake_command
    endpoint_msgs/BrakeControlType brake_control_type
    endpoint_msgs/AccStandstillType brake_acc_standstill
    bool brake_acc_go
    bool epb_enable
    bool epb_command
    bool auto_hold_command
    
    ================================================================================
    MSG: endpoint_msgs/BrakeType
    uint8 PEDAL = 1
    uint8 DECELERATION = 2
    uint8 MASTER_CYLINDERPRESSURE = 3
    uint8 WHEEL_CYLINDERPRESSURE = 4
    uint8 TORQUE = 5
    uint8 DISTANCE = 6
    uint8 SV = 7
    uint8 RESERVED = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeControlType
    uint8 NORMAL = 1
    uint8 EMERGENT = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AccStandstillType
    uint8 NO_REQUEST = 0
    uint8 REQUEST = 1
    uint8 REMIND_DRIVE_GO = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/GearCommand
    uint8 GEAR_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/GearCommandData gear_command_data
    
    ================================================================================
    MSG: endpoint_msgs/GearCommandData
    uint64 timestamp_us
    bool gear_enable
    endpoint_msgs/Gear gear_type
    
    ================================================================================
    MSG: endpoint_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SteeringCommand
    uint8 STEERING_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/SteeringCommandData steering_command_data
    
    ================================================================================
    MSG: endpoint_msgs/SteeringCommandData
    uint64 timestamp_us
    bool steering_enable
    endpoint_msgs/SteeringType steering_type
    float32 steering_command
    float32 steering_rate
    endpoint_msgs/RWhSteerModType rwheel_steer_mode
    float32 rwheel_command
    endpoint_msgs/RWhSteerDirection rwheel_steer_direction
    
    ================================================================================
    MSG: endpoint_msgs/SteeringType
    uint8 STEERING_ANGLE = 1
    uint8 FRONT_WHEEL_ANGLE = 2
    uint8 YAW_RATE = 3
    uint8 TORQUE = 4
    uint8 ANGLE_SPEED = 5
    uint8 CURVATURE = 6
    uint8 RESERVED = 7
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
    MSG: endpoint_msgs/RWhSteerDirection
    uint8 NONE = 0
    uint8 SAME_DIRECTION = 1
    uint8 OPPOSITE_DIRECTION = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleCommand
    uint8 THROTTLE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/ThrottleCommandData throttle_command_data
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleCommandData
    uint64 timestamp_us
    bool throttle_enable
    endpoint_msgs/ThrottleType throttle_type
    float32 throttle_command
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleType
    uint8 PEDAL = 0
    uint8 THROTTLE = 1
    uint8 TORQUE = 2
    uint8 ACCELERATION = 3
    uint8 SPEED = 4
    uint8 SV = 5
    uint8 RESERVED = 6
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebCommand
    uint8 AEB_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/AebCommandData aeb_command_data
    
    ================================================================================
    MSG: endpoint_msgs/AebCommandData
    uint64 timestamp_us
    endpoint_msgs/AebBrkJerkReq awb_request
    endpoint_msgs/AebDclReqSts dcl_req_state
    float32 dcl_req_command
    endpoint_msgs/AebHydBrkReq hba_request_level
    bool prefill_request
    
    ================================================================================
    MSG: endpoint_msgs/AebBrkJerkReq
    uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
    uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
    uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
    uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
    uint8 AEV_BRAKE_JERK_RESERVED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebDclReqSts
    uint8 AEB_DLC_STATE_NO_REQUEST = 0
    uint8 AEB_DLC_STATE_DECELERATION = 1
    uint8 AEB_DLC_STATE_RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebHydBrkReq
    uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
    uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
    uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
    uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
    uint8 AEB_HYD_BRAKE_RESERVED1 = 4
    uint8 AEB_HYD_BRAKE_RESERVED2 = 5
    uint8 AEB_HYD_BRAKE_RESERVED3 = 6
    uint8 AEB_HYD_BRAKE_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLightCommand
    uint8 VEHICLE_LIGHT_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/VehicleLightCommandData vehicle_light_command_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLightCommandData
    uint64 timestamp_us
    bool light_enable
    endpoint_msgs/TurnSignal turn_signal
    endpoint_msgs/FrontLightState front_light
    bool width_light
    bool reversing_light
    bool front_fog_light
    bool rear_fog_light
    
    ================================================================================
    MSG: endpoint_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightState
    uint8 LIGHT_OFF = 0
    uint8 LOW_BEAM_LIGHT = 1
    uint8 HIGH_BEAM_LIGHT = 2
    uint8 OVERTAKING_FLASH = 3
    uint8 LIGHT_AUTO = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/WindowCommand
    uint8 WINDOW_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/WindowCommandData window_command_data
    
    ================================================================================
    MSG: endpoint_msgs/WindowCommandData
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowType window_left_front
    endpoint_msgs/WindowType window_right_front
    endpoint_msgs/WindowType window_left_rear
    endpoint_msgs/WindowType window_right_rear
    endpoint_msgs/WindowType window_top
    
    ================================================================================
    MSG: endpoint_msgs/WindowType
    uint8 LIFT_STOP = 0
    uint8 LIFT_UP = 1
    uint8 LIFT_DOWN = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AuxiliaryCommand
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
    
    ================================================================================
    MSG: endpoint_msgs/AcceCommand
    uint8 ACCE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/AcceCommandData acce_command_data
    
    ================================================================================
    MSG: endpoint_msgs/AcceCommandData
    uint64 timestamp_us
    float32 command_value
    bool acce_command_enable
    
    ================================================================================
    MSG: endpoint_msgs/ControlCommandExtra
    uint8 VERSION = 1
    uint8 JSON = 2
    uint8 available
    string version
    string json
    
    ================================================================================
    MSG: endpoint_msgs/SpeedCommand
    uint8 SPEED_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/SpeedCommandData speed_command_data
    
    ================================================================================
    MSG: endpoint_msgs/SpeedCommandData
    bool speed_enable
    bool toque_unload_enable
    float32 speed_command
    float32 torque_ffwd_command
    endpoint_msgs/TargetControlMotor target_control_motor
    endpoint_msgs/TargetControlMode target_control_mode
    float32 wheel_torque_lim_max
    float32 wheel_torque_lim_min
    float32 wheel_torque_rate_max
    float32 wheel_torque_rate_min
    float32 torque_unload_rate
    
    ================================================================================
    MSG: endpoint_msgs/TargetControlMotor
    uint8 FL = 0
    uint8 FR = 1
    uint8 RL = 2
    uint8 RR = 3
    uint8 FLFR = 4
    uint8 RLRR = 5
    uint8 RESERVED1 = 6
    uint8 RESERVED2 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/TargetControlMode
    uint8 NONE = 0
    uint8 TORQUE = 1
    uint8 SPEED = 2
    uint8 RESERVE = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = ControlCommandMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new ControlCommandMeta()
    }

    if (msg.wire_type_command !== undefined) {
      resolved.wire_type_command = WireControlTypeCommand.Resolve(msg.wire_type_command)
    }
    else {
      resolved.wire_type_command = new WireControlTypeCommand()
    }

    if (msg.brake_command !== undefined) {
      resolved.brake_command = BrakeCommand.Resolve(msg.brake_command)
    }
    else {
      resolved.brake_command = new BrakeCommand()
    }

    if (msg.gear_command !== undefined) {
      resolved.gear_command = GearCommand.Resolve(msg.gear_command)
    }
    else {
      resolved.gear_command = new GearCommand()
    }

    if (msg.steering_command !== undefined) {
      resolved.steering_command = SteeringCommand.Resolve(msg.steering_command)
    }
    else {
      resolved.steering_command = new SteeringCommand()
    }

    if (msg.throttle_command !== undefined) {
      resolved.throttle_command = ThrottleCommand.Resolve(msg.throttle_command)
    }
    else {
      resolved.throttle_command = new ThrottleCommand()
    }

    if (msg.aeb_command !== undefined) {
      resolved.aeb_command = AebCommand.Resolve(msg.aeb_command)
    }
    else {
      resolved.aeb_command = new AebCommand()
    }

    if (msg.vehicle_light_command !== undefined) {
      resolved.vehicle_light_command = VehicleLightCommand.Resolve(msg.vehicle_light_command)
    }
    else {
      resolved.vehicle_light_command = new VehicleLightCommand()
    }

    if (msg.window_command !== undefined) {
      resolved.window_command = WindowCommand.Resolve(msg.window_command)
    }
    else {
      resolved.window_command = new WindowCommand()
    }

    if (msg.auxiliary_command !== undefined) {
      resolved.auxiliary_command = AuxiliaryCommand.Resolve(msg.auxiliary_command)
    }
    else {
      resolved.auxiliary_command = new AuxiliaryCommand()
    }

    if (msg.acce_command !== undefined) {
      resolved.acce_command = AcceCommand.Resolve(msg.acce_command)
    }
    else {
      resolved.acce_command = new AcceCommand()
    }

    if (msg.extra !== undefined) {
      resolved.extra = ControlCommandExtra.Resolve(msg.extra)
    }
    else {
      resolved.extra = new ControlCommandExtra()
    }

    if (msg.speed_command !== undefined) {
      resolved.speed_command = SpeedCommand.Resolve(msg.speed_command)
    }
    else {
      resolved.speed_command = new SpeedCommand()
    }

    return resolved;
    }
};

module.exports = ControlCommand;

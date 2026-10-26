// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WiperCommandType = require('./WiperCommandType.js');
let MirrorState = require('./MirrorState.js');
let PowerModeType = require('./PowerModeType.js');
let VehicleLockType = require('./VehicleLockType.js');
let ApaVcurCtlMode = require('./ApaVcurCtlMode.js');

//-----------------------------------------------------------

class AuxiliaryCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.wiper_enable = null;
      this.front_wiper = null;
      this.rear_wiper = null;
      this.rearview_mirror = null;
      this.vehicle_power = null;
      this.vehicle_lock = null;
      this.seat_belt_alarm = null;
      this.seat_belt_tightening = null;
      this.steering_wheel_alarm = null;
      this.buzzer_alarm = null;
      this.horn_enable = null;
      this.parking_lonti_control_mode = null;
      this.emergencybraking_enable = null;
      this.gradualbraking_enable = null;
      this.shared_control_enable = null;
      this.shared_contro_state = null;
      this.shared_control_steer_gain_level = null;
      this.shared_control_eps_torque_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('wiper_enable')) {
        this.wiper_enable = initObj.wiper_enable
      }
      else {
        this.wiper_enable = false;
      }
      if (initObj.hasOwnProperty('front_wiper')) {
        this.front_wiper = initObj.front_wiper
      }
      else {
        this.front_wiper = new WiperCommandType();
      }
      if (initObj.hasOwnProperty('rear_wiper')) {
        this.rear_wiper = initObj.rear_wiper
      }
      else {
        this.rear_wiper = new WiperCommandType();
      }
      if (initObj.hasOwnProperty('rearview_mirror')) {
        this.rearview_mirror = initObj.rearview_mirror
      }
      else {
        this.rearview_mirror = new MirrorState();
      }
      if (initObj.hasOwnProperty('vehicle_power')) {
        this.vehicle_power = initObj.vehicle_power
      }
      else {
        this.vehicle_power = new PowerModeType();
      }
      if (initObj.hasOwnProperty('vehicle_lock')) {
        this.vehicle_lock = initObj.vehicle_lock
      }
      else {
        this.vehicle_lock = new VehicleLockType();
      }
      if (initObj.hasOwnProperty('seat_belt_alarm')) {
        this.seat_belt_alarm = initObj.seat_belt_alarm
      }
      else {
        this.seat_belt_alarm = false;
      }
      if (initObj.hasOwnProperty('seat_belt_tightening')) {
        this.seat_belt_tightening = initObj.seat_belt_tightening
      }
      else {
        this.seat_belt_tightening = false;
      }
      if (initObj.hasOwnProperty('steering_wheel_alarm')) {
        this.steering_wheel_alarm = initObj.steering_wheel_alarm
      }
      else {
        this.steering_wheel_alarm = false;
      }
      if (initObj.hasOwnProperty('buzzer_alarm')) {
        this.buzzer_alarm = initObj.buzzer_alarm
      }
      else {
        this.buzzer_alarm = false;
      }
      if (initObj.hasOwnProperty('horn_enable')) {
        this.horn_enable = initObj.horn_enable
      }
      else {
        this.horn_enable = false;
      }
      if (initObj.hasOwnProperty('parking_lonti_control_mode')) {
        this.parking_lonti_control_mode = initObj.parking_lonti_control_mode
      }
      else {
        this.parking_lonti_control_mode = new ApaVcurCtlMode();
      }
      if (initObj.hasOwnProperty('emergencybraking_enable')) {
        this.emergencybraking_enable = initObj.emergencybraking_enable
      }
      else {
        this.emergencybraking_enable = false;
      }
      if (initObj.hasOwnProperty('gradualbraking_enable')) {
        this.gradualbraking_enable = initObj.gradualbraking_enable
      }
      else {
        this.gradualbraking_enable = false;
      }
      if (initObj.hasOwnProperty('shared_control_enable')) {
        this.shared_control_enable = initObj.shared_control_enable
      }
      else {
        this.shared_control_enable = false;
      }
      if (initObj.hasOwnProperty('shared_contro_state')) {
        this.shared_contro_state = initObj.shared_contro_state
      }
      else {
        this.shared_contro_state = false;
      }
      if (initObj.hasOwnProperty('shared_control_steer_gain_level')) {
        this.shared_control_steer_gain_level = initObj.shared_control_steer_gain_level
      }
      else {
        this.shared_control_steer_gain_level = 0.0;
      }
      if (initObj.hasOwnProperty('shared_control_eps_torque_limit')) {
        this.shared_control_eps_torque_limit = initObj.shared_control_eps_torque_limit
      }
      else {
        this.shared_control_eps_torque_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [wiper_enable]
    bufferOffset = _serializer.bool(obj.wiper_enable, buffer, bufferOffset);
    // Serialize message field [front_wiper]
    bufferOffset = WiperCommandType.serialize(obj.front_wiper, buffer, bufferOffset);
    // Serialize message field [rear_wiper]
    bufferOffset = WiperCommandType.serialize(obj.rear_wiper, buffer, bufferOffset);
    // Serialize message field [rearview_mirror]
    bufferOffset = MirrorState.serialize(obj.rearview_mirror, buffer, bufferOffset);
    // Serialize message field [vehicle_power]
    bufferOffset = PowerModeType.serialize(obj.vehicle_power, buffer, bufferOffset);
    // Serialize message field [vehicle_lock]
    bufferOffset = VehicleLockType.serialize(obj.vehicle_lock, buffer, bufferOffset);
    // Serialize message field [seat_belt_alarm]
    bufferOffset = _serializer.bool(obj.seat_belt_alarm, buffer, bufferOffset);
    // Serialize message field [seat_belt_tightening]
    bufferOffset = _serializer.bool(obj.seat_belt_tightening, buffer, bufferOffset);
    // Serialize message field [steering_wheel_alarm]
    bufferOffset = _serializer.bool(obj.steering_wheel_alarm, buffer, bufferOffset);
    // Serialize message field [buzzer_alarm]
    bufferOffset = _serializer.bool(obj.buzzer_alarm, buffer, bufferOffset);
    // Serialize message field [horn_enable]
    bufferOffset = _serializer.bool(obj.horn_enable, buffer, bufferOffset);
    // Serialize message field [parking_lonti_control_mode]
    bufferOffset = ApaVcurCtlMode.serialize(obj.parking_lonti_control_mode, buffer, bufferOffset);
    // Serialize message field [emergencybraking_enable]
    bufferOffset = _serializer.bool(obj.emergencybraking_enable, buffer, bufferOffset);
    // Serialize message field [gradualbraking_enable]
    bufferOffset = _serializer.bool(obj.gradualbraking_enable, buffer, bufferOffset);
    // Serialize message field [shared_control_enable]
    bufferOffset = _serializer.bool(obj.shared_control_enable, buffer, bufferOffset);
    // Serialize message field [shared_contro_state]
    bufferOffset = _serializer.bool(obj.shared_contro_state, buffer, bufferOffset);
    // Serialize message field [shared_control_steer_gain_level]
    bufferOffset = _serializer.float32(obj.shared_control_steer_gain_level, buffer, bufferOffset);
    // Serialize message field [shared_control_eps_torque_limit]
    bufferOffset = _serializer.float32(obj.shared_control_eps_torque_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryCommandData
    let len;
    let data = new AuxiliaryCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [wiper_enable]
    data.wiper_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_wiper]
    data.front_wiper = WiperCommandType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear_wiper]
    data.rear_wiper = WiperCommandType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror]
    data.rearview_mirror = MirrorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_power]
    data.vehicle_power = PowerModeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_lock]
    data.vehicle_lock = VehicleLockType.deserialize(buffer, bufferOffset);
    // Deserialize message field [seat_belt_alarm]
    data.seat_belt_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [seat_belt_tightening]
    data.seat_belt_tightening = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_alarm]
    data.steering_wheel_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buzzer_alarm]
    data.buzzer_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [horn_enable]
    data.horn_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parking_lonti_control_mode]
    data.parking_lonti_control_mode = ApaVcurCtlMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergencybraking_enable]
    data.emergencybraking_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gradualbraking_enable]
    data.gradualbraking_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shared_control_enable]
    data.shared_control_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shared_contro_state]
    data.shared_contro_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shared_control_steer_gain_level]
    data.shared_control_steer_gain_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [shared_control_eps_torque_limit]
    data.shared_control_eps_torque_limit = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AuxiliaryCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41eec34e86b9dc8b6e2aa4c7d0428198';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AuxiliaryCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.wiper_enable !== undefined) {
      resolved.wiper_enable = msg.wiper_enable;
    }
    else {
      resolved.wiper_enable = false
    }

    if (msg.front_wiper !== undefined) {
      resolved.front_wiper = WiperCommandType.Resolve(msg.front_wiper)
    }
    else {
      resolved.front_wiper = new WiperCommandType()
    }

    if (msg.rear_wiper !== undefined) {
      resolved.rear_wiper = WiperCommandType.Resolve(msg.rear_wiper)
    }
    else {
      resolved.rear_wiper = new WiperCommandType()
    }

    if (msg.rearview_mirror !== undefined) {
      resolved.rearview_mirror = MirrorState.Resolve(msg.rearview_mirror)
    }
    else {
      resolved.rearview_mirror = new MirrorState()
    }

    if (msg.vehicle_power !== undefined) {
      resolved.vehicle_power = PowerModeType.Resolve(msg.vehicle_power)
    }
    else {
      resolved.vehicle_power = new PowerModeType()
    }

    if (msg.vehicle_lock !== undefined) {
      resolved.vehicle_lock = VehicleLockType.Resolve(msg.vehicle_lock)
    }
    else {
      resolved.vehicle_lock = new VehicleLockType()
    }

    if (msg.seat_belt_alarm !== undefined) {
      resolved.seat_belt_alarm = msg.seat_belt_alarm;
    }
    else {
      resolved.seat_belt_alarm = false
    }

    if (msg.seat_belt_tightening !== undefined) {
      resolved.seat_belt_tightening = msg.seat_belt_tightening;
    }
    else {
      resolved.seat_belt_tightening = false
    }

    if (msg.steering_wheel_alarm !== undefined) {
      resolved.steering_wheel_alarm = msg.steering_wheel_alarm;
    }
    else {
      resolved.steering_wheel_alarm = false
    }

    if (msg.buzzer_alarm !== undefined) {
      resolved.buzzer_alarm = msg.buzzer_alarm;
    }
    else {
      resolved.buzzer_alarm = false
    }

    if (msg.horn_enable !== undefined) {
      resolved.horn_enable = msg.horn_enable;
    }
    else {
      resolved.horn_enable = false
    }

    if (msg.parking_lonti_control_mode !== undefined) {
      resolved.parking_lonti_control_mode = ApaVcurCtlMode.Resolve(msg.parking_lonti_control_mode)
    }
    else {
      resolved.parking_lonti_control_mode = new ApaVcurCtlMode()
    }

    if (msg.emergencybraking_enable !== undefined) {
      resolved.emergencybraking_enable = msg.emergencybraking_enable;
    }
    else {
      resolved.emergencybraking_enable = false
    }

    if (msg.gradualbraking_enable !== undefined) {
      resolved.gradualbraking_enable = msg.gradualbraking_enable;
    }
    else {
      resolved.gradualbraking_enable = false
    }

    if (msg.shared_control_enable !== undefined) {
      resolved.shared_control_enable = msg.shared_control_enable;
    }
    else {
      resolved.shared_control_enable = false
    }

    if (msg.shared_contro_state !== undefined) {
      resolved.shared_contro_state = msg.shared_contro_state;
    }
    else {
      resolved.shared_contro_state = false
    }

    if (msg.shared_control_steer_gain_level !== undefined) {
      resolved.shared_control_steer_gain_level = msg.shared_control_steer_gain_level;
    }
    else {
      resolved.shared_control_steer_gain_level = 0.0
    }

    if (msg.shared_control_eps_torque_limit !== undefined) {
      resolved.shared_control_eps_torque_limit = msg.shared_control_eps_torque_limit;
    }
    else {
      resolved.shared_control_eps_torque_limit = 0.0
    }

    return resolved;
    }
};

module.exports = AuxiliaryCommandData;

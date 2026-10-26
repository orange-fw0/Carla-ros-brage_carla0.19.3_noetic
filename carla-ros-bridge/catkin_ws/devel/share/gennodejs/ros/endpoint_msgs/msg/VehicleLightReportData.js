// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorkType = require('./WorkType.js');
let TurnSignal = require('./TurnSignal.js');
let FrontLightState = require('./FrontLightState.js');
let LeverStatus = require('./LeverStatus.js');
let BrakeLightStatus = require('./BrakeLightStatus.js');
let LeverType = require('./LeverType.js');
let LightModeState = require('./LightModeState.js');
let FrontLightSwitchState = require('./FrontLightSwitchState.js');

//-----------------------------------------------------------

class VehicleLightReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.turn_signal_type = null;
      this.front_light = null;
      this.width_light = null;
      this.reversing_light = null;
      this.front_fog_light = null;
      this.rear_fog_light = null;
      this.lever_state = null;
      this.position_light_status = null;
      this.brake_light = null;
      this.lever_type = null;
      this.auto_light_ctrl_state = null;
      this.light_mode_status = null;
      this.front_light_switch_state = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('driver_work_type')) {
        this.driver_work_type = initObj.driver_work_type
      }
      else {
        this.driver_work_type = new WorkType();
      }
      if (initObj.hasOwnProperty('turn_signal_type')) {
        this.turn_signal_type = initObj.turn_signal_type
      }
      else {
        this.turn_signal_type = new TurnSignal();
      }
      if (initObj.hasOwnProperty('front_light')) {
        this.front_light = initObj.front_light
      }
      else {
        this.front_light = new FrontLightState();
      }
      if (initObj.hasOwnProperty('width_light')) {
        this.width_light = initObj.width_light
      }
      else {
        this.width_light = false;
      }
      if (initObj.hasOwnProperty('reversing_light')) {
        this.reversing_light = initObj.reversing_light
      }
      else {
        this.reversing_light = false;
      }
      if (initObj.hasOwnProperty('front_fog_light')) {
        this.front_fog_light = initObj.front_fog_light
      }
      else {
        this.front_fog_light = false;
      }
      if (initObj.hasOwnProperty('rear_fog_light')) {
        this.rear_fog_light = initObj.rear_fog_light
      }
      else {
        this.rear_fog_light = false;
      }
      if (initObj.hasOwnProperty('lever_state')) {
        this.lever_state = initObj.lever_state
      }
      else {
        this.lever_state = new LeverStatus();
      }
      if (initObj.hasOwnProperty('position_light_status')) {
        this.position_light_status = initObj.position_light_status
      }
      else {
        this.position_light_status = false;
      }
      if (initObj.hasOwnProperty('brake_light')) {
        this.brake_light = initObj.brake_light
      }
      else {
        this.brake_light = new BrakeLightStatus();
      }
      if (initObj.hasOwnProperty('lever_type')) {
        this.lever_type = initObj.lever_type
      }
      else {
        this.lever_type = new LeverType();
      }
      if (initObj.hasOwnProperty('auto_light_ctrl_state')) {
        this.auto_light_ctrl_state = initObj.auto_light_ctrl_state
      }
      else {
        this.auto_light_ctrl_state = false;
      }
      if (initObj.hasOwnProperty('light_mode_status')) {
        this.light_mode_status = initObj.light_mode_status
      }
      else {
        this.light_mode_status = new LightModeState();
      }
      if (initObj.hasOwnProperty('front_light_switch_state')) {
        this.front_light_switch_state = initObj.front_light_switch_state
      }
      else {
        this.front_light_switch_state = new FrontLightSwitchState();
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLightReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [turn_signal_type]
    bufferOffset = TurnSignal.serialize(obj.turn_signal_type, buffer, bufferOffset);
    // Serialize message field [front_light]
    bufferOffset = FrontLightState.serialize(obj.front_light, buffer, bufferOffset);
    // Serialize message field [width_light]
    bufferOffset = _serializer.bool(obj.width_light, buffer, bufferOffset);
    // Serialize message field [reversing_light]
    bufferOffset = _serializer.bool(obj.reversing_light, buffer, bufferOffset);
    // Serialize message field [front_fog_light]
    bufferOffset = _serializer.bool(obj.front_fog_light, buffer, bufferOffset);
    // Serialize message field [rear_fog_light]
    bufferOffset = _serializer.bool(obj.rear_fog_light, buffer, bufferOffset);
    // Serialize message field [lever_state]
    bufferOffset = LeverStatus.serialize(obj.lever_state, buffer, bufferOffset);
    // Serialize message field [position_light_status]
    bufferOffset = _serializer.bool(obj.position_light_status, buffer, bufferOffset);
    // Serialize message field [brake_light]
    bufferOffset = BrakeLightStatus.serialize(obj.brake_light, buffer, bufferOffset);
    // Serialize message field [lever_type]
    bufferOffset = LeverType.serialize(obj.lever_type, buffer, bufferOffset);
    // Serialize message field [auto_light_ctrl_state]
    bufferOffset = _serializer.bool(obj.auto_light_ctrl_state, buffer, bufferOffset);
    // Serialize message field [light_mode_status]
    bufferOffset = LightModeState.serialize(obj.light_mode_status, buffer, bufferOffset);
    // Serialize message field [front_light_switch_state]
    bufferOffset = FrontLightSwitchState.serialize(obj.front_light_switch_state, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLightReportData
    let len;
    let data = new VehicleLightReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal_type]
    data.turn_signal_type = TurnSignal.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_light]
    data.front_light = FrontLightState.deserialize(buffer, bufferOffset);
    // Deserialize message field [width_light]
    data.width_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reversing_light]
    data.reversing_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_fog_light]
    data.front_fog_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_fog_light]
    data.rear_fog_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lever_state]
    data.lever_state = LeverStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_light_status]
    data.position_light_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_light]
    data.brake_light = BrakeLightStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [lever_type]
    data.lever_type = LeverType.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_light_ctrl_state]
    data.auto_light_ctrl_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [light_mode_status]
    data.light_mode_status = LightModeState.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_light_switch_state]
    data.front_light_switch_state = FrontLightSwitchState.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleLightReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2aff46d4a50d3f8495bd5d2edf45ed3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/TurnSignal turn_signal_type
    endpoint_msgs/FrontLightState front_light
    bool width_light
    bool reversing_light
    bool front_fog_light
    bool rear_fog_light
    endpoint_msgs/LeverStatus lever_state
    bool position_light_status
    endpoint_msgs/BrakeLightStatus brake_light
    endpoint_msgs/LeverType lever_type
    bool auto_light_ctrl_state
    endpoint_msgs/LightModeState light_mode_status
    endpoint_msgs/FrontLightSwitchState front_light_switch_state
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
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
    MSG: endpoint_msgs/LeverStatus
    uint8 LEVER_STATE_OFF = 0
    uint8 LEVER_STATE_LEFT = 1
    uint8 LEVER_STATE_RIGHT = 2
    uint8 LEVER_STATE_LEFT_INVALID = 3
    uint8 LEVER_STATE_RIGHT_INVALID = 4
    uint8 LEVER_STATE_LEFT_LIGHT = 5
    uint8 LEVER_STATE_RIGHT_LIGHT = 6
    uint8 LEVER_STATE_RESERVED1 = 7
    uint8 LEVER_STATE_RESERVED3 = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeLightStatus
    uint8 BRAKE_LIGHT_NONE = 0
    uint8 BRAKE_LIGHT_OFF = 1
    uint8 BRAKE_LIGHT_ON = 2
    uint8 BRAKE_LIGHT_INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LeverType
    uint8 LEVER_TYPE_MECHANICAL = 0
    uint8 LEVER_TYPE_ELECTRONIC = 1
    uint8 LEVER_STATE_RESERVED1 = 2
    uint8 LEVER_STATE_RESERVED2 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LightModeState
    uint8 LIGHT_OFF = 0
    uint8 LIGHT_AUTO = 1
    uint8 LIGHT_LOW_BEAM = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightSwitchState
    uint8 FRONT_LIGHT_OFF = 0
    uint8 FRONT_LIGHT_LOW = 1
    uint8 FRONT_LIGHT_HIGH = 2
    uint8 FRONT_LIGHT_FLASH = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLightReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.driver_work_type !== undefined) {
      resolved.driver_work_type = WorkType.Resolve(msg.driver_work_type)
    }
    else {
      resolved.driver_work_type = new WorkType()
    }

    if (msg.turn_signal_type !== undefined) {
      resolved.turn_signal_type = TurnSignal.Resolve(msg.turn_signal_type)
    }
    else {
      resolved.turn_signal_type = new TurnSignal()
    }

    if (msg.front_light !== undefined) {
      resolved.front_light = FrontLightState.Resolve(msg.front_light)
    }
    else {
      resolved.front_light = new FrontLightState()
    }

    if (msg.width_light !== undefined) {
      resolved.width_light = msg.width_light;
    }
    else {
      resolved.width_light = false
    }

    if (msg.reversing_light !== undefined) {
      resolved.reversing_light = msg.reversing_light;
    }
    else {
      resolved.reversing_light = false
    }

    if (msg.front_fog_light !== undefined) {
      resolved.front_fog_light = msg.front_fog_light;
    }
    else {
      resolved.front_fog_light = false
    }

    if (msg.rear_fog_light !== undefined) {
      resolved.rear_fog_light = msg.rear_fog_light;
    }
    else {
      resolved.rear_fog_light = false
    }

    if (msg.lever_state !== undefined) {
      resolved.lever_state = LeverStatus.Resolve(msg.lever_state)
    }
    else {
      resolved.lever_state = new LeverStatus()
    }

    if (msg.position_light_status !== undefined) {
      resolved.position_light_status = msg.position_light_status;
    }
    else {
      resolved.position_light_status = false
    }

    if (msg.brake_light !== undefined) {
      resolved.brake_light = BrakeLightStatus.Resolve(msg.brake_light)
    }
    else {
      resolved.brake_light = new BrakeLightStatus()
    }

    if (msg.lever_type !== undefined) {
      resolved.lever_type = LeverType.Resolve(msg.lever_type)
    }
    else {
      resolved.lever_type = new LeverType()
    }

    if (msg.auto_light_ctrl_state !== undefined) {
      resolved.auto_light_ctrl_state = msg.auto_light_ctrl_state;
    }
    else {
      resolved.auto_light_ctrl_state = false
    }

    if (msg.light_mode_status !== undefined) {
      resolved.light_mode_status = LightModeState.Resolve(msg.light_mode_status)
    }
    else {
      resolved.light_mode_status = new LightModeState()
    }

    if (msg.front_light_switch_state !== undefined) {
      resolved.front_light_switch_state = FrontLightSwitchState.Resolve(msg.front_light_switch_state)
    }
    else {
      resolved.front_light_switch_state = new FrontLightSwitchState()
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = VehicleLightReportData;

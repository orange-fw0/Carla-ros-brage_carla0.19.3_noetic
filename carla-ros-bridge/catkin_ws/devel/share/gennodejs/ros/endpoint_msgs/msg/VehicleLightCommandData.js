// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TurnSignal = require('./TurnSignal.js');
let FrontLightState = require('./FrontLightState.js');

//-----------------------------------------------------------

class VehicleLightCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.light_enable = null;
      this.turn_signal = null;
      this.front_light = null;
      this.width_light = null;
      this.reversing_light = null;
      this.front_fog_light = null;
      this.rear_fog_light = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('light_enable')) {
        this.light_enable = initObj.light_enable
      }
      else {
        this.light_enable = false;
      }
      if (initObj.hasOwnProperty('turn_signal')) {
        this.turn_signal = initObj.turn_signal
      }
      else {
        this.turn_signal = new TurnSignal();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLightCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [light_enable]
    bufferOffset = _serializer.bool(obj.light_enable, buffer, bufferOffset);
    // Serialize message field [turn_signal]
    bufferOffset = TurnSignal.serialize(obj.turn_signal, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLightCommandData
    let len;
    let data = new VehicleLightCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [light_enable]
    data.light_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_signal]
    data.turn_signal = TurnSignal.deserialize(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleLightCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa194b3e2cac2ea7fdf59c9b8fa0d5c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLightCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.light_enable !== undefined) {
      resolved.light_enable = msg.light_enable;
    }
    else {
      resolved.light_enable = false
    }

    if (msg.turn_signal !== undefined) {
      resolved.turn_signal = TurnSignal.Resolve(msg.turn_signal)
    }
    else {
      resolved.turn_signal = new TurnSignal()
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

    return resolved;
    }
};

module.exports = VehicleLightCommandData;

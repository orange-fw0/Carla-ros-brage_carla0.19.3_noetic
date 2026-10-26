// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleLightCommandData = require('./VehicleLightCommandData.js');

//-----------------------------------------------------------

class VehicleLightCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_light_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_light_command_data')) {
        this.vehicle_light_command_data = initObj.vehicle_light_command_data
      }
      else {
        this.vehicle_light_command_data = new VehicleLightCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLightCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_light_command_data]
    bufferOffset = VehicleLightCommandData.serialize(obj.vehicle_light_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLightCommand
    let len;
    let data = new VehicleLightCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_light_command_data]
    data.vehicle_light_command_data = VehicleLightCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleLightCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa46016dcab547655c996a6a4d1a3a9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLightCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_light_command_data !== undefined) {
      resolved.vehicle_light_command_data = VehicleLightCommandData.Resolve(msg.vehicle_light_command_data)
    }
    else {
      resolved.vehicle_light_command_data = new VehicleLightCommandData()
    }

    return resolved;
    }
};

// Constants for message
VehicleLightCommand.Constants = {
  VEHICLE_LIGHT_COMMAND_DATA: 1,
}

module.exports = VehicleLightCommand;

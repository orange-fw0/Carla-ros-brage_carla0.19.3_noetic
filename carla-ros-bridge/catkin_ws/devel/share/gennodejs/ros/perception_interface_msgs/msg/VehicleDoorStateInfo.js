// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleDoorStateEnum = require('./VehicleDoorStateEnum.js');

//-----------------------------------------------------------

class VehicleDoorStateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.door_state_on_score = null;
      this.door_state = null;
    }
    else {
      if (initObj.hasOwnProperty('door_state_on_score')) {
        this.door_state_on_score = initObj.door_state_on_score
      }
      else {
        this.door_state_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('door_state')) {
        this.door_state = initObj.door_state
      }
      else {
        this.door_state = new VehicleDoorStateEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleDoorStateInfo
    // Serialize message field [door_state_on_score]
    bufferOffset = _serializer.float32(obj.door_state_on_score, buffer, bufferOffset);
    // Serialize message field [door_state]
    bufferOffset = VehicleDoorStateEnum.serialize(obj.door_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleDoorStateInfo
    let len;
    let data = new VehicleDoorStateInfo(null);
    // Deserialize message field [door_state_on_score]
    data.door_state_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [door_state]
    data.door_state = VehicleDoorStateEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleDoorStateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49a3f186ea63a7da2a4659cd52f7235b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 door_state_on_score
    perception_interface_msgs/VehicleDoorStateEnum door_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleDoorStateEnum
    uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
    uint8 VEHICLE_DOORSTATE_OFF = 1
    uint8 VEHICLE_DOORSTATE_ON = 2
    uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
    uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
    uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
    uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
    uint8 VEHICLE_DOOR_OPEN_BOTH = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleDoorStateInfo(null);
    if (msg.door_state_on_score !== undefined) {
      resolved.door_state_on_score = msg.door_state_on_score;
    }
    else {
      resolved.door_state_on_score = 0.0
    }

    if (msg.door_state !== undefined) {
      resolved.door_state = VehicleDoorStateEnum.Resolve(msg.door_state)
    }
    else {
      resolved.door_state = new VehicleDoorStateEnum()
    }

    return resolved;
    }
};

module.exports = VehicleDoorStateInfo;

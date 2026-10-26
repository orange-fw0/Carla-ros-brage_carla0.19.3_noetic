// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleCutinStateEnum = require('./VehicleCutinStateEnum.js');

//-----------------------------------------------------------

class VehicleCutinStateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cutin_state_on_score = null;
      this.cutin_state = null;
    }
    else {
      if (initObj.hasOwnProperty('cutin_state_on_score')) {
        this.cutin_state_on_score = initObj.cutin_state_on_score
      }
      else {
        this.cutin_state_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('cutin_state')) {
        this.cutin_state = initObj.cutin_state
      }
      else {
        this.cutin_state = new VehicleCutinStateEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCutinStateInfo
    // Serialize message field [cutin_state_on_score]
    bufferOffset = _serializer.float32(obj.cutin_state_on_score, buffer, bufferOffset);
    // Serialize message field [cutin_state]
    bufferOffset = VehicleCutinStateEnum.serialize(obj.cutin_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCutinStateInfo
    let len;
    let data = new VehicleCutinStateInfo(null);
    // Deserialize message field [cutin_state_on_score]
    data.cutin_state_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cutin_state]
    data.cutin_state = VehicleCutinStateEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleCutinStateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad83d7a1b742550b2d26a9be211c7453';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cutin_state_on_score
    perception_interface_msgs/VehicleCutinStateEnum cutin_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleCutinStateEnum
    uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
    uint8 VEHICLE_CUTINSTATE_OFF = 1
    uint8 VEHICLE_CUTINSTATE_ON = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleCutinStateInfo(null);
    if (msg.cutin_state_on_score !== undefined) {
      resolved.cutin_state_on_score = msg.cutin_state_on_score;
    }
    else {
      resolved.cutin_state_on_score = 0.0
    }

    if (msg.cutin_state !== undefined) {
      resolved.cutin_state = VehicleCutinStateEnum.Resolve(msg.cutin_state)
    }
    else {
      resolved.cutin_state = new VehicleCutinStateEnum()
    }

    return resolved;
    }
};

module.exports = VehicleCutinStateInfo;

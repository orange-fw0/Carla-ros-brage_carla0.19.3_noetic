// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleBeamLightEnum = require('./VehicleBeamLightEnum.js');

//-----------------------------------------------------------

class VehicleBeamLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.beam_light_on_score = null;
      this.beam_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('beam_light_on_score')) {
        this.beam_light_on_score = initObj.beam_light_on_score
      }
      else {
        this.beam_light_on_score = 0.0;
      }
      if (initObj.hasOwnProperty('beam_light_state')) {
        this.beam_light_state = initObj.beam_light_state
      }
      else {
        this.beam_light_state = new VehicleBeamLightEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleBeamLightInfo
    // Serialize message field [beam_light_on_score]
    bufferOffset = _serializer.float32(obj.beam_light_on_score, buffer, bufferOffset);
    // Serialize message field [beam_light_state]
    bufferOffset = VehicleBeamLightEnum.serialize(obj.beam_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleBeamLightInfo
    let len;
    let data = new VehicleBeamLightInfo(null);
    // Deserialize message field [beam_light_on_score]
    data.beam_light_on_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beam_light_state]
    data.beam_light_state = VehicleBeamLightEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleBeamLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ccd62a35dcb7c8f93813ae0aab70949';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 beam_light_on_score
    perception_interface_msgs/VehicleBeamLightEnum beam_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBeamLightEnum
    uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BEAMLIGHT_OFF = 1
    uint8 VEHICLE_BEAMLIGHT_LOW = 2
    uint8 VEHICLE_BEAMLIGHT_HIGH = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleBeamLightInfo(null);
    if (msg.beam_light_on_score !== undefined) {
      resolved.beam_light_on_score = msg.beam_light_on_score;
    }
    else {
      resolved.beam_light_on_score = 0.0
    }

    if (msg.beam_light_state !== undefined) {
      resolved.beam_light_state = VehicleBeamLightEnum.Resolve(msg.beam_light_state)
    }
    else {
      resolved.beam_light_state = new VehicleBeamLightEnum()
    }

    return resolved;
    }
};

module.exports = VehicleBeamLightInfo;

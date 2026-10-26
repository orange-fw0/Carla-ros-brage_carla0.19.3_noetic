// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xPhaseState = require('./V2xPhaseState.js');

//-----------------------------------------------------------

class V2xPhase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.phase_id = null;
      this.v2x_phase_state = null;
    }
    else {
      if (initObj.hasOwnProperty('phase_id')) {
        this.phase_id = initObj.phase_id
      }
      else {
        this.phase_id = 0;
      }
      if (initObj.hasOwnProperty('v2x_phase_state')) {
        this.v2x_phase_state = initObj.v2x_phase_state
      }
      else {
        this.v2x_phase_state = new V2xPhaseState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xPhase
    // Serialize message field [phase_id]
    bufferOffset = _serializer.int32(obj.phase_id, buffer, bufferOffset);
    // Serialize message field [v2x_phase_state]
    bufferOffset = V2xPhaseState.serialize(obj.v2x_phase_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xPhase
    let len;
    let data = new V2xPhase(null);
    // Deserialize message field [phase_id]
    data.phase_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [v2x_phase_state]
    data.v2x_phase_state = V2xPhaseState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xPhase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '742f1ef510e48f41e0c6b694531938fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 phase_id
    v2x_msgs/V2xPhaseState v2x_phase_state
    
    ================================================================================
    MSG: v2x_msgs/V2xPhaseState
    perception_interface_msgs/TrafficLightStatusEnum status
    float64 start_time
    float64 likely_end_time
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xPhase(null);
    if (msg.phase_id !== undefined) {
      resolved.phase_id = msg.phase_id;
    }
    else {
      resolved.phase_id = 0
    }

    if (msg.v2x_phase_state !== undefined) {
      resolved.v2x_phase_state = V2xPhaseState.Resolve(msg.v2x_phase_state)
    }
    else {
      resolved.v2x_phase_state = new V2xPhaseState()
    }

    return resolved;
    }
};

module.exports = V2xPhase;

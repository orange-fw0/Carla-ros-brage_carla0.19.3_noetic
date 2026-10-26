// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xPhase = require('./V2xPhase.js');

//-----------------------------------------------------------

class V2xIntersectionState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intersection_id = null;
      this.v2x_phase = null;
    }
    else {
      if (initObj.hasOwnProperty('intersection_id')) {
        this.intersection_id = initObj.intersection_id
      }
      else {
        this.intersection_id = 0;
      }
      if (initObj.hasOwnProperty('v2x_phase')) {
        this.v2x_phase = initObj.v2x_phase
      }
      else {
        this.v2x_phase = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xIntersectionState
    // Serialize message field [intersection_id]
    bufferOffset = _serializer.int32(obj.intersection_id, buffer, bufferOffset);
    // Serialize message field [v2x_phase]
    // Serialize the length for message field [v2x_phase]
    bufferOffset = _serializer.uint32(obj.v2x_phase.length, buffer, bufferOffset);
    obj.v2x_phase.forEach((val) => {
      bufferOffset = V2xPhase.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xIntersectionState
    let len;
    let data = new V2xIntersectionState(null);
    // Deserialize message field [intersection_id]
    data.intersection_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [v2x_phase]
    // Deserialize array length for message field [v2x_phase]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.v2x_phase = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.v2x_phase[i] = V2xPhase.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 21 * object.v2x_phase.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xIntersectionState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '678dc7bfbee0a47d506f17354aae9a41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 intersection_id
    v2x_msgs/V2xPhase[] v2x_phase
    
    ================================================================================
    MSG: v2x_msgs/V2xPhase
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
    const resolved = new V2xIntersectionState(null);
    if (msg.intersection_id !== undefined) {
      resolved.intersection_id = msg.intersection_id;
    }
    else {
      resolved.intersection_id = 0
    }

    if (msg.v2x_phase !== undefined) {
      resolved.v2x_phase = new Array(msg.v2x_phase.length);
      for (let i = 0; i < resolved.v2x_phase.length; ++i) {
        resolved.v2x_phase[i] = V2xPhase.Resolve(msg.v2x_phase[i]);
      }
    }
    else {
      resolved.v2x_phase = []
    }

    return resolved;
    }
};

module.exports = V2xIntersectionState;

// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xIntersectionState = require('./V2xIntersectionState.js');

//-----------------------------------------------------------

class V2xTrafficLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.v2x_intersection_state = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('v2x_intersection_state')) {
        this.v2x_intersection_state = initObj.v2x_intersection_state
      }
      else {
        this.v2x_intersection_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xTrafficLightInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [v2x_intersection_state]
    // Serialize the length for message field [v2x_intersection_state]
    bufferOffset = _serializer.uint32(obj.v2x_intersection_state.length, buffer, bufferOffset);
    obj.v2x_intersection_state.forEach((val) => {
      bufferOffset = V2xIntersectionState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xTrafficLightInfo
    let len;
    let data = new V2xTrafficLightInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [v2x_intersection_state]
    // Deserialize array length for message field [v2x_intersection_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.v2x_intersection_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.v2x_intersection_state[i] = V2xIntersectionState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.v2x_intersection_state.forEach((val) => {
      length += V2xIntersectionState.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xTrafficLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '626a56c32b9882f64677a70e62d28a68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 V2X_INTERSECTION_STATE = 1
    uint8 available
    v2x_msgs/V2xIntersectionState[] v2x_intersection_state
    
    ================================================================================
    MSG: v2x_msgs/V2xIntersectionState
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
    const resolved = new V2xTrafficLightInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.v2x_intersection_state !== undefined) {
      resolved.v2x_intersection_state = new Array(msg.v2x_intersection_state.length);
      for (let i = 0; i < resolved.v2x_intersection_state.length; ++i) {
        resolved.v2x_intersection_state[i] = V2xIntersectionState.Resolve(msg.v2x_intersection_state[i]);
      }
    }
    else {
      resolved.v2x_intersection_state = []
    }

    return resolved;
    }
};

// Constants for message
V2xTrafficLightInfo.Constants = {
  V2X_INTERSECTION_STATE: 1,
}

module.exports = V2xTrafficLightInfo;

// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class V2xPhaseState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.start_time = null;
      this.likely_end_time = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new perception_interface_msgs.msg.TrafficLightStatusEnum();
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0.0;
      }
      if (initObj.hasOwnProperty('likely_end_time')) {
        this.likely_end_time = initObj.likely_end_time
      }
      else {
        this.likely_end_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xPhaseState
    // Serialize message field [status]
    bufferOffset = perception_interface_msgs.msg.TrafficLightStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.float64(obj.start_time, buffer, bufferOffset);
    // Serialize message field [likely_end_time]
    bufferOffset = _serializer.float64(obj.likely_end_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xPhaseState
    let len;
    let data = new V2xPhaseState(null);
    // Deserialize message field [status]
    data.status = perception_interface_msgs.msg.TrafficLightStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [likely_end_time]
    data.likely_end_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xPhaseState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '556fa6a805144e1ce137ff42b839324d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new V2xPhaseState(null);
    if (msg.status !== undefined) {
      resolved.status = perception_interface_msgs.msg.TrafficLightStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new perception_interface_msgs.msg.TrafficLightStatusEnum()
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0.0
    }

    if (msg.likely_end_time !== undefined) {
      resolved.likely_end_time = msg.likely_end_time;
    }
    else {
      resolved.likely_end_time = 0.0
    }

    return resolved;
    }
};

module.exports = V2xPhaseState;

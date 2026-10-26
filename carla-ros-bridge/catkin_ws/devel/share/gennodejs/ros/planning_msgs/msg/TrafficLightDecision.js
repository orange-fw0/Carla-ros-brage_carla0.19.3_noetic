// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficLightDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traffic_light_state = null;
      this.stop_reason = null;
      this.stop_flag = null;
      this.is_passed_stop_line = null;
      this.faster_pass = null;
    }
    else {
      if (initObj.hasOwnProperty('traffic_light_state')) {
        this.traffic_light_state = initObj.traffic_light_state
      }
      else {
        this.traffic_light_state = 0;
      }
      if (initObj.hasOwnProperty('stop_reason')) {
        this.stop_reason = initObj.stop_reason
      }
      else {
        this.stop_reason = 0;
      }
      if (initObj.hasOwnProperty('stop_flag')) {
        this.stop_flag = initObj.stop_flag
      }
      else {
        this.stop_flag = false;
      }
      if (initObj.hasOwnProperty('is_passed_stop_line')) {
        this.is_passed_stop_line = initObj.is_passed_stop_line
      }
      else {
        this.is_passed_stop_line = false;
      }
      if (initObj.hasOwnProperty('faster_pass')) {
        this.faster_pass = initObj.faster_pass
      }
      else {
        this.faster_pass = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightDecision
    // Serialize message field [traffic_light_state]
    bufferOffset = _serializer.int32(obj.traffic_light_state, buffer, bufferOffset);
    // Serialize message field [stop_reason]
    bufferOffset = _serializer.int32(obj.stop_reason, buffer, bufferOffset);
    // Serialize message field [stop_flag]
    bufferOffset = _serializer.bool(obj.stop_flag, buffer, bufferOffset);
    // Serialize message field [is_passed_stop_line]
    bufferOffset = _serializer.bool(obj.is_passed_stop_line, buffer, bufferOffset);
    // Serialize message field [faster_pass]
    bufferOffset = _serializer.bool(obj.faster_pass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightDecision
    let len;
    let data = new TrafficLightDecision(null);
    // Deserialize message field [traffic_light_state]
    data.traffic_light_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_reason]
    data.stop_reason = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stop_flag]
    data.stop_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_passed_stop_line]
    data.is_passed_stop_line = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faster_pass]
    data.faster_pass = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TrafficLightDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3b63bda515ee9c08bd539eb146789f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 traffic_light_state
    int32 stop_reason
    bool stop_flag
    bool is_passed_stop_line
    bool faster_pass
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightDecision(null);
    if (msg.traffic_light_state !== undefined) {
      resolved.traffic_light_state = msg.traffic_light_state;
    }
    else {
      resolved.traffic_light_state = 0
    }

    if (msg.stop_reason !== undefined) {
      resolved.stop_reason = msg.stop_reason;
    }
    else {
      resolved.stop_reason = 0
    }

    if (msg.stop_flag !== undefined) {
      resolved.stop_flag = msg.stop_flag;
    }
    else {
      resolved.stop_flag = false
    }

    if (msg.is_passed_stop_line !== undefined) {
      resolved.is_passed_stop_line = msg.is_passed_stop_line;
    }
    else {
      resolved.is_passed_stop_line = false
    }

    if (msg.faster_pass !== undefined) {
      resolved.faster_pass = msg.faster_pass;
    }
    else {
      resolved.faster_pass = false
    }

    return resolved;
    }
};

module.exports = TrafficLightDecision;

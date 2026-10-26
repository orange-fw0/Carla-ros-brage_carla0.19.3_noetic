// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorkType = require('./WorkType.js');
let WiperStateType = require('./WiperStateType.js');

//-----------------------------------------------------------

class WiperReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.front_wiper_state = null;
      this.rear_wiper_state = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('driver_work_type')) {
        this.driver_work_type = initObj.driver_work_type
      }
      else {
        this.driver_work_type = new WorkType();
      }
      if (initObj.hasOwnProperty('front_wiper_state')) {
        this.front_wiper_state = initObj.front_wiper_state
      }
      else {
        this.front_wiper_state = new WiperStateType();
      }
      if (initObj.hasOwnProperty('rear_wiper_state')) {
        this.rear_wiper_state = initObj.rear_wiper_state
      }
      else {
        this.rear_wiper_state = new WiperStateType();
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WiperReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [front_wiper_state]
    bufferOffset = WiperStateType.serialize(obj.front_wiper_state, buffer, bufferOffset);
    // Serialize message field [rear_wiper_state]
    bufferOffset = WiperStateType.serialize(obj.rear_wiper_state, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WiperReportData
    let len;
    let data = new WiperReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_wiper_state]
    data.front_wiper_state = WiperStateType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear_wiper_state]
    data.rear_wiper_state = WiperStateType.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WiperReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b255574b7ee336319b134fbb022bab7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/WiperStateType front_wiper_state
    endpoint_msgs/WiperStateType rear_wiper_state
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/WiperStateType
    uint8 OFF = 0
    uint8 AUTO_OFF = 1
    uint8 AUTO_MOVING = 2
    uint8 MANUAL_OFF = 3
    uint8 MANUAL_ON = 4
    uint8 MANUAL_LOW = 5
    uint8 MANUAL_HIGH = 6
    uint8 MIST_FLICK = 7
    uint8 WASH = 8
    uint8 AUTO_LOW = 9
    uint8 AUTO_HIGH = 10
    uint8 COURTESY_WIPE = 11
    uint8 AUTO_ADJUST = 12
    uint8 RESERVED = 13
    uint8 STALLED = 14
    uint8 NONE = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WiperReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.driver_work_type !== undefined) {
      resolved.driver_work_type = WorkType.Resolve(msg.driver_work_type)
    }
    else {
      resolved.driver_work_type = new WorkType()
    }

    if (msg.front_wiper_state !== undefined) {
      resolved.front_wiper_state = WiperStateType.Resolve(msg.front_wiper_state)
    }
    else {
      resolved.front_wiper_state = new WiperStateType()
    }

    if (msg.rear_wiper_state !== undefined) {
      resolved.rear_wiper_state = WiperStateType.Resolve(msg.rear_wiper_state)
    }
    else {
      resolved.rear_wiper_state = new WiperStateType()
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = WiperReportData;

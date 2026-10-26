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
let Gear = require('./Gear.js');
let GearReject = require('./GearReject.js');

//-----------------------------------------------------------

class GearReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.command = null;
      this.current_state = null;
      this.reject = null;
      this.override = null;
      this.ready = null;
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
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Gear();
      }
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = new Gear();
      }
      if (initObj.hasOwnProperty('reject')) {
        this.reject = initObj.reject
      }
      else {
        this.reject = new GearReject();
      }
      if (initObj.hasOwnProperty('override')) {
        this.override = initObj.override
      }
      else {
        this.override = false;
      }
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = false;
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
    // Serializes a message object of type GearReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Gear.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [current_state]
    bufferOffset = Gear.serialize(obj.current_state, buffer, bufferOffset);
    // Serialize message field [reject]
    bufferOffset = GearReject.serialize(obj.reject, buffer, bufferOffset);
    // Serialize message field [override]
    bufferOffset = _serializer.bool(obj.override, buffer, bufferOffset);
    // Serialize message field [ready]
    bufferOffset = _serializer.bool(obj.ready, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearReportData
    let len;
    let data = new GearReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_state]
    data.current_state = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [reject]
    data.reject = GearReject.deserialize(buffer, bufferOffset);
    // Deserialize message field [override]
    data.override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready]
    data.ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/GearReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cc81e97017d51ec84b6f8c273bed9fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/Gear command
    endpoint_msgs/Gear current_state
    endpoint_msgs/GearReject reject
    bool override
    bool ready
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
    MSG: endpoint_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/GearReject
    uint8 NONE = 0
    uint8 SHIFT_IN_PROGRESS = 1
    uint8 OVERRIDE = 2
    uint8 ROTARY_LOW = 3
    uint8 ROTARY_PARK = 4
    uint8 VEHICLE = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GearReportData(null);
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

    if (msg.command !== undefined) {
      resolved.command = Gear.Resolve(msg.command)
    }
    else {
      resolved.command = new Gear()
    }

    if (msg.current_state !== undefined) {
      resolved.current_state = Gear.Resolve(msg.current_state)
    }
    else {
      resolved.current_state = new Gear()
    }

    if (msg.reject !== undefined) {
      resolved.reject = GearReject.Resolve(msg.reject)
    }
    else {
      resolved.reject = new GearReject()
    }

    if (msg.override !== undefined) {
      resolved.override = msg.override;
    }
    else {
      resolved.override = false
    }

    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = false
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

module.exports = GearReportData;

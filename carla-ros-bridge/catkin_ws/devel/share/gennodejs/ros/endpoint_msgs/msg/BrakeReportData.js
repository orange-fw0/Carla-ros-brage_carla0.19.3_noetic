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
let BrakeType = require('./BrakeType.js');

//-----------------------------------------------------------

class BrakeReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.brake_type = null;
      this.pedal_input = null;
      this.brake_command = null;
      this.brake_output = null;
      this.override = null;
      this.ahb_exec_brake_force = null;
      this.ahb_exec_brake_force_valid = null;
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
      if (initObj.hasOwnProperty('brake_type')) {
        this.brake_type = initObj.brake_type
      }
      else {
        this.brake_type = new BrakeType();
      }
      if (initObj.hasOwnProperty('pedal_input')) {
        this.pedal_input = initObj.pedal_input
      }
      else {
        this.pedal_input = 0.0;
      }
      if (initObj.hasOwnProperty('brake_command')) {
        this.brake_command = initObj.brake_command
      }
      else {
        this.brake_command = 0.0;
      }
      if (initObj.hasOwnProperty('brake_output')) {
        this.brake_output = initObj.brake_output
      }
      else {
        this.brake_output = 0.0;
      }
      if (initObj.hasOwnProperty('override')) {
        this.override = initObj.override
      }
      else {
        this.override = false;
      }
      if (initObj.hasOwnProperty('ahb_exec_brake_force')) {
        this.ahb_exec_brake_force = initObj.ahb_exec_brake_force
      }
      else {
        this.ahb_exec_brake_force = 0.0;
      }
      if (initObj.hasOwnProperty('ahb_exec_brake_force_valid')) {
        this.ahb_exec_brake_force_valid = initObj.ahb_exec_brake_force_valid
      }
      else {
        this.ahb_exec_brake_force_valid = false;
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
    // Serializes a message object of type BrakeReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [brake_type]
    bufferOffset = BrakeType.serialize(obj.brake_type, buffer, bufferOffset);
    // Serialize message field [pedal_input]
    bufferOffset = _serializer.float32(obj.pedal_input, buffer, bufferOffset);
    // Serialize message field [brake_command]
    bufferOffset = _serializer.float32(obj.brake_command, buffer, bufferOffset);
    // Serialize message field [brake_output]
    bufferOffset = _serializer.float32(obj.brake_output, buffer, bufferOffset);
    // Serialize message field [override]
    bufferOffset = _serializer.bool(obj.override, buffer, bufferOffset);
    // Serialize message field [ahb_exec_brake_force]
    bufferOffset = _serializer.float32(obj.ahb_exec_brake_force, buffer, bufferOffset);
    // Serialize message field [ahb_exec_brake_force_valid]
    bufferOffset = _serializer.bool(obj.ahb_exec_brake_force_valid, buffer, bufferOffset);
    // Serialize message field [ready]
    bufferOffset = _serializer.bool(obj.ready, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeReportData
    let len;
    let data = new BrakeReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_type]
    data.brake_type = BrakeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [pedal_input]
    data.pedal_input = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_command]
    data.brake_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_output]
    data.brake_output = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [override]
    data.override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ahb_exec_brake_force]
    data.ahb_exec_brake_force = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ahb_exec_brake_force_valid]
    data.ahb_exec_brake_force_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready]
    data.ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf668966e40d0ee16cd0a310cbbab49e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/BrakeType brake_type
    float32 pedal_input
    float32 brake_command
    float32 brake_output
    bool override
    float32 ahb_exec_brake_force
    bool ahb_exec_brake_force_valid
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
    MSG: endpoint_msgs/BrakeType
    uint8 PEDAL = 1
    uint8 DECELERATION = 2
    uint8 MASTER_CYLINDERPRESSURE = 3
    uint8 WHEEL_CYLINDERPRESSURE = 4
    uint8 TORQUE = 5
    uint8 DISTANCE = 6
    uint8 SV = 7
    uint8 RESERVED = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeReportData(null);
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

    if (msg.brake_type !== undefined) {
      resolved.brake_type = BrakeType.Resolve(msg.brake_type)
    }
    else {
      resolved.brake_type = new BrakeType()
    }

    if (msg.pedal_input !== undefined) {
      resolved.pedal_input = msg.pedal_input;
    }
    else {
      resolved.pedal_input = 0.0
    }

    if (msg.brake_command !== undefined) {
      resolved.brake_command = msg.brake_command;
    }
    else {
      resolved.brake_command = 0.0
    }

    if (msg.brake_output !== undefined) {
      resolved.brake_output = msg.brake_output;
    }
    else {
      resolved.brake_output = 0.0
    }

    if (msg.override !== undefined) {
      resolved.override = msg.override;
    }
    else {
      resolved.override = false
    }

    if (msg.ahb_exec_brake_force !== undefined) {
      resolved.ahb_exec_brake_force = msg.ahb_exec_brake_force;
    }
    else {
      resolved.ahb_exec_brake_force = 0.0
    }

    if (msg.ahb_exec_brake_force_valid !== undefined) {
      resolved.ahb_exec_brake_force_valid = msg.ahb_exec_brake_force_valid;
    }
    else {
      resolved.ahb_exec_brake_force_valid = false
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

module.exports = BrakeReportData;

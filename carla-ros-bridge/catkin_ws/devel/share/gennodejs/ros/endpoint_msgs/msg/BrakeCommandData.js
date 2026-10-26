// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BrakeType = require('./BrakeType.js');
let BrakeControlType = require('./BrakeControlType.js');
let AccStandstillType = require('./AccStandstillType.js');

//-----------------------------------------------------------

class BrakeCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.brake_enable = null;
      this.brake_type = null;
      this.brake_command = null;
      this.brake_control_type = null;
      this.brake_acc_standstill = null;
      this.brake_acc_go = null;
      this.epb_enable = null;
      this.epb_command = null;
      this.auto_hold_command = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = false;
      }
      if (initObj.hasOwnProperty('brake_type')) {
        this.brake_type = initObj.brake_type
      }
      else {
        this.brake_type = new BrakeType();
      }
      if (initObj.hasOwnProperty('brake_command')) {
        this.brake_command = initObj.brake_command
      }
      else {
        this.brake_command = 0.0;
      }
      if (initObj.hasOwnProperty('brake_control_type')) {
        this.brake_control_type = initObj.brake_control_type
      }
      else {
        this.brake_control_type = new BrakeControlType();
      }
      if (initObj.hasOwnProperty('brake_acc_standstill')) {
        this.brake_acc_standstill = initObj.brake_acc_standstill
      }
      else {
        this.brake_acc_standstill = new AccStandstillType();
      }
      if (initObj.hasOwnProperty('brake_acc_go')) {
        this.brake_acc_go = initObj.brake_acc_go
      }
      else {
        this.brake_acc_go = false;
      }
      if (initObj.hasOwnProperty('epb_enable')) {
        this.epb_enable = initObj.epb_enable
      }
      else {
        this.epb_enable = false;
      }
      if (initObj.hasOwnProperty('epb_command')) {
        this.epb_command = initObj.epb_command
      }
      else {
        this.epb_command = false;
      }
      if (initObj.hasOwnProperty('auto_hold_command')) {
        this.auto_hold_command = initObj.auto_hold_command
      }
      else {
        this.auto_hold_command = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.bool(obj.brake_enable, buffer, bufferOffset);
    // Serialize message field [brake_type]
    bufferOffset = BrakeType.serialize(obj.brake_type, buffer, bufferOffset);
    // Serialize message field [brake_command]
    bufferOffset = _serializer.float32(obj.brake_command, buffer, bufferOffset);
    // Serialize message field [brake_control_type]
    bufferOffset = BrakeControlType.serialize(obj.brake_control_type, buffer, bufferOffset);
    // Serialize message field [brake_acc_standstill]
    bufferOffset = AccStandstillType.serialize(obj.brake_acc_standstill, buffer, bufferOffset);
    // Serialize message field [brake_acc_go]
    bufferOffset = _serializer.bool(obj.brake_acc_go, buffer, bufferOffset);
    // Serialize message field [epb_enable]
    bufferOffset = _serializer.bool(obj.epb_enable, buffer, bufferOffset);
    // Serialize message field [epb_command]
    bufferOffset = _serializer.bool(obj.epb_command, buffer, bufferOffset);
    // Serialize message field [auto_hold_command]
    bufferOffset = _serializer.bool(obj.auto_hold_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeCommandData
    let len;
    let data = new BrakeCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_type]
    data.brake_type = BrakeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_command]
    data.brake_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_control_type]
    data.brake_control_type = BrakeControlType.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_acc_standstill]
    data.brake_acc_standstill = AccStandstillType.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_acc_go]
    data.brake_acc_go = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [epb_enable]
    data.epb_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [epb_command]
    data.epb_command = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_hold_command]
    data.auto_hold_command = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f81045d29af37bdc362fe6429fbe41b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool brake_enable
    endpoint_msgs/BrakeType brake_type
    float32 brake_command
    endpoint_msgs/BrakeControlType brake_control_type
    endpoint_msgs/AccStandstillType brake_acc_standstill
    bool brake_acc_go
    bool epb_enable
    bool epb_command
    bool auto_hold_command
    
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
    
    ================================================================================
    MSG: endpoint_msgs/BrakeControlType
    uint8 NORMAL = 1
    uint8 EMERGENT = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AccStandstillType
    uint8 NO_REQUEST = 0
    uint8 REQUEST = 1
    uint8 REMIND_DRIVE_GO = 2
    uint8 RESERVED = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = false
    }

    if (msg.brake_type !== undefined) {
      resolved.brake_type = BrakeType.Resolve(msg.brake_type)
    }
    else {
      resolved.brake_type = new BrakeType()
    }

    if (msg.brake_command !== undefined) {
      resolved.brake_command = msg.brake_command;
    }
    else {
      resolved.brake_command = 0.0
    }

    if (msg.brake_control_type !== undefined) {
      resolved.brake_control_type = BrakeControlType.Resolve(msg.brake_control_type)
    }
    else {
      resolved.brake_control_type = new BrakeControlType()
    }

    if (msg.brake_acc_standstill !== undefined) {
      resolved.brake_acc_standstill = AccStandstillType.Resolve(msg.brake_acc_standstill)
    }
    else {
      resolved.brake_acc_standstill = new AccStandstillType()
    }

    if (msg.brake_acc_go !== undefined) {
      resolved.brake_acc_go = msg.brake_acc_go;
    }
    else {
      resolved.brake_acc_go = false
    }

    if (msg.epb_enable !== undefined) {
      resolved.epb_enable = msg.epb_enable;
    }
    else {
      resolved.epb_enable = false
    }

    if (msg.epb_command !== undefined) {
      resolved.epb_command = msg.epb_command;
    }
    else {
      resolved.epb_command = false
    }

    if (msg.auto_hold_command !== undefined) {
      resolved.auto_hold_command = msg.auto_hold_command;
    }
    else {
      resolved.auto_hold_command = false
    }

    return resolved;
    }
};

module.exports = BrakeCommandData;

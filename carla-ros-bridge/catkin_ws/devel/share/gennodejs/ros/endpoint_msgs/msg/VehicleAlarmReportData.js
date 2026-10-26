// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HandOffStatus = require('./HandOffStatus.js');
let FeetOffStatus = require('./FeetOffStatus.js');
let VehicleCrashStatus = require('./VehicleCrashStatus.js');

//-----------------------------------------------------------

class VehicleAlarmReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.seat_belt_alarm = null;
      this.seat_belt_tightening = null;
      this.steering_wheel_alarm = null;
      this.buzzer_alarm = null;
      this.steering_handoff = null;
      this.feet_off = null;
      this.pkg_fastswitch_enable = null;
      this.tire_alarm = null;
      this.vehicle_crash_status = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('seat_belt_alarm')) {
        this.seat_belt_alarm = initObj.seat_belt_alarm
      }
      else {
        this.seat_belt_alarm = false;
      }
      if (initObj.hasOwnProperty('seat_belt_tightening')) {
        this.seat_belt_tightening = initObj.seat_belt_tightening
      }
      else {
        this.seat_belt_tightening = false;
      }
      if (initObj.hasOwnProperty('steering_wheel_alarm')) {
        this.steering_wheel_alarm = initObj.steering_wheel_alarm
      }
      else {
        this.steering_wheel_alarm = false;
      }
      if (initObj.hasOwnProperty('buzzer_alarm')) {
        this.buzzer_alarm = initObj.buzzer_alarm
      }
      else {
        this.buzzer_alarm = false;
      }
      if (initObj.hasOwnProperty('steering_handoff')) {
        this.steering_handoff = initObj.steering_handoff
      }
      else {
        this.steering_handoff = new HandOffStatus();
      }
      if (initObj.hasOwnProperty('feet_off')) {
        this.feet_off = initObj.feet_off
      }
      else {
        this.feet_off = new FeetOffStatus();
      }
      if (initObj.hasOwnProperty('pkg_fastswitch_enable')) {
        this.pkg_fastswitch_enable = initObj.pkg_fastswitch_enable
      }
      else {
        this.pkg_fastswitch_enable = false;
      }
      if (initObj.hasOwnProperty('tire_alarm')) {
        this.tire_alarm = initObj.tire_alarm
      }
      else {
        this.tire_alarm = false;
      }
      if (initObj.hasOwnProperty('vehicle_crash_status')) {
        this.vehicle_crash_status = initObj.vehicle_crash_status
      }
      else {
        this.vehicle_crash_status = new VehicleCrashStatus();
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
    // Serializes a message object of type VehicleAlarmReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [seat_belt_alarm]
    bufferOffset = _serializer.bool(obj.seat_belt_alarm, buffer, bufferOffset);
    // Serialize message field [seat_belt_tightening]
    bufferOffset = _serializer.bool(obj.seat_belt_tightening, buffer, bufferOffset);
    // Serialize message field [steering_wheel_alarm]
    bufferOffset = _serializer.bool(obj.steering_wheel_alarm, buffer, bufferOffset);
    // Serialize message field [buzzer_alarm]
    bufferOffset = _serializer.bool(obj.buzzer_alarm, buffer, bufferOffset);
    // Serialize message field [steering_handoff]
    bufferOffset = HandOffStatus.serialize(obj.steering_handoff, buffer, bufferOffset);
    // Serialize message field [feet_off]
    bufferOffset = FeetOffStatus.serialize(obj.feet_off, buffer, bufferOffset);
    // Serialize message field [pkg_fastswitch_enable]
    bufferOffset = _serializer.bool(obj.pkg_fastswitch_enable, buffer, bufferOffset);
    // Serialize message field [tire_alarm]
    bufferOffset = _serializer.bool(obj.tire_alarm, buffer, bufferOffset);
    // Serialize message field [vehicle_crash_status]
    bufferOffset = VehicleCrashStatus.serialize(obj.vehicle_crash_status, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleAlarmReportData
    let len;
    let data = new VehicleAlarmReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [seat_belt_alarm]
    data.seat_belt_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [seat_belt_tightening]
    data.seat_belt_tightening = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_alarm]
    data.steering_wheel_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buzzer_alarm]
    data.buzzer_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_handoff]
    data.steering_handoff = HandOffStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [feet_off]
    data.feet_off = FeetOffStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [pkg_fastswitch_enable]
    data.pkg_fastswitch_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tire_alarm]
    data.tire_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_crash_status]
    data.vehicle_crash_status = VehicleCrashStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleAlarmReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77614ad3f82aa7f64ccfd6a72883ce41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool seat_belt_alarm
    bool seat_belt_tightening
    bool steering_wheel_alarm
    bool buzzer_alarm
    endpoint_msgs/HandOffStatus steering_handoff
    endpoint_msgs/FeetOffStatus feet_off
    bool pkg_fastswitch_enable
    bool tire_alarm
    endpoint_msgs/VehicleCrashStatus vehicle_crash_status
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/HandOffStatus
    uint8 HAND_OFF_STATUS_NONE = 0
    uint8 HAND_OFF_STATUS_TRUE = 1
    uint8 HAND_OFF_STATUS_FALSE = 2
    uint8 HAND_OFF_STATUS_INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FeetOffStatus
    uint8 FEET_OFF_STATUS_NONE = 0
    uint8 FEET_OFF_STATUS_TRUE = 1
    uint8 FEET_OFF_STATUS_FALSE = 2
    uint8 FEET_OFF_STATUS_INVALUD = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleCrashStatus
    uint8 NONE = 0
    uint8 NO_CRASH = 1
    uint8 CRASH = 2
    uint8 RESERVED = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleAlarmReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.seat_belt_alarm !== undefined) {
      resolved.seat_belt_alarm = msg.seat_belt_alarm;
    }
    else {
      resolved.seat_belt_alarm = false
    }

    if (msg.seat_belt_tightening !== undefined) {
      resolved.seat_belt_tightening = msg.seat_belt_tightening;
    }
    else {
      resolved.seat_belt_tightening = false
    }

    if (msg.steering_wheel_alarm !== undefined) {
      resolved.steering_wheel_alarm = msg.steering_wheel_alarm;
    }
    else {
      resolved.steering_wheel_alarm = false
    }

    if (msg.buzzer_alarm !== undefined) {
      resolved.buzzer_alarm = msg.buzzer_alarm;
    }
    else {
      resolved.buzzer_alarm = false
    }

    if (msg.steering_handoff !== undefined) {
      resolved.steering_handoff = HandOffStatus.Resolve(msg.steering_handoff)
    }
    else {
      resolved.steering_handoff = new HandOffStatus()
    }

    if (msg.feet_off !== undefined) {
      resolved.feet_off = FeetOffStatus.Resolve(msg.feet_off)
    }
    else {
      resolved.feet_off = new FeetOffStatus()
    }

    if (msg.pkg_fastswitch_enable !== undefined) {
      resolved.pkg_fastswitch_enable = msg.pkg_fastswitch_enable;
    }
    else {
      resolved.pkg_fastswitch_enable = false
    }

    if (msg.tire_alarm !== undefined) {
      resolved.tire_alarm = msg.tire_alarm;
    }
    else {
      resolved.tire_alarm = false
    }

    if (msg.vehicle_crash_status !== undefined) {
      resolved.vehicle_crash_status = VehicleCrashStatus.Resolve(msg.vehicle_crash_status)
    }
    else {
      resolved.vehicle_crash_status = new VehicleCrashStatus()
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

module.exports = VehicleAlarmReportData;

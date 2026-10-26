// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleAlarmReportData = require('./VehicleAlarmReportData.js');

//-----------------------------------------------------------

class VehicleAlarmReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_alarm_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_alarm_report_data')) {
        this.vehicle_alarm_report_data = initObj.vehicle_alarm_report_data
      }
      else {
        this.vehicle_alarm_report_data = new VehicleAlarmReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleAlarmReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_alarm_report_data]
    bufferOffset = VehicleAlarmReportData.serialize(obj.vehicle_alarm_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleAlarmReport
    let len;
    let data = new VehicleAlarmReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_alarm_report_data]
    data.vehicle_alarm_report_data = VehicleAlarmReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleAlarmReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a49b06bc689f6938e2e2fd6c0542d0cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_ALARM_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleAlarmReportData
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
    const resolved = new VehicleAlarmReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_alarm_report_data !== undefined) {
      resolved.vehicle_alarm_report_data = VehicleAlarmReportData.Resolve(msg.vehicle_alarm_report_data)
    }
    else {
      resolved.vehicle_alarm_report_data = new VehicleAlarmReportData()
    }

    return resolved;
    }
};

// Constants for message
VehicleAlarmReport.Constants = {
  VEHICLE_ALARM_REPORT_DATA: 1,
}

module.exports = VehicleAlarmReport;

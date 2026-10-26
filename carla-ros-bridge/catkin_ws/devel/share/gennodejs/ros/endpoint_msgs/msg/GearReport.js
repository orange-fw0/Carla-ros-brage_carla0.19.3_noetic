// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GearReportData = require('./GearReportData.js');

//-----------------------------------------------------------

class GearReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gear_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gear_report_data')) {
        this.gear_report_data = initObj.gear_report_data
      }
      else {
        this.gear_report_data = new GearReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GearReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gear_report_data]
    bufferOffset = GearReportData.serialize(obj.gear_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearReport
    let len;
    let data = new GearReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_report_data]
    data.gear_report_data = GearReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/GearReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '761777a6f2b3b5226be6c7801de6c2ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GEAR_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/GearReportData gear_report_data
    
    ================================================================================
    MSG: endpoint_msgs/GearReportData
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
    const resolved = new GearReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gear_report_data !== undefined) {
      resolved.gear_report_data = GearReportData.Resolve(msg.gear_report_data)
    }
    else {
      resolved.gear_report_data = new GearReportData()
    }

    return resolved;
    }
};

// Constants for message
GearReport.Constants = {
  GEAR_REPORT_DATA: 1,
}

module.exports = GearReport;

// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EpbReportData = require('./EpbReportData.js');

//-----------------------------------------------------------

class EpbReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.epb_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('epb_report_data')) {
        this.epb_report_data = initObj.epb_report_data
      }
      else {
        this.epb_report_data = new EpbReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EpbReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [epb_report_data]
    bufferOffset = EpbReportData.serialize(obj.epb_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EpbReport
    let len;
    let data = new EpbReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epb_report_data]
    data.epb_report_data = EpbReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/EpbReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c51bf21506af305eac481f247be5f57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EPB_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/EpbReportData epb_report_data
    
    ================================================================================
    MSG: endpoint_msgs/EpbReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/EpbStatus epb_report
    endpoint_msgs/AutoHoldStatus auto_hold_state
    bool vehicle_hold_active
    bool overide
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
    MSG: endpoint_msgs/EpbStatus
    uint8 RELEASE = 0
    uint8 PULLING = 1
    uint8 PULL = 2
    uint8 RELEASING = 3
    uint8 RESERVED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AutoHoldStatus
    uint8 SYS_OFF = 0
    uint8 SYS_INTERVENTION = 1
    uint8 SYS_STANDBY = 2
    uint8 SYS_ERR = 3
    uint8 RESERVED = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EpbReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.epb_report_data !== undefined) {
      resolved.epb_report_data = EpbReportData.Resolve(msg.epb_report_data)
    }
    else {
      resolved.epb_report_data = new EpbReportData()
    }

    return resolved;
    }
};

// Constants for message
EpbReport.Constants = {
  EPB_REPORT_DATA: 1,
}

module.exports = EpbReport;

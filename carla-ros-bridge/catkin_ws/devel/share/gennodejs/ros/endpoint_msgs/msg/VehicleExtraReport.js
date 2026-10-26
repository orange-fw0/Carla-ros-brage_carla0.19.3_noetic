// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleExtraReportData = require('./VehicleExtraReportData.js');

//-----------------------------------------------------------

class VehicleExtraReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_extra_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_extra_report_data')) {
        this.vehicle_extra_report_data = initObj.vehicle_extra_report_data
      }
      else {
        this.vehicle_extra_report_data = new VehicleExtraReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleExtraReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_extra_report_data]
    bufferOffset = VehicleExtraReportData.serialize(obj.vehicle_extra_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleExtraReport
    let len;
    let data = new VehicleExtraReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_extra_report_data]
    data.vehicle_extra_report_data = VehicleExtraReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += VehicleExtraReportData.getMessageSize(object.vehicle_extra_report_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleExtraReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff7c1937abce7fa12f5200d7982e3233';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_EXTRA_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleExtraReportData
    uint64 timestamp_us
    endpoint_msgs/CtaState cta_lf
    endpoint_msgs/CtaState cta_rf
    endpoint_msgs/CtaState cta_lr
    endpoint_msgs/CtaState cta_rr
    bool cta_valid
    endpoint_msgs/DlpStatus dlp_state
    bool dlp_valid
    endpoint_msgs/HdcState hdc_state
    bool hdc_valid
    endpoint_msgs/LdpStatus ldp_status_left_lane
    endpoint_msgs/LdpStatus ldp_status_right_lane
    bool ldp_valid
    endpoint_msgs/LdwStatus ldw_status
    bool ldw_valid
    endpoint_msgs/SrsCollosion srs_collosion
    endpoint_msgs/ExtraReport extra
    
    ================================================================================
    MSG: endpoint_msgs/CtaState
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVE_1 = 1
    uint8 WARNING_LEVE_2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/DlpStatus
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVEL1 = 1
    uint8 WARNING_LEVEL2 = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HdcState
    uint8 NORMAL = 0
    uint8 ENABLED = 1
    uint8 ACTIVED = 2
    uint8 FAILED = 3
    uint8 TEMPORARILY_INHIBITED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdpStatus
    uint8 LDP_STATUS_OFF = 0
    uint8 LDP_STATUS_STANDBY = 1
    uint8 LDP_STATUS_ACTIVE = 2
    uint8 LDP_STATUS_RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdwStatus
    uint8 LDW_STATUS_OFF = 0
    uint8 LDW_STATUS_STANDBY = 1
    uint8 LDW_STATUS_DISABLED = 2
    uint8 LDW_STATUS_OVERIDE = 3
    uint8 LDW_STATUS_ACTIVE = 4
    uint8 LDW_STATUS_RESERVED1 = 5
    uint8 LDW_STATUS_RESERVED2 = 6
    uint8 LDW_STATUS_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SrsCollosion
    uint8 NONE = 0
    uint8 NOT_COLLOSION = 1
    uint8 COLLOSION = 2
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ExtraReport
    uint8 available
    string json
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleExtraReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_extra_report_data !== undefined) {
      resolved.vehicle_extra_report_data = VehicleExtraReportData.Resolve(msg.vehicle_extra_report_data)
    }
    else {
      resolved.vehicle_extra_report_data = new VehicleExtraReportData()
    }

    return resolved;
    }
};

// Constants for message
VehicleExtraReport.Constants = {
  VEHICLE_EXTRA_REPORT_DATA: 1,
}

module.exports = VehicleExtraReport;

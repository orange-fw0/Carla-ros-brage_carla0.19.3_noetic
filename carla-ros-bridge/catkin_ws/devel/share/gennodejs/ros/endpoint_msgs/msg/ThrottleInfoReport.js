// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThrottleInfoReportData = require('./ThrottleInfoReportData.js');

//-----------------------------------------------------------

class ThrottleInfoReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.throttle_info_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('throttle_info_report_data')) {
        this.throttle_info_report_data = initObj.throttle_info_report_data
      }
      else {
        this.throttle_info_report_data = new ThrottleInfoReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleInfoReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [throttle_info_report_data]
    bufferOffset = ThrottleInfoReportData.serialize(obj.throttle_info_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleInfoReport
    let len;
    let data = new ThrottleInfoReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_info_report_data]
    data.throttle_info_report_data = ThrottleInfoReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleInfoReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27ae743fc9496156b97c8c69dab60cc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 THROTTLE_INFO_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/ThrottleInfoReportData throttle_info_report_data
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleInfoReportData
    uint64 timestamp_us
    float32 front_left_mot_rpm
    bool front_left_mot_rpm_valid
    float32 front_right_mot_rpm
    bool front_right_mot_rpm_valid
    float32 rear_left_mot_rpm
    bool rear_left_mot_rpm_valid
    float32 rear_right_mot_rpm
    bool rear_right_mot_rpm_valid
    float32 throttle_pedal_percent
    float32 throttle_pedal_rate
    float32 vehicle_speed_average
    bool vehicle_speed_average_valid
    float32 vehicle_mileage
    float32 throttle_torque_delivery
    bool throttle_torque_delivery_valid
    bool pressure
    float32 input_shaft_speed
    float32 output_shaft_speed
    int8 curr_transmission_gear
    float32 curr_gear_ration
    bool input_shaft_speed_valid
    bool output_shaft_speed_valid
    bool curr_transmission_gear_valid
    bool curr_gear_ration_valid
    float32 reserved1
    float32 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleInfoReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.throttle_info_report_data !== undefined) {
      resolved.throttle_info_report_data = ThrottleInfoReportData.Resolve(msg.throttle_info_report_data)
    }
    else {
      resolved.throttle_info_report_data = new ThrottleInfoReportData()
    }

    return resolved;
    }
};

// Constants for message
ThrottleInfoReport.Constants = {
  THROTTLE_INFO_REPORT_DATA: 1,
}

module.exports = ThrottleInfoReport;

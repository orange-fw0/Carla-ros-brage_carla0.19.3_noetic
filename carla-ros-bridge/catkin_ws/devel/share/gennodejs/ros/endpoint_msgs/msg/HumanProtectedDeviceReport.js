// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HumanProtectedDeviceReportData = require('./HumanProtectedDeviceReportData.js');
let SeatSensorStatusReportData = require('./SeatSensorStatusReportData.js');

//-----------------------------------------------------------

class HumanProtectedDeviceReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.human_protected_device_report_data = null;
      this.seat_sensor_status_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('human_protected_device_report_data')) {
        this.human_protected_device_report_data = initObj.human_protected_device_report_data
      }
      else {
        this.human_protected_device_report_data = new HumanProtectedDeviceReportData();
      }
      if (initObj.hasOwnProperty('seat_sensor_status_report_data')) {
        this.seat_sensor_status_report_data = initObj.seat_sensor_status_report_data
      }
      else {
        this.seat_sensor_status_report_data = new SeatSensorStatusReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanProtectedDeviceReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [human_protected_device_report_data]
    bufferOffset = HumanProtectedDeviceReportData.serialize(obj.human_protected_device_report_data, buffer, bufferOffset);
    // Serialize message field [seat_sensor_status_report_data]
    bufferOffset = SeatSensorStatusReportData.serialize(obj.seat_sensor_status_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanProtectedDeviceReport
    let len;
    let data = new HumanProtectedDeviceReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [human_protected_device_report_data]
    data.human_protected_device_report_data = HumanProtectedDeviceReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [seat_sensor_status_report_data]
    data.seat_sensor_status_report_data = SeatSensorStatusReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HumanProtectedDeviceReportData.getMessageSize(object.human_protected_device_report_data);
    length += SeatSensorStatusReportData.getMessageSize(object.seat_sensor_status_report_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/HumanProtectedDeviceReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99aabe4955f5e9e44655eb8177d146dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data
    endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceReportData
    uint64 timestamp_us
    endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceType
    uint8 DRIVER_SEATBELT = 0
    uint8 PASSENGER_SEATBELT = 1
    uint8 PASSENGER_DETECT = 2
    uint8 PASSENGER_AIRBAG = 3
    uint8 SECOND_LEFT_BELT = 4
    uint8 SECOND_MID_BELT = 5
    uint8 SECOND_RIGHT_BELT = 6
    uint8 RESERVED1 = 7
    uint8 RESERVED2 = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SeatSensorStatusReportData
    uint64 timestamp_us
    endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/SeatSensorStatusType
    uint8 DRIVER_SEAT_STATUS = 0
    uint8 PASSENGER_SEAT_STATUS = 1
    uint8 SECOND_LEFT_SEAT_STATUS = 2
    uint8 SECOND_MID_SEAT_STATUS = 3
    uint8 SECOND_RIGHT_SEAT_STATUS = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanProtectedDeviceReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.human_protected_device_report_data !== undefined) {
      resolved.human_protected_device_report_data = HumanProtectedDeviceReportData.Resolve(msg.human_protected_device_report_data)
    }
    else {
      resolved.human_protected_device_report_data = new HumanProtectedDeviceReportData()
    }

    if (msg.seat_sensor_status_report_data !== undefined) {
      resolved.seat_sensor_status_report_data = SeatSensorStatusReportData.Resolve(msg.seat_sensor_status_report_data)
    }
    else {
      resolved.seat_sensor_status_report_data = new SeatSensorStatusReportData()
    }

    return resolved;
    }
};

// Constants for message
HumanProtectedDeviceReport.Constants = {
  HUMAN_PROTECTED_DEVICE_REPORT_DATA: 1,
}

module.exports = HumanProtectedDeviceReport;

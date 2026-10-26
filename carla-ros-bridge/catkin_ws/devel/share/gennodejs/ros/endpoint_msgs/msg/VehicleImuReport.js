// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleImuReportData = require('./VehicleImuReportData.js');

//-----------------------------------------------------------

class VehicleImuReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_imu_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_imu_report_data')) {
        this.vehicle_imu_report_data = initObj.vehicle_imu_report_data
      }
      else {
        this.vehicle_imu_report_data = new VehicleImuReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleImuReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_imu_report_data]
    bufferOffset = VehicleImuReportData.serialize(obj.vehicle_imu_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleImuReport
    let len;
    let data = new VehicleImuReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_imu_report_data]
    data.vehicle_imu_report_data = VehicleImuReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleImuReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83ca2c3fbaefb42f5985663e0527c06d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_IMU_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleImuReportData vehicle_imu_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleImuReportData
    uint64 timestamp_us
    float32 linear_acceleration_lat
    float32 linear_acceleration_lon
    float32 linear_acceleration_vert
    float32 angular_velocity_roll
    float32 angular_velocity_pitch
    float32 angular_velocity_yaw
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleImuReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_imu_report_data !== undefined) {
      resolved.vehicle_imu_report_data = VehicleImuReportData.Resolve(msg.vehicle_imu_report_data)
    }
    else {
      resolved.vehicle_imu_report_data = new VehicleImuReportData()
    }

    return resolved;
    }
};

// Constants for message
VehicleImuReport.Constants = {
  VEHICLE_IMU_REPORT_DATA: 1,
}

module.exports = VehicleImuReport;

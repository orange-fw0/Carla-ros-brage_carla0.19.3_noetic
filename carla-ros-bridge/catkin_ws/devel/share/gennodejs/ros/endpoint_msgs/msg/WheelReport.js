// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StateReportMeta = require('./StateReportMeta.js');
let WheelPositionReport = require('./WheelPositionReport.js');
let WheelSpeedReport = require('./WheelSpeedReport.js');
let WheelAngleReport = require('./WheelAngleReport.js');
let VehicleImuReport = require('./VehicleImuReport.js');
let WheelCylinderPressReport = require('./WheelCylinderPressReport.js');
let WheelFrctTorqueReport = require('./WheelFrctTorqueReport.js');
let WheelDrvTorqueReport = require('./WheelDrvTorqueReport.js');
let WheelBrakePadTempReport = require('./WheelBrakePadTempReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.wheel_position_report = null;
      this.wheel_speed_report = null;
      this.wheel_angle_report = null;
      this.vehicle_imu_report = null;
      this.wheel_cylinder_press_report = null;
      this.wheel_frct_torque_report = null;
      this.wheel_drv_torque_report = null;
      this.wheel_brake_pad_temp_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new StateReportMeta();
      }
      if (initObj.hasOwnProperty('wheel_position_report')) {
        this.wheel_position_report = initObj.wheel_position_report
      }
      else {
        this.wheel_position_report = new WheelPositionReport();
      }
      if (initObj.hasOwnProperty('wheel_speed_report')) {
        this.wheel_speed_report = initObj.wheel_speed_report
      }
      else {
        this.wheel_speed_report = new WheelSpeedReport();
      }
      if (initObj.hasOwnProperty('wheel_angle_report')) {
        this.wheel_angle_report = initObj.wheel_angle_report
      }
      else {
        this.wheel_angle_report = new WheelAngleReport();
      }
      if (initObj.hasOwnProperty('vehicle_imu_report')) {
        this.vehicle_imu_report = initObj.vehicle_imu_report
      }
      else {
        this.vehicle_imu_report = new VehicleImuReport();
      }
      if (initObj.hasOwnProperty('wheel_cylinder_press_report')) {
        this.wheel_cylinder_press_report = initObj.wheel_cylinder_press_report
      }
      else {
        this.wheel_cylinder_press_report = new WheelCylinderPressReport();
      }
      if (initObj.hasOwnProperty('wheel_frct_torque_report')) {
        this.wheel_frct_torque_report = initObj.wheel_frct_torque_report
      }
      else {
        this.wheel_frct_torque_report = new WheelFrctTorqueReport();
      }
      if (initObj.hasOwnProperty('wheel_drv_torque_report')) {
        this.wheel_drv_torque_report = initObj.wheel_drv_torque_report
      }
      else {
        this.wheel_drv_torque_report = new WheelDrvTorqueReport();
      }
      if (initObj.hasOwnProperty('wheel_brake_pad_temp_report')) {
        this.wheel_brake_pad_temp_report = initObj.wheel_brake_pad_temp_report
      }
      else {
        this.wheel_brake_pad_temp_report = new WheelBrakePadTempReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = StateReportMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [wheel_position_report]
    bufferOffset = WheelPositionReport.serialize(obj.wheel_position_report, buffer, bufferOffset);
    // Serialize message field [wheel_speed_report]
    bufferOffset = WheelSpeedReport.serialize(obj.wheel_speed_report, buffer, bufferOffset);
    // Serialize message field [wheel_angle_report]
    bufferOffset = WheelAngleReport.serialize(obj.wheel_angle_report, buffer, bufferOffset);
    // Serialize message field [vehicle_imu_report]
    bufferOffset = VehicleImuReport.serialize(obj.vehicle_imu_report, buffer, bufferOffset);
    // Serialize message field [wheel_cylinder_press_report]
    bufferOffset = WheelCylinderPressReport.serialize(obj.wheel_cylinder_press_report, buffer, bufferOffset);
    // Serialize message field [wheel_frct_torque_report]
    bufferOffset = WheelFrctTorqueReport.serialize(obj.wheel_frct_torque_report, buffer, bufferOffset);
    // Serialize message field [wheel_drv_torque_report]
    bufferOffset = WheelDrvTorqueReport.serialize(obj.wheel_drv_torque_report, buffer, bufferOffset);
    // Serialize message field [wheel_brake_pad_temp_report]
    bufferOffset = WheelBrakePadTempReport.serialize(obj.wheel_brake_pad_temp_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelReport
    let len;
    let data = new WheelReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = StateReportMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_position_report]
    data.wheel_position_report = WheelPositionReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_report]
    data.wheel_speed_report = WheelSpeedReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_report]
    data.wheel_angle_report = WheelAngleReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_imu_report]
    data.vehicle_imu_report = VehicleImuReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_cylinder_press_report]
    data.wheel_cylinder_press_report = WheelCylinderPressReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_frct_torque_report]
    data.wheel_frct_torque_report = WheelFrctTorqueReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_drv_torque_report]
    data.wheel_drv_torque_report = WheelDrvTorqueReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_brake_pad_temp_report]
    data.wheel_brake_pad_temp_report = WheelBrakePadTempReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 246;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eaa9679464497957c659c089f910072';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/StateReportMeta meta
    endpoint_msgs/WheelPositionReport wheel_position_report
    endpoint_msgs/WheelSpeedReport wheel_speed_report
    endpoint_msgs/WheelAngleReport wheel_angle_report
    endpoint_msgs/VehicleImuReport vehicle_imu_report
    endpoint_msgs/WheelCylinderPressReport wheel_cylinder_press_report
    endpoint_msgs/WheelFrctTorqueReport wheel_frct_torque_report
    endpoint_msgs/WheelDrvTorqueReport wheel_drv_torque_report
    endpoint_msgs/WheelBrakePadTempReport wheel_brake_pad_temp_report
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: endpoint_msgs/StateReportMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: endpoint_msgs/WheelPositionReport
    uint8 WHEEL_POSITION_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelPositionReportData wheel_position_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelPositionReportData
    uint64 timestamp_us
    int16 front_left
    int16 front_right
    int16 rear_left
    int16 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WheelSpeedReport
    uint8 WHEEL_SPEED_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelSpeedReportData wheel_speed_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelSpeedReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    float32 front_left_mps
    float32 front_right_mps
    float32 rear_left_mps
    float32 rear_right_mps
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WheelAngleReport
    uint8 WHEEL_ANGLE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelAngleReportData wheel_angle_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelAngleReportData
    uint64 timestamp_us
    endpoint_msgs/RwsSysStatus rws_state
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/RwsSysStatus
    uint8 STANDARD_MODE = 0
    uint8 COMFORTABLE_MODE = 1
    uint8 SPORT_MODE = 2
    uint8 AD_MODE = 3
    uint8 ADLOCK_MODE = 4
    uint8 RESERVED = 5
    bool valid
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VehicleImuReport
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
    
    ================================================================================
    MSG: endpoint_msgs/WheelCylinderPressReport
    uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelCylinderPressReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WheelFrctTorqueReport
    uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelFrctTorqueReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WheelDrvTorqueReport
    uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelDrvTorqueReportData
    uint64 timestamp_us
    float32 front_left
    bool front_left_valid
    float32 front_right
    float32 front_right_valid
    float32 rear_left
    float32 rear_left_valid
    float32 rear_right
    float32 rear_right_valid
    
    ================================================================================
    MSG: endpoint_msgs/WheelBrakePadTempReport
    uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelBrakePadTempData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = StateReportMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new StateReportMeta()
    }

    if (msg.wheel_position_report !== undefined) {
      resolved.wheel_position_report = WheelPositionReport.Resolve(msg.wheel_position_report)
    }
    else {
      resolved.wheel_position_report = new WheelPositionReport()
    }

    if (msg.wheel_speed_report !== undefined) {
      resolved.wheel_speed_report = WheelSpeedReport.Resolve(msg.wheel_speed_report)
    }
    else {
      resolved.wheel_speed_report = new WheelSpeedReport()
    }

    if (msg.wheel_angle_report !== undefined) {
      resolved.wheel_angle_report = WheelAngleReport.Resolve(msg.wheel_angle_report)
    }
    else {
      resolved.wheel_angle_report = new WheelAngleReport()
    }

    if (msg.vehicle_imu_report !== undefined) {
      resolved.vehicle_imu_report = VehicleImuReport.Resolve(msg.vehicle_imu_report)
    }
    else {
      resolved.vehicle_imu_report = new VehicleImuReport()
    }

    if (msg.wheel_cylinder_press_report !== undefined) {
      resolved.wheel_cylinder_press_report = WheelCylinderPressReport.Resolve(msg.wheel_cylinder_press_report)
    }
    else {
      resolved.wheel_cylinder_press_report = new WheelCylinderPressReport()
    }

    if (msg.wheel_frct_torque_report !== undefined) {
      resolved.wheel_frct_torque_report = WheelFrctTorqueReport.Resolve(msg.wheel_frct_torque_report)
    }
    else {
      resolved.wheel_frct_torque_report = new WheelFrctTorqueReport()
    }

    if (msg.wheel_drv_torque_report !== undefined) {
      resolved.wheel_drv_torque_report = WheelDrvTorqueReport.Resolve(msg.wheel_drv_torque_report)
    }
    else {
      resolved.wheel_drv_torque_report = new WheelDrvTorqueReport()
    }

    if (msg.wheel_brake_pad_temp_report !== undefined) {
      resolved.wheel_brake_pad_temp_report = WheelBrakePadTempReport.Resolve(msg.wheel_brake_pad_temp_report)
    }
    else {
      resolved.wheel_brake_pad_temp_report = new WheelBrakePadTempReport()
    }

    return resolved;
    }
};

module.exports = WheelReport;

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
let BrakeReport = require('./BrakeReport.js');
let BrakeInfoReport = require('./BrakeInfoReport.js');
let ThrottleReport = require('./ThrottleReport.js');
let ThrottleInfoReport = require('./ThrottleInfoReport.js');
let SteeringReport = require('./SteeringReport.js');
let GearReport = require('./GearReport.js');
let EpbReport = require('./EpbReport.js');
let MotorSpeedReport = require('./MotorSpeedReport.js');
let ExtraReport = require('./ExtraReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChassisReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.brake_report = null;
      this.brake_info_report = null;
      this.throttle_report = null;
      this.throttle_info_report = null;
      this.steering_report = null;
      this.gear_report = null;
      this.epb_report = null;
      this.motor_speed_report = null;
      this.extra = null;
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
      if (initObj.hasOwnProperty('brake_report')) {
        this.brake_report = initObj.brake_report
      }
      else {
        this.brake_report = new BrakeReport();
      }
      if (initObj.hasOwnProperty('brake_info_report')) {
        this.brake_info_report = initObj.brake_info_report
      }
      else {
        this.brake_info_report = new BrakeInfoReport();
      }
      if (initObj.hasOwnProperty('throttle_report')) {
        this.throttle_report = initObj.throttle_report
      }
      else {
        this.throttle_report = new ThrottleReport();
      }
      if (initObj.hasOwnProperty('throttle_info_report')) {
        this.throttle_info_report = initObj.throttle_info_report
      }
      else {
        this.throttle_info_report = new ThrottleInfoReport();
      }
      if (initObj.hasOwnProperty('steering_report')) {
        this.steering_report = initObj.steering_report
      }
      else {
        this.steering_report = new SteeringReport();
      }
      if (initObj.hasOwnProperty('gear_report')) {
        this.gear_report = initObj.gear_report
      }
      else {
        this.gear_report = new GearReport();
      }
      if (initObj.hasOwnProperty('epb_report')) {
        this.epb_report = initObj.epb_report
      }
      else {
        this.epb_report = new EpbReport();
      }
      if (initObj.hasOwnProperty('motor_speed_report')) {
        this.motor_speed_report = initObj.motor_speed_report
      }
      else {
        this.motor_speed_report = new MotorSpeedReport();
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = new ExtraReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = StateReportMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [brake_report]
    bufferOffset = BrakeReport.serialize(obj.brake_report, buffer, bufferOffset);
    // Serialize message field [brake_info_report]
    bufferOffset = BrakeInfoReport.serialize(obj.brake_info_report, buffer, bufferOffset);
    // Serialize message field [throttle_report]
    bufferOffset = ThrottleReport.serialize(obj.throttle_report, buffer, bufferOffset);
    // Serialize message field [throttle_info_report]
    bufferOffset = ThrottleInfoReport.serialize(obj.throttle_info_report, buffer, bufferOffset);
    // Serialize message field [steering_report]
    bufferOffset = SteeringReport.serialize(obj.steering_report, buffer, bufferOffset);
    // Serialize message field [gear_report]
    bufferOffset = GearReport.serialize(obj.gear_report, buffer, bufferOffset);
    // Serialize message field [epb_report]
    bufferOffset = EpbReport.serialize(obj.epb_report, buffer, bufferOffset);
    // Serialize message field [motor_speed_report]
    bufferOffset = MotorSpeedReport.serialize(obj.motor_speed_report, buffer, bufferOffset);
    // Serialize message field [extra]
    bufferOffset = ExtraReport.serialize(obj.extra, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisReport
    let len;
    let data = new ChassisReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = StateReportMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_report]
    data.brake_report = BrakeReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_info_report]
    data.brake_info_report = BrakeInfoReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_report]
    data.throttle_report = ThrottleReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_info_report]
    data.throttle_info_report = ThrottleInfoReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_report]
    data.steering_report = SteeringReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear_report]
    data.gear_report = GearReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [epb_report]
    data.epb_report = EpbReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed_report]
    data.motor_speed_report = MotorSpeedReport.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra]
    data.extra = ExtraReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ExtraReport.getMessageSize(object.extra);
    return length + 424;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ChassisReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c6fefc7c1d138a1152b7425cfe0d650';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/StateReportMeta meta
    endpoint_msgs/BrakeReport brake_report
    endpoint_msgs/BrakeInfoReport brake_info_report
    endpoint_msgs/ThrottleReport throttle_report
    endpoint_msgs/ThrottleInfoReport throttle_info_report
    endpoint_msgs/SteeringReport steering_report
    endpoint_msgs/GearReport gear_report
    endpoint_msgs/EpbReport epb_report
    endpoint_msgs/MotorSpeedReport motor_speed_report
    endpoint_msgs/ExtraReport extra
    
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
    MSG: endpoint_msgs/BrakeReport
    uint8 BRAKE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/BrakeReportData brake_report_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/BrakeType brake_type
    float32 pedal_input
    float32 brake_command
    float32 brake_output
    bool override
    float32 ahb_exec_brake_force
    bool ahb_exec_brake_force_valid
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
    MSG: endpoint_msgs/BrakeInfoReport
    uint8 BRAKE_INFO_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/BrakeInfoReportData brake_info_report_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeInfoReportData
    uint64 timestamp_us
    float32 accleration_on_wheel
    float32 lateral_accleration_on_wheel
    bool stationary
    bool abs_active
    bool abs_fault
    bool tcs_active
    bool tcs_fault
    bool msr_active
    bool msr_fault
    bool esp_active
    bool esp_fault
    bool tsr_active
    bool tsr_fault
    bool pressure
    float32 brake_torque_delivery
    bool brake_torque_delivery_valid
    float32 brake_regen_torque_delivery
    bool brake_regen_torque_delivery_valid
    float32 brake_frct_torque_delivery
    bool brake_frct_torque_delivery_valid
    float32 master_pressure_delivery
    bool master_pressure_delivery_valid
    float32 pedal_brake_torque
    bool pedal_brake_torque_valid
    bool pkg_fastswitch_enable
    bool vehicle_block
    endpoint_msgs/VehESPSwitch esp_status
    bool vdc_active
    bool vdc_fault
    uint8 reserved
    
    ================================================================================
    MSG: endpoint_msgs/VehESPSwitch
    uint8 NONE = 0
    uint8 ON = 1
    uint8 OFF = 2
    uint8 RESVERD = 3
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleReport
    uint8 THROTTLE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/ThrottleReportData throttle_report_data
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleReportData
    uint64 timestamp_us
    endpoint_msgs/ThrottleType type
    endpoint_msgs/WorkType driver_work_type
    float32 pedal_input
    float32 command
    float32 throttle_output
    bool override
    float32 vcu_max_neg_torque
    float32 vcu_max_pos_torque
    bool vcu_max_neg_torque_valid
    bool vcu_max_pos_torque_valid
    float32 vcu_exec_throttle_torque
    bool vcu_exec_throttle_torque_valid
    bool ready
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleType
    uint8 PEDAL = 0
    uint8 THROTTLE = 1
    uint8 TORQUE = 2
    uint8 ACCELERATION = 3
    uint8 SPEED = 4
    uint8 SV = 5
    uint8 RESERVED = 6
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleInfoReport
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
    
    ================================================================================
    MSG: endpoint_msgs/SteeringReport
    uint8 STEERING_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/SteeringReportData steering_report_data
    
    ================================================================================
    MSG: endpoint_msgs/SteeringReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/SteeringType steering_type
    float32 steering_cmd
    float32 steering_report
    float32 steering_wheel_angle_report
    float32 steering_wheel_torque_report
    float32 steering_follow_rate
    endpoint_msgs/RWhSteerModType rws_mode_report
    float32 rws_angle
    bool override
    float32 steering_elc_assist_torque
    bool steering_elc_assist_torque_valid
    float32 steering_total_torque
    bool steering_total_torque_valid
    endpoint_msgs/CalibrationType eps_calibration_state
    endpoint_msgs/RWhSteerDirection rws_direction_report
    bool ready
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/SteeringType
    uint8 STEERING_ANGLE = 1
    uint8 FRONT_WHEEL_ANGLE = 2
    uint8 YAW_RATE = 3
    uint8 TORQUE = 4
    uint8 ANGLE_SPEED = 5
    uint8 CURVATURE = 6
    uint8 RESERVED = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerModType
    uint8 NO_REQUEST = 0
    uint8 CONTROL_REQUEST = 1
    uint8 LOCK_REQUEST = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/CalibrationType
    uint8 NONE = 0
    uint8 CALIBRATION = 1
    uint8 NOT_CALIBRATION = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerDirection
    uint8 NONE = 0
    uint8 SAME_DIRECTION = 1
    uint8 OPPOSITE_DIRECTION = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/GearReport
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
    
    ================================================================================
    MSG: endpoint_msgs/EpbReport
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
    
    ================================================================================
    MSG: endpoint_msgs/MotorSpeedReport
    uint8 MOTOR_SPEED_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr
    
    ================================================================================
    MSG: endpoint_msgs/MotorSpeedReportData
    endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status
    float32 motor_speed
    float32 motor_raw_speed
    bool motor_raw_speed_valid
    endpoint_msgs/McuStuckStatus mcu_stuck_status
    endpoint_msgs/McuStandstillStatus mcu_standstill_status
    endpoint_msgs/SpdctlFaultMode spdctl_fault_mode
    bool spdctl_valid
    endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status
    float32 mcu_req_torque
    bool mcu_req_torque_valid
    float32 motor_actual_toruqe
    bool motor_actual_toruqe_valid
    float32 motor_wheel_regen_torque
    bool motor_wheel_regen_torque_valid
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/MotorSpeedControlStatus
    uint8 NONE = 0
    uint8 NO_ACTIVE = 1
    uint8 ACTIVE = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/McuStuckStatus
    uint8 NONE = 0
    uint8 NO_STUCK = 1
    uint8 STUCK = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/McuStandstillStatus
    uint8 NONE = 0
    uint8 NO_STANDSTILL = 1
    uint8 STANDSTILL = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SpdctlFaultMode
    uint8 NONE = 0
    uint8 NO_FAULT = 1
    uint8 FAULT1 = 2
    uint8 FAULT2 = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SpdctlRollingbackStatus
    uint8 NONE = 0
    uint8 NO_SILDE = 1
    uint8 SILDE = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
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
    const resolved = new ChassisReport(null);
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

    if (msg.brake_report !== undefined) {
      resolved.brake_report = BrakeReport.Resolve(msg.brake_report)
    }
    else {
      resolved.brake_report = new BrakeReport()
    }

    if (msg.brake_info_report !== undefined) {
      resolved.brake_info_report = BrakeInfoReport.Resolve(msg.brake_info_report)
    }
    else {
      resolved.brake_info_report = new BrakeInfoReport()
    }

    if (msg.throttle_report !== undefined) {
      resolved.throttle_report = ThrottleReport.Resolve(msg.throttle_report)
    }
    else {
      resolved.throttle_report = new ThrottleReport()
    }

    if (msg.throttle_info_report !== undefined) {
      resolved.throttle_info_report = ThrottleInfoReport.Resolve(msg.throttle_info_report)
    }
    else {
      resolved.throttle_info_report = new ThrottleInfoReport()
    }

    if (msg.steering_report !== undefined) {
      resolved.steering_report = SteeringReport.Resolve(msg.steering_report)
    }
    else {
      resolved.steering_report = new SteeringReport()
    }

    if (msg.gear_report !== undefined) {
      resolved.gear_report = GearReport.Resolve(msg.gear_report)
    }
    else {
      resolved.gear_report = new GearReport()
    }

    if (msg.epb_report !== undefined) {
      resolved.epb_report = EpbReport.Resolve(msg.epb_report)
    }
    else {
      resolved.epb_report = new EpbReport()
    }

    if (msg.motor_speed_report !== undefined) {
      resolved.motor_speed_report = MotorSpeedReport.Resolve(msg.motor_speed_report)
    }
    else {
      resolved.motor_speed_report = new MotorSpeedReport()
    }

    if (msg.extra !== undefined) {
      resolved.extra = ExtraReport.Resolve(msg.extra)
    }
    else {
      resolved.extra = new ExtraReport()
    }

    return resolved;
    }
};

module.exports = ChassisReport;

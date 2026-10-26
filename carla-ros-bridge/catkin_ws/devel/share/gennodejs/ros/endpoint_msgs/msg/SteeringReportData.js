// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorkType = require('./WorkType.js');
let SteeringType = require('./SteeringType.js');
let RWhSteerModType = require('./RWhSteerModType.js');
let CalibrationType = require('./CalibrationType.js');
let RWhSteerDirection = require('./RWhSteerDirection.js');

//-----------------------------------------------------------

class SteeringReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.steering_type = null;
      this.steering_cmd = null;
      this.steering_report = null;
      this.steering_wheel_angle_report = null;
      this.steering_wheel_torque_report = null;
      this.steering_follow_rate = null;
      this.rws_mode_report = null;
      this.rws_angle = null;
      this.override = null;
      this.steering_elc_assist_torque = null;
      this.steering_elc_assist_torque_valid = null;
      this.steering_total_torque = null;
      this.steering_total_torque_valid = null;
      this.eps_calibration_state = null;
      this.rws_direction_report = null;
      this.ready = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('driver_work_type')) {
        this.driver_work_type = initObj.driver_work_type
      }
      else {
        this.driver_work_type = new WorkType();
      }
      if (initObj.hasOwnProperty('steering_type')) {
        this.steering_type = initObj.steering_type
      }
      else {
        this.steering_type = new SteeringType();
      }
      if (initObj.hasOwnProperty('steering_cmd')) {
        this.steering_cmd = initObj.steering_cmd
      }
      else {
        this.steering_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('steering_report')) {
        this.steering_report = initObj.steering_report
      }
      else {
        this.steering_report = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel_angle_report')) {
        this.steering_wheel_angle_report = initObj.steering_wheel_angle_report
      }
      else {
        this.steering_wheel_angle_report = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel_torque_report')) {
        this.steering_wheel_torque_report = initObj.steering_wheel_torque_report
      }
      else {
        this.steering_wheel_torque_report = 0.0;
      }
      if (initObj.hasOwnProperty('steering_follow_rate')) {
        this.steering_follow_rate = initObj.steering_follow_rate
      }
      else {
        this.steering_follow_rate = 0.0;
      }
      if (initObj.hasOwnProperty('rws_mode_report')) {
        this.rws_mode_report = initObj.rws_mode_report
      }
      else {
        this.rws_mode_report = new RWhSteerModType();
      }
      if (initObj.hasOwnProperty('rws_angle')) {
        this.rws_angle = initObj.rws_angle
      }
      else {
        this.rws_angle = 0.0;
      }
      if (initObj.hasOwnProperty('override')) {
        this.override = initObj.override
      }
      else {
        this.override = false;
      }
      if (initObj.hasOwnProperty('steering_elc_assist_torque')) {
        this.steering_elc_assist_torque = initObj.steering_elc_assist_torque
      }
      else {
        this.steering_elc_assist_torque = 0.0;
      }
      if (initObj.hasOwnProperty('steering_elc_assist_torque_valid')) {
        this.steering_elc_assist_torque_valid = initObj.steering_elc_assist_torque_valid
      }
      else {
        this.steering_elc_assist_torque_valid = false;
      }
      if (initObj.hasOwnProperty('steering_total_torque')) {
        this.steering_total_torque = initObj.steering_total_torque
      }
      else {
        this.steering_total_torque = 0.0;
      }
      if (initObj.hasOwnProperty('steering_total_torque_valid')) {
        this.steering_total_torque_valid = initObj.steering_total_torque_valid
      }
      else {
        this.steering_total_torque_valid = false;
      }
      if (initObj.hasOwnProperty('eps_calibration_state')) {
        this.eps_calibration_state = initObj.eps_calibration_state
      }
      else {
        this.eps_calibration_state = new CalibrationType();
      }
      if (initObj.hasOwnProperty('rws_direction_report')) {
        this.rws_direction_report = initObj.rws_direction_report
      }
      else {
        this.rws_direction_report = new RWhSteerDirection();
      }
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = false;
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
    // Serializes a message object of type SteeringReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [steering_type]
    bufferOffset = SteeringType.serialize(obj.steering_type, buffer, bufferOffset);
    // Serialize message field [steering_cmd]
    bufferOffset = _serializer.float32(obj.steering_cmd, buffer, bufferOffset);
    // Serialize message field [steering_report]
    bufferOffset = _serializer.float32(obj.steering_report, buffer, bufferOffset);
    // Serialize message field [steering_wheel_angle_report]
    bufferOffset = _serializer.float32(obj.steering_wheel_angle_report, buffer, bufferOffset);
    // Serialize message field [steering_wheel_torque_report]
    bufferOffset = _serializer.float32(obj.steering_wheel_torque_report, buffer, bufferOffset);
    // Serialize message field [steering_follow_rate]
    bufferOffset = _serializer.float32(obj.steering_follow_rate, buffer, bufferOffset);
    // Serialize message field [rws_mode_report]
    bufferOffset = RWhSteerModType.serialize(obj.rws_mode_report, buffer, bufferOffset);
    // Serialize message field [rws_angle]
    bufferOffset = _serializer.float32(obj.rws_angle, buffer, bufferOffset);
    // Serialize message field [override]
    bufferOffset = _serializer.bool(obj.override, buffer, bufferOffset);
    // Serialize message field [steering_elc_assist_torque]
    bufferOffset = _serializer.float32(obj.steering_elc_assist_torque, buffer, bufferOffset);
    // Serialize message field [steering_elc_assist_torque_valid]
    bufferOffset = _serializer.bool(obj.steering_elc_assist_torque_valid, buffer, bufferOffset);
    // Serialize message field [steering_total_torque]
    bufferOffset = _serializer.float32(obj.steering_total_torque, buffer, bufferOffset);
    // Serialize message field [steering_total_torque_valid]
    bufferOffset = _serializer.bool(obj.steering_total_torque_valid, buffer, bufferOffset);
    // Serialize message field [eps_calibration_state]
    bufferOffset = CalibrationType.serialize(obj.eps_calibration_state, buffer, bufferOffset);
    // Serialize message field [rws_direction_report]
    bufferOffset = RWhSteerDirection.serialize(obj.rws_direction_report, buffer, bufferOffset);
    // Serialize message field [ready]
    bufferOffset = _serializer.bool(obj.ready, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringReportData
    let len;
    let data = new SteeringReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_type]
    data.steering_type = SteeringType.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_cmd]
    data.steering_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_report]
    data.steering_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_angle_report]
    data.steering_wheel_angle_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_torque_report]
    data.steering_wheel_torque_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_follow_rate]
    data.steering_follow_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rws_mode_report]
    data.rws_mode_report = RWhSteerModType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rws_angle]
    data.rws_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [override]
    data.override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_elc_assist_torque]
    data.steering_elc_assist_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_elc_assist_torque_valid]
    data.steering_elc_assist_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_total_torque]
    data.steering_total_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_total_torque_valid]
    data.steering_total_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [eps_calibration_state]
    data.eps_calibration_state = CalibrationType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rws_direction_report]
    data.rws_direction_report = RWhSteerDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [ready]
    data.ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SteeringReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73ab7abff1beb2ddf3c5f3ef84d11617';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SteeringReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.driver_work_type !== undefined) {
      resolved.driver_work_type = WorkType.Resolve(msg.driver_work_type)
    }
    else {
      resolved.driver_work_type = new WorkType()
    }

    if (msg.steering_type !== undefined) {
      resolved.steering_type = SteeringType.Resolve(msg.steering_type)
    }
    else {
      resolved.steering_type = new SteeringType()
    }

    if (msg.steering_cmd !== undefined) {
      resolved.steering_cmd = msg.steering_cmd;
    }
    else {
      resolved.steering_cmd = 0.0
    }

    if (msg.steering_report !== undefined) {
      resolved.steering_report = msg.steering_report;
    }
    else {
      resolved.steering_report = 0.0
    }

    if (msg.steering_wheel_angle_report !== undefined) {
      resolved.steering_wheel_angle_report = msg.steering_wheel_angle_report;
    }
    else {
      resolved.steering_wheel_angle_report = 0.0
    }

    if (msg.steering_wheel_torque_report !== undefined) {
      resolved.steering_wheel_torque_report = msg.steering_wheel_torque_report;
    }
    else {
      resolved.steering_wheel_torque_report = 0.0
    }

    if (msg.steering_follow_rate !== undefined) {
      resolved.steering_follow_rate = msg.steering_follow_rate;
    }
    else {
      resolved.steering_follow_rate = 0.0
    }

    if (msg.rws_mode_report !== undefined) {
      resolved.rws_mode_report = RWhSteerModType.Resolve(msg.rws_mode_report)
    }
    else {
      resolved.rws_mode_report = new RWhSteerModType()
    }

    if (msg.rws_angle !== undefined) {
      resolved.rws_angle = msg.rws_angle;
    }
    else {
      resolved.rws_angle = 0.0
    }

    if (msg.override !== undefined) {
      resolved.override = msg.override;
    }
    else {
      resolved.override = false
    }

    if (msg.steering_elc_assist_torque !== undefined) {
      resolved.steering_elc_assist_torque = msg.steering_elc_assist_torque;
    }
    else {
      resolved.steering_elc_assist_torque = 0.0
    }

    if (msg.steering_elc_assist_torque_valid !== undefined) {
      resolved.steering_elc_assist_torque_valid = msg.steering_elc_assist_torque_valid;
    }
    else {
      resolved.steering_elc_assist_torque_valid = false
    }

    if (msg.steering_total_torque !== undefined) {
      resolved.steering_total_torque = msg.steering_total_torque;
    }
    else {
      resolved.steering_total_torque = 0.0
    }

    if (msg.steering_total_torque_valid !== undefined) {
      resolved.steering_total_torque_valid = msg.steering_total_torque_valid;
    }
    else {
      resolved.steering_total_torque_valid = false
    }

    if (msg.eps_calibration_state !== undefined) {
      resolved.eps_calibration_state = CalibrationType.Resolve(msg.eps_calibration_state)
    }
    else {
      resolved.eps_calibration_state = new CalibrationType()
    }

    if (msg.rws_direction_report !== undefined) {
      resolved.rws_direction_report = RWhSteerDirection.Resolve(msg.rws_direction_report)
    }
    else {
      resolved.rws_direction_report = new RWhSteerDirection()
    }

    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = false
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

module.exports = SteeringReportData;

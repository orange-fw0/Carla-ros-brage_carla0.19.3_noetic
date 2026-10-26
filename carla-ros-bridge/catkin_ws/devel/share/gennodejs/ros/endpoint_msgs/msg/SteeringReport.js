// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SteeringReportData = require('./SteeringReportData.js');

//-----------------------------------------------------------

class SteeringReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.steering_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('steering_report_data')) {
        this.steering_report_data = initObj.steering_report_data
      }
      else {
        this.steering_report_data = new SteeringReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteeringReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [steering_report_data]
    bufferOffset = SteeringReportData.serialize(obj.steering_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringReport
    let len;
    let data = new SteeringReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_report_data]
    data.steering_report_data = SteeringReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SteeringReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62f7d27892bd0045d37d17394bb908a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SteeringReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.steering_report_data !== undefined) {
      resolved.steering_report_data = SteeringReportData.Resolve(msg.steering_report_data)
    }
    else {
      resolved.steering_report_data = new SteeringReportData()
    }

    return resolved;
    }
};

// Constants for message
SteeringReport.Constants = {
  STEERING_REPORT_DATA: 1,
}

module.exports = SteeringReport;

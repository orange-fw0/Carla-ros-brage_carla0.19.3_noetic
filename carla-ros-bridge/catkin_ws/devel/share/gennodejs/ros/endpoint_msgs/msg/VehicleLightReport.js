// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleLightReportData = require('./VehicleLightReportData.js');

//-----------------------------------------------------------

class VehicleLightReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.vehicle_light_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('vehicle_light_report_data')) {
        this.vehicle_light_report_data = initObj.vehicle_light_report_data
      }
      else {
        this.vehicle_light_report_data = new VehicleLightReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLightReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [vehicle_light_report_data]
    bufferOffset = VehicleLightReportData.serialize(obj.vehicle_light_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLightReport
    let len;
    let data = new VehicleLightReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicle_light_report_data]
    data.vehicle_light_report_data = VehicleLightReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleLightReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '495d152b9132f367627d82e7367095d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE_LIGHT_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/VehicleLightReportData vehicle_light_report_data
    
    ================================================================================
    MSG: endpoint_msgs/VehicleLightReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/TurnSignal turn_signal_type
    endpoint_msgs/FrontLightState front_light
    bool width_light
    bool reversing_light
    bool front_fog_light
    bool rear_fog_light
    endpoint_msgs/LeverStatus lever_state
    bool position_light_status
    endpoint_msgs/BrakeLightStatus brake_light
    endpoint_msgs/LeverType lever_type
    bool auto_light_ctrl_state
    endpoint_msgs/LightModeState light_mode_status
    endpoint_msgs/FrontLightSwitchState front_light_switch_state
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
    MSG: endpoint_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightState
    uint8 LIGHT_OFF = 0
    uint8 LOW_BEAM_LIGHT = 1
    uint8 HIGH_BEAM_LIGHT = 2
    uint8 OVERTAKING_FLASH = 3
    uint8 LIGHT_AUTO = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LeverStatus
    uint8 LEVER_STATE_OFF = 0
    uint8 LEVER_STATE_LEFT = 1
    uint8 LEVER_STATE_RIGHT = 2
    uint8 LEVER_STATE_LEFT_INVALID = 3
    uint8 LEVER_STATE_RIGHT_INVALID = 4
    uint8 LEVER_STATE_LEFT_LIGHT = 5
    uint8 LEVER_STATE_RIGHT_LIGHT = 6
    uint8 LEVER_STATE_RESERVED1 = 7
    uint8 LEVER_STATE_RESERVED3 = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeLightStatus
    uint8 BRAKE_LIGHT_NONE = 0
    uint8 BRAKE_LIGHT_OFF = 1
    uint8 BRAKE_LIGHT_ON = 2
    uint8 BRAKE_LIGHT_INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LeverType
    uint8 LEVER_TYPE_MECHANICAL = 0
    uint8 LEVER_TYPE_ELECTRONIC = 1
    uint8 LEVER_STATE_RESERVED1 = 2
    uint8 LEVER_STATE_RESERVED2 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LightModeState
    uint8 LIGHT_OFF = 0
    uint8 LIGHT_AUTO = 1
    uint8 LIGHT_LOW_BEAM = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FrontLightSwitchState
    uint8 FRONT_LIGHT_OFF = 0
    uint8 FRONT_LIGHT_LOW = 1
    uint8 FRONT_LIGHT_HIGH = 2
    uint8 FRONT_LIGHT_FLASH = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLightReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.vehicle_light_report_data !== undefined) {
      resolved.vehicle_light_report_data = VehicleLightReportData.Resolve(msg.vehicle_light_report_data)
    }
    else {
      resolved.vehicle_light_report_data = new VehicleLightReportData()
    }

    return resolved;
    }
};

// Constants for message
VehicleLightReport.Constants = {
  VEHICLE_LIGHT_REPORT_DATA: 1,
}

module.exports = VehicleLightReport;
